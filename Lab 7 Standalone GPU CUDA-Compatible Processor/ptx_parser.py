import re
import sys

# Define our Custom ISA Opcodes (from instructions.txt)
OPCODES = {
    'ALU': 0x00,
    'TENSOR': 0x01,
    'LD': 0x02,
    'ST': 0x03,
    'LUI': 0x08,
    'ADDI': 0x09,
    'HALT': 0x0A,
    'NOP': 0x0B,
    'MOVI': 0x0C,
    'RELU_INT': 0x0D
}

# ALU Func Codes
ALU_FUNC = {
    'VADD': 0,
    'VSUB': 1,
    'VAND': 2,
    'VOR': 3,
    'VXOR': 4,
    'VSLT': 5
}

# Tensor Modes
TENSOR_MODE = {
    'ADD': 0,
    'MUL': 1,
    'FMA': 2
}

class PTXParser:
    def __init__(self, ptx_file):
        self.ptx_file = ptx_file
        self.kernels = {}
        self.reg_map = {}
        self.next_reg = 1 # Reserve R0 for zero if needed by hardware

    def get_reg(self, ptx_reg):
        # Handle constants and strip potential syntax from inline asm
        if ptx_reg in ['0', '0x0', '0f00000000']:
            return 0
        
        ptx_reg = ptx_reg.rstrip('}').rstrip(';')
        
        if ptx_reg not in self.reg_map:
            self.reg_map[ptx_reg] = self.next_reg
            self.next_reg = (self.next_reg + 1) % 32
            if self.next_reg == 0: self.next_reg = 1
        return self.reg_map[ptx_reg]

    def parse(self):
        with open(self.ptx_file, 'r') as f:
            content = f.read()

        # Find kernels
        kernel_blocks = re.findall(r'\.visible \.entry (\w+)\((.*?)\)\s*{(.*?)}', content, re.DOTALL)
        
        for name, params, body in kernel_blocks:
            print(f"Parsing kernel: {name}")
            self.reg_map = {}
            self.next_reg = 1
            instructions = []
            
            lines = body.split('\n')
            for line in lines:
                line = line.strip().strip(';').replace('{', '').replace('}', '')
                if not line or line.startswith('//') or line.startswith('.'):
                    continue
                
                parts = re.split(r'[ ,\[\]]+', line)
                parts = [p for p in parts if p]
                if not parts: continue
                
                instr = parts[0]
                
                # Mapping logic based on instructions.txt
                if instr == 'add.s16':
                    rd = self.get_reg(parts[1])
                    ra = self.get_reg(parts[2])
                    rb = self.get_reg(parts[3])
                    instructions.append(self.encode_r(OPCODES['ALU'], rd, ra, rb, 0, ALU_FUNC['VADD'], 0))
                
                elif instr == 'sub.s16':
                    rd = self.get_reg(parts[1])
                    ra = self.get_reg(parts[2])
                    rb = self.get_reg(parts[3])
                    instructions.append(self.encode_r(OPCODES['ALU'], rd, ra, rb, 0, ALU_FUNC['VSUB'], 0))
                
                elif instr == 'max.s16':
                    rd = self.get_reg(parts[1])
                    ra = self.get_reg(parts[2])
                    # RELU_INT Rd, Ra
                    instructions.append(self.encode_r(OPCODES['RELU_INT'], rd, ra, 0, 0, 0, 0))
                
                elif 'fma.rn.bf16' in instr:
                    rd = self.get_reg(parts[1])
                    ra = self.get_reg(parts[2])
                    rb = self.get_reg(parts[3])
                    if len(parts) > 4:
                        rc = self.get_reg(parts[4])
                        instructions.append(self.encode_r(OPCODES['TENSOR'], rd, ra, rb, rc, 0, TENSOR_MODE['FMA']))
                    else:
                        # Map to TENSOR_MUL if 3 operands (often generated for __hmul)
                        instructions.append(self.encode_r(OPCODES['TENSOR'], rd, ra, rb, 0, 0, TENSOR_MODE['MUL']))
                
                elif instr == 'ld.global.u16':
                    rd = self.get_reg(parts[1])
                    ra = self.get_reg(parts[2])
                    instructions.append(self.encode_i(OPCODES['LD'], rd, ra, 0))
                
                elif instr == 'st.global.u16':
                    # st.global.u16 [%ra], %rd -> ST Rd, Ra, imm
                    ra = self.get_reg(parts[1])
                    rd = self.get_reg(parts[2])
                    instructions.append(self.encode_i(OPCODES['ST'], rd, ra, 0))
                
                elif instr.startswith('mov.'):
                    rd = self.get_reg(parts[1])
                    try:
                        # Attempt to parse immediate for MOVI
                        imm_str = parts[2].lower().rstrip('u').rstrip('f')
                        imm = int(imm_str, 16) if imm_str.startswith('0x') else int(imm_str)
                        instructions.append(self.encode_i(OPCODES['MOVI'], rd, 0, imm))
                    except ValueError:
                        pass # Skip non-immediate moves or register-to-register moves
                
                elif instr == 'ret':
                    instructions.append(self.encode_i(OPCODES['HALT'], 0, 0, 0))
                
            self.kernels[name] = instructions

    def encode_r(self, opcode, rd, ra, rb, rc, func, mode):
        # R-TYPE: [opcode(5)][rd(5)][ra(5)][rb(5)][rc(5)][func(4)][mode(3)]
        val = (opcode & 0x1F) << 27
        val |= (rd & 0x1F) << 22
        val |= (ra & 0x1F) << 17
        val |= (rb & 0x1F) << 12
        val |= (rc & 0x1F) << 7
        val |= (func & 0x0F) << 3
        val |= (mode & 0x07)
        return val

    def encode_i(self, opcode, rd, ra, imm17):
        # I-TYPE: [opcode(5)][rd(5)][ra(5)][imm17(17)]
        val = (opcode & 0x1F) << 27
        val |= (rd & 0x1F) << 22
        val |= (ra & 0x1F) << 17
        val |= (imm17 & 0x1FFFF)
        return val

    def write_hex(self, output_file):
        with open(output_file, 'w') as f:
            for name, instrs in self.kernels.items():
                f.write(f"// Kernel: {name}\n")
                for inst in instrs:
                    f.write(f"{inst:08x}\n")

if __name__ == "__main__":
    parser = PTXParser('kernel.ptx')
    parser.parse()
    parser.write_hex('gpu_program.hex')
    print("Done! Updated gpu_program.hex with new ISA formats.")
