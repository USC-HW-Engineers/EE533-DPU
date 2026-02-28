import sys
import os

# Opcode Mapping
OPCODES = {
    0x00: "ALU",
    0x01: "TENSOR",
    0x02: "LD",
    0x03: "ST",
    0x04: "BEQ",
    0x05: "BNE",
    0x06: "BLT",
    0x07: "BGE",
    0x08: "LUI",
    0x09: "ADDI",
    0x0A: "HALT",
    0x0B: "NOP",
    0x0C: "MOVI",
    0x0D: "RELU_INT",
    0x0E: "VBCAST"
}

# ALU Function Mapping
ALU_FUNCS = {
    0: "VADD",
    1: "VSUB",
    2: "VAND",
    3: "VOR",
    4: "VXOR",
    5: "VSLT"
}

# Tensor Mode Mapping
TENSOR_MODES = {
    0: "ADD",
    1: "MUL",
    2: "FMA"
}

def sign_extend_17(val):
    if val & 0x10000:
        return val - 0x20000
    return val

def disassemble_instruction(instr_hex):
    instr = int(instr_hex, 16)
    
    # Common fields
    opcode_val = (instr >> 27) & 0x1F
    rd = (instr >> 22) & 0x1F
    ra = (instr >> 17) & 0x1F
    
    opcode_name = OPCODES.get(opcode_val, f"UNK({opcode_val:02x})")
    
    # R-TYPE fields
    rb = (instr >> 12) & 0x1F
    rc = (instr >> 7) & 0x1F
    func = (instr >> 3) & 0x0F
    mode = instr & 0x07
    
    # I-TYPE fields
    imm17 = instr & 0x1FFFF
    imm17_se = sign_extend_17(imm17)

    if opcode_val == 0x00: # ALU
        mnemonic = ALU_FUNCS.get(func, f"ALU_UNK({func})")
        return f"{mnemonic:12} R{rd}, R{ra}, R{rb}"
    
    elif opcode_val == 0x01: # TENSOR
        mode_name = TENSOR_MODES.get(mode, f"MODE_UNK({mode})")
        relu_en = (func & 0x1)
        suffix = "_RELU" if relu_en else ""
        if mode == 2: # FMA
            return f"TENSOR_{mode_name}{suffix:5} R{rd}, R{ra}, R{rb}, R{rc}"
        else:
            return f"TENSOR_{mode_name}{suffix:5} R{rd}, R{ra}, R{rb}"
            
    elif opcode_val in [0x02, 0x03]: # LD, ST
        if opcode_val == 0x02:
            return f"{opcode_name:12} R{rd}, [R{ra} + {imm17_se}]"
        else:
            return f"{opcode_name:12} [R{ra} + {imm17_se}], R{rd}" # Rd is source
            
    elif opcode_val in [0x08, 0x09, 0x0C]: # LUI, ADDI, MOVI
        if opcode_val == 0x0C: # MOVI uses ra=0 usually
            return f"{opcode_name:12} R{rd}, {imm17_se}"
        elif opcode_val == 0x08:
            return f"{opcode_name:12} R{rd}, {imm17_se} (Upper)"
        else:
            return f"{opcode_name:12} R{rd}, R{ra}, {imm17_se}"
            
    elif opcode_val in [0x04, 0x05, 0x06, 0x07]: # Branches
        return f"{opcode_name:12} R{rd}, R{ra}, PC + {imm17_se}"
        
    elif opcode_val == 0x0D: # RELU_INT
        return f"RELU_INT     R{rd}, R{ra}"
        
    elif opcode_val == 0x0E: # VBCAST
        return f"VBCAST       R{rd}, R{ra}, Lane {mode}"
        
    elif opcode_val == 0x0A:
        return "HALT"
    
    elif opcode_val == 0x0B:
        return "NOP"
        
    else:
        # Fallback for generic I-TYPE/R-TYPE if not specifically handled
        if imm17 != 0:
            return f"{opcode_name:12} R{rd}, R{ra}, {imm17_se}"
        else:
            return f"{opcode_name:12} R{rd}, R{ra}, R{rb}, R{rc}, f:{func}, m:{mode}"

def disassemble_file(file_path):
    if not os.path.exists(file_path):
        print(f"Error: File {file_path} not found.")
        return

    print(f"\n--- Disassembly of {file_path} ---")
    with open(file_path, 'r') as f:
        pc = 0
        for line in f:
            line = line.strip()
            if not line or line.startswith("//"):
                if line.startswith("//"): print(line)
                continue
            try:
                asm = disassemble_instruction(line)
                print(f"0x{pc:03x}: {line}  |  {asm}")
                pc += 1
            except ValueError:
                print(f"Skip: {line}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 disassembler.py <file1.hex> <file2.hex> ...")
        sys.exit(1)
    
    for f in sys.argv[1:]:
        disassemble_file(f)
