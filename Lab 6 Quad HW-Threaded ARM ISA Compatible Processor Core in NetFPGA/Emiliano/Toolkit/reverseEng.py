import sys

# ==========================================
# Reverse Tables
# ==========================================

ALU_CTRL_REV = {
    0b0000: "add",
    0b0001: "sub",
    0b0010: "and",
    0b0011: "or",
    0b0100: "xor",
    0b0101: "xnor",
    0b0110: "lsl",
    0b0111: "lsr",
    0b1000: "asr",
    0b1001: "cmpeq",
    0b1010: "cmplt",
    0b1011: "cmpgt"
}

BRANCH_TYPE_REV = {
    0b01: "b",
    0b10: "bge",
    0b11: "ble"
}

# ==========================================
# Register Naming
# ==========================================

def reg_name(num):
    if num == 11:
        return "fp"
    elif num == 12:
        return "ip"
    elif num == 13:
        return "sp"
    elif num == 14:
        return "lr"  
    else:
        return f"r{num}"

def sign_extend_12bit(value):
    if value & 0x800:
        return value - 0x1000
    return value

# ==========================================
# Decode Instruction
# ==========================================

def decode_instruction(inst, pc):

    opcode = (inst >> 28) & 0xF
    alu    = (inst >> 24) & 0xF
    r1     = (inst >> 20) & 0xF
    r2     = (inst >> 16) & 0xF
    rd     = (inst >> 12) & 0xF
    imm12  = sign_extend_12bit(inst & 0xFFF)

    if inst == 0:
        return "nop"

    # R-Type
    if opcode == 0b0001:
        instr = ALU_CTRL_REV.get(alu, "unknown")
        return f"{instr} {reg_name(rd)}, {reg_name(r1)}, {reg_name(r2)}"

    # R-Type Immediate
    elif opcode == 0b1001:
        instr = ALU_CTRL_REV.get(alu, "unknown")
        return f"{instr} {reg_name(rd)}, {reg_name(r1)}, #{imm12}"

    # LW
    elif opcode == 0b0010:
        return f"ldr {reg_name(rd)}, [{reg_name(r1)}, #{imm12}]"

    # SW
    elif opcode == 0b0011:
        return f"str {reg_name(r2)}, [{reg_name(r1)}, #{imm12}]"

    # CMP
    elif opcode == 0b0000:
        return f"cmp {reg_name(r1)}, {reg_name(r2)}"

    # CMPI
    elif opcode == 0b1000:
        return f"cmp {reg_name(r1)}, #{imm12}"

    # Branch
    elif opcode == 0b0100:
        btype = (inst >> 18) & 0x3
        branch_instr = BRANCH_TYPE_REV.get(btype, "b")
        target = pc + 1 + imm12
        return f"{branch_instr} {target}"

    return "unknown"

# ==========================================
# Disassemble File
# ==========================================

def disassemble_file(input_file, output_file):

    with open(input_file) as f:
        lines = f.readlines()

    instructions = []
    for line in lines:
        line = line.strip()
        if line:
            instructions.append(int(line, 16))

    with open(output_file, "w") as out:

        out.write("Disassembled Assembly:\n\n")

        for pc, inst in enumerate(instructions):
            asm = decode_instruction(inst, pc)

            formatted = f"{pc:03}: {asm}"
            print(formatted)
            out.write(formatted + "\n")

    print("\nDisassembly saved to:", output_file)

# ==========================================
# Main
# ==========================================

if __name__ == "__main__":

    if len(sys.argv) != 3:
        print("Usage: python disassembler.py input.hex output.txt")
        sys.exit(1)

    input_file = sys.argv[1]
    output_file = sys.argv[2]

    disassemble_file(input_file, output_file)