import re
import sys
import os

# Define our Custom ISA Opcodes
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
        self.next_reg = 1

    def get_reg(self, ptx_reg):
        if ptx_reg in ['0', '0x0', '0f00000000']:
            return 0
        ptx_reg = ptx_reg.rstrip('}').rstrip(';')
        if ptx_reg not in self.reg_map:
            self.reg_map[ptx_reg] = self.next_reg
            self.next_reg = (self.next_reg + 1) % 32
            if self.next_reg == 0: self.next_reg = 1
        return self.reg_map[ptx_reg]

    def extract_kernel_body(self, content, start_pos):
        # Find the first '{' after start_pos
        open_brace = content.find('{', start_pos)
        if open_brace == -1: return None, start_pos
        
        # Track nested braces to find the REAL end of the kernel
        stack = 1
        i = open_brace + 1
        while stack > 0 and i < len(content):
            if content[i] == '{': stack += 1
            elif content[i] == '}': stack -= 1
            i += 1
        
        return content[open_brace+1 : i-1], i

    def parse(self):
        if not os.path.exists(self.ptx_file):
            print(f"Error: PTX file '{self.ptx_file}' not found.")
            sys.exit(1)
            
        with open(self.ptx_file, 'r') as f:
            content = f.read()

        # Find kernel starts manually to avoid regex brace issues
        pos = 0
        while True:
            match = re.search(r'\.visible \.entry (\w+)', content[pos:])
            if not match: break
            
            name = match.group(1)
            entry_pos = pos + match.start()
            body, next_pos = self.extract_kernel_body(content, entry_pos)
            
            print(f"Parsing kernel: {name}")
            self.reg_map = {}
            self.next_reg = 1
            instructions = []
            
            lines = body.split('\n')
            for line in lines:
                line = line.strip().strip(';').replace('{', '').replace('}', '')
                if not line or line.startswith('//') or line.startswith('.'):
                    continue
                
                parts = re.split(r'[ ,\[\]\t]+', line)
                parts = [p for p in parts if p]
                if not parts: continue
                
                instr = parts[0]
                
                if instr == 'add.s16':
                    instructions.append(self.encode_r(OPCODES['ALU'], self.get_reg(parts[1]), self.get_reg(parts[2]), self.get_reg(parts[3]), 0, ALU_FUNC['VADD'], 0))
                elif instr == 'sub.s16':
                    instructions.append(self.encode_r(OPCODES['ALU'], self.get_reg(parts[1]), self.get_reg(parts[2]), self.get_reg(parts[3]), 0, ALU_FUNC['VSUB'], 0))
                elif instr == 'max.s16':
                    instructions.append(self.encode_r(OPCODES['RELU_INT'], self.get_reg(parts[1]), self.get_reg(parts[2]), 0, 0, 0, 0))
                elif 'fma.rn.bf16' in instr:
                    rd = self.get_reg(parts[1])
                    ra = self.get_reg(parts[2])
                    rb = self.get_reg(parts[3])
                    if len(parts) > 4:
                        instructions.append(self.encode_r(OPCODES['TENSOR'], rd, ra, rb, self.get_reg(parts[4]), 0, TENSOR_MODE['FMA']))
                    else:
                        instructions.append(self.encode_r(OPCODES['TENSOR'], rd, ra, rb, 0, 0, TENSOR_MODE['MUL']))
                elif instr == 'ld.global.u16':
                    instructions.append(self.encode_i(OPCODES['LD'], self.get_reg(parts[1]), self.get_reg(parts[2]), 0))
                elif instr == 'st.global.u16':
                    instructions.append(self.encode_i(OPCODES['ST'], self.get_reg(parts[2]), self.get_reg(parts[1]), 0))
                elif instr.startswith('mov.'):
                    rd = self.get_reg(parts[1])
                    try:
                        imm = int(parts[2].lower().rstrip('u').rstrip('f'), 16) if '0x' in parts[2] else int(parts[2].rstrip('u').rstrip('f'))
                        instructions.append(self.encode_i(OPCODES['MOVI'], rd, 0, imm))
                    except: pass
                elif instr == 'ret':
                    instructions.append(self.encode_i(OPCODES['HALT'], 0, 0, 0))
            
            self.kernels[name] = instructions
            pos = next_pos

    def encode_r(self, opcode, rd, ra, rb, rc, func, mode):
        val = (opcode & 0x1F) << 27 | (rd & 0x1F) << 22 | (ra & 0x1F) << 17 | (rb & 0x1F) << 12 | (rc & 0x1F) << 7 | (func & 0x0F) << 3 | (mode & 0x07)
        return val

    def encode_i(self, opcode, rd, ra, imm17):
        val = (opcode & 0x1F) << 27 | (rd & 0x1F) << 22 | (ra & 0x1F) << 17 | (imm17 & 0x1FFFF)
        return val

    def write_hex(self, output_file):
        with open(output_file, 'w') as f:
            for name, instrs in self.kernels.items():
                f.write(f"// Kernel: {name}\n")
                for inst in instrs: f.write(f"{inst:08x}\n")

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python3 ptx_parser.py <input.ptx> <output.hex>")
        sys.exit(1)
        
    input_ptx = sys.argv[1]
    output_hex = sys.argv[2]
    
    parser = PTXParser(input_ptx)
    parser.parse()
    parser.write_hex(output_hex)
    print(f"Success! Translated '{input_ptx}' to '{output_hex}'.")
