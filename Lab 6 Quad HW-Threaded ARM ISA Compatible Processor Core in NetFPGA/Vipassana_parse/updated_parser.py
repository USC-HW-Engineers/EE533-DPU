import sys
import re

# =====================================================
# ALU CONTROL TABLE
# =====================================================

ALU_CTRL = {
    "add":  0b0000,
    "sub":  0b0001,
    "and":  0b0010,
    "or":   0b0011,
    "xor":  0b0100,
    "xnor": 0b0101,
    "lsl":  0b0110,
    "lsr":  0b0111,
    "asr":  0b1000,
    "cmpeq":0b1001,
    "cmplt":0b1010,
    "cmpgt":0b1011
}

# =====================================================
# YOUR MAIN OPCODES
# =====================================================

OPCODE = {
    "NOP": 0b0000,
    "R":   0b0001,
    "LW":  0b0010,
    "SW":  0b0011,
    "B":   0b0100,
    "R_I": 0b1001
}
BRANCH_TYPE = {
    "b":   0b0001,
    "bge": 0b0010,
    "ble": 0b0011
}
# =====================================================
# Utility Functions
# =====================================================

def parse_register(reg):
    reg = reg.replace(",", "").strip()

    if reg == "fp":
        return 11
    elif reg == "ip":
        return 12
    elif reg == "sp":
        return 13
    
    elif reg == "lr":
        return 14
    elif reg == "pc":
        return 15
    elif reg.startswith("r"):
        return int(reg[1:])
    else:
        raise ValueError(f"Unknown register {reg}")


def sign_extend_12bit(value):
    return value & 0xFFF


# =====================================================
# New Pack Functions (Correct Hardware Format)
# =====================================================

def pack_r_type(opcode, alu, r1, r2, rd):
    return (
        (opcode << 28) |
        (alu << 24) |
        (r1 << 20) |
        (r2 << 16) |
        (rd << 12)
    )


def pack_r_type_imm(opcode, alu, r1, rd, imm):
    return (
        (opcode << 28) |
        (alu << 24) |
        (r1 << 20) |
        (rd << 12) |
        (imm & 0xFFF)
    )


def pack_sw(opcode, alu, r1, r2, imm):
    return (
        (opcode << 28) |
        (alu << 24) |
        (r1 << 20) |
        (r2 << 16) |
        (imm & 0xFFF)
    )


def pack_branch(opcode, btype, address):
    return (
        (opcode << 28) |
        (btype << 20) |
        (address & 0x7F)
    )

# =====================================================
# Encoding Functions
# =====================================================

def encode_r_type(tokens):

    instr = tokens[0]
    rd  = parse_register(tokens[1])
    rs1 = parse_register(tokens[2])
    rs2 = parse_register(tokens[3])

    return pack_r_type(OPCODE["R"], ALU_CTRL[instr], rs1, rs2, rd)


def encode_r_type_i(tokens):

    instr = tokens[0]
    rd  = parse_register(tokens[1])
    rs1 = parse_register(tokens[2])
    imm = int(tokens[3].replace("#", ""))

    imm = sign_extend_12bit(imm)

    return pack_r_type_imm(OPCODE["R_I"], ALU_CTRL[instr], rs1, rd, imm)


def encode_lw(tokens):

    # ldr r3, [fp, #-12]
    rd = parse_register(tokens[1])

    line = " ".join(tokens)
    match = re.search(r'\[(.*?),\s*#?(-?\d+)\]', line)

    base_reg = match.group(1).strip()
    byte_offset = int(match.group(2))

    if byte_offset % 4 != 0:
        raise ValueError("Memory offset must be multiple of 4")

    word_offset = byte_offset // 4
    imm = sign_extend_12bit(word_offset)

    base = parse_register(base_reg)

    return pack_r_type_imm(OPCODE["LW"], 0, base, rd, imm)


def encode_sw(tokens):

    r2 = parse_register(tokens[1])

    line = " ".join(tokens)
    match = re.search(r'\[(.*?),\s*#?(-?\d+)\]', line)

    base_reg = match.group(1).strip()
    byte_offset = int(match.group(2))

    if byte_offset % 4 != 0:
        raise ValueError("Memory offset must be multiple of 4")

    word_offset = byte_offset // 4
    imm = sign_extend_12bit(word_offset)

    base = parse_register(base_reg)

    return pack_sw(OPCODE["SW"], 0, base, r2, imm)

def encode_branch(tokens, labels, current_pc):

    instr = tokens[0]
    label = tokens[1]

    if label not in labels:
        raise ValueError(f"Undefined label {label}")

    target_pc = labels[label]

    offset = target_pc - (current_pc + 1)

    return pack_branch(OPCODE["B"], BRANCH_TYPE[instr], offset)


# =====================================================
# Parser
# =====================================================

def clean_line(line):
    line = line.split("@")[0]  # remove comments
    return line.strip()


def parse_file(filename):

    with open(filename) as f:
        lines = f.readlines()

    labels = {}
    instructions = []
    pc = 0

    # PASS 1 — Collect labels
    for line in lines:

        line = clean_line(line)

        if not line or line.startswith("."):
            continue

        if line.endswith(":"):
            labels[line[:-1].lower()] = pc
        else:
            pc += 1

    # PASS 2 — Encode instructions
    pc = 0

    for line in lines:

        line = clean_line(line)

        if not line or line.startswith("."):
            continue

        if line.endswith(":"):
            continue

        tokens = re.split(r'[,\s]+', line)
        instr = tokens[0].lower()

        try:

            if instr in ALU_CTRL:

                if "#" in line:
                    code = encode_r_type_i(tokens)
                else:
                    code = encode_r_type(tokens)

            elif instr in ["ldr", "lw"]:
                code = encode_lw(tokens)

            elif instr in ["str", "sw"]:
                code = encode_sw(tokens)

            elif instr == "b":
                code = encode_branch(tokens, labels, pc)

            elif instr == "nop":
                code = pack(OPCODE["NOP"], 0, 0, 0, 0, 0)

            else:
                print("Unsupported instruction:", line)
                continue

            instructions.append(code)
            pc += 1

        except Exception as e:
            print("Error parsing line:", line)
            print(e)

    return instructions

# =====================================================
# Output
# =====================================================

def write_hex(instructions, outfile):

    with open(outfile, "w") as f:
        for inst in instructions:
            f.write("{:08X}\n".format(inst))


def write_readable(instructions):

    print("\nGenerated Machine Code:\n")

    for i, inst in enumerate(instructions):

        opcode = (inst >> 28) & 0xF
        alu    = (inst >> 24) & 0xF
        r1     = (inst >> 20) & 0xF
        r2     = (inst >> 16) & 0xF
        rd     = (inst >> 12) & 0xF
        imm12  = inst & 0xFFF
        addr7  = inst & 0x7F

        if imm12 & 0x800:
            imm12 -= 0x1000

        print(f"PC {i:03} | HEX={inst:08X} | OP={opcode:04b} ALU={alu:04b} RD={rd} RS1={r1} RS2={r2} IMM={imm12}")

# =====================================================
# Main
# =====================================================

if __name__ == "__main__":

    if len(sys.argv) != 3:
        print("Usage: python parser.py input.s output.hex")
        sys.exit(1)

    input_file = sys.argv[1]
    output_file = sys.argv[2]

    machine_code = parse_file(input_file)

    write_readable(machine_code)
    write_hex(machine_code, output_file)

    print("\nAssembly complete.")
    print("Hex written to:", output_file)