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
    "CMP": 0b0000,   # R-type cmp
    "R":   0b0001,
    "LW":  0b0010,
    "SW":  0b0011,
    "B":   0b0100,
    "CMPI":0b1000,
    "R_I": 0b1001
}
BRANCH_TYPE = {
    "b":   0b01,
    "bge": 0b10,
    "ble": 0b11
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


def pack_branch(opcode, alu, r1, btype, imm):
    return (
        (opcode << 28) |
        (alu << 24) |
        (r1 << 20) |
        (btype << 18) |
        (imm & 0xFFF)
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


def encode_lw(tokens, raw_line, labels, current_pc):
    rd = parse_register(tokens[1])
    line = raw_line.strip()

    # CASE 1: literal load (no '['). Example: "ldr r3, .L8"
    if "[" not in line:
        # tokens[2] should be the label (e.g. ".L8")
        label = tokens[2].lower()
        if label not in labels:
            raise ValueError(f"Undefined label {label}")
        target_pc = labels[label]
        # your assembler uses PC-relative offset as (target_pc - (current_pc + 1))
        offset = target_pc - (current_pc + 1)
        imm = sign_extend_12bit(offset)
        # use PC (r15) as base register for literal loads
        return pack_r_type_imm(OPCODE["LW"], 0, 15, rd, imm)

    # CASE 2: memory form: ldr rX, [base, #offset]  (allow space or comma)
    match = re.search(r'\[\s*([^,\s\]]+)[,\s]+#?(-?\d+)\s*\]', line)
    if not match:
        raise ValueError("Invalid ldr syntax.")

    base_reg = match.group(1).strip()
    byte_offset = int(match.group(2))

    # If you want byte offsets -> keep as is. If you want word offsets, divide by 4 here.
    imm = sign_extend_12bit(byte_offset)
    r1 = parse_register(base_reg)
    return pack_r_type_imm(OPCODE["LW"], 0, r1, rd, imm)
    
    
'''
def encode_lw(tokens, raw_line):
    # supports forms like:
    #   ldr r3, [fp, #-12]   or  ldr r3, [fp #-12]  (space or comma)
    rd = parse_register(tokens[1])

    # Use the original raw_line (cleaned) for regex so we preserve punctuation/brackets
    line = raw_line

    # match base and byte offset (allow comma or whitespace between base and offset)
    match = re.search(r'\[\s*([^,\s\]]+)[,\s]+#?(-?\d+)\s*\]', line)
    if not match:
        raise ValueError("Unsupported or invalid ldr syntax (literal loads like 'ldr r3, .L8' are not supported).")

    base_reg = match.group(1).strip()
    byte_offset = int(match.group(2))
    imm = sign_extend_12bit(byte_offset)
    

    if byte_offset % 4 != 0:
        raise ValueError("Memory offset must be multiple of 4 (byte offset)")

    # convert byte offset to word offset (divide by 4)
    word_offset = byte_offset // 4
    imm = sign_extend_12bit(word_offset)
    

    r1 = parse_register(base_reg)

    return pack_r_type_imm(OPCODE["LW"], 0, r1, rd, imm)
    
''' 
def encode_sw(tokens, raw_line):
    # supports forms like:
    #   str r2, [r3, #-52]  or str r2, [r3 #-52]
    r2 = parse_register(tokens[1])
    line = raw_line

    match = re.search(r'\[\s*([^,\s\]]+)[,\s]+#?(-?\d+)\s*\]', line)
    if not match:
        raise ValueError("Unsupported or invalid str syntax.")

    base_reg = match.group(1).strip()
    byte_offset = int(match.group(2))
    imm = sign_extend_12bit(byte_offset)
    '''

    if byte_offset % 4 != 0:
        raise ValueError("Memory offset must be multiple of 4 (byte offset)")

    word_offset = byte_offset // 4
    imm = sign_extend_12bit(word_offset)
    '''

    r1 = parse_register(base_reg)

    return pack_sw(OPCODE["SW"], 0, r1, r2, imm)
"""
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
"""
def encode_branch(tokens, labels, current_pc):

    instr = tokens[0]
    target = tokens[1]

    # Immediate form: (0x01)
    if target.startswith("(") and target.endswith(")"):
        value = target[1:-1]

        if value.startswith("0x"):
            offset = int(value, 16)
        else:
            offset = int(value)

    else:
        label = target.lower()
        if label not in labels:
            raise ValueError(f"Undefined label {target}")
        target_pc = labels[label]
        offset = target_pc - (current_pc + 1)

    imm = sign_extend_12bit(offset)

    return pack_branch(
        OPCODE["B"],
        0,
        15,   # R1 unused — use zero register
        BRANCH_TYPE[instr],
        imm
    )

def expand_ldm_stm(line):

    # match: ldmia lr!, {r0, r1, r2}
    match = re.match(r'(ldmia|stmia|ldm|stm)\s+([a-z0-9]+)(!?),\s*\{([^\}]+)\}', line, re.I)

    if not match:
        return [line]

    instr = match.group(1).lower()
    base_reg = match.group(2)
    writeback = match.group(3) == "!"
    reg_list = match.group(4)

    regs = [r.strip() for r in reg_list.split(",")]

    expanded = []

    for i, r in enumerate(regs):
        offset = i * 4

        if "ldm" in instr:
            expanded.append(f"ldr {r}, [{base_reg}, #{offset}]")
        else:
            expanded.append(f"str {r}, [{base_reg}, #{offset}]")

    # writeback (add base register)
    if writeback:
        total = len(regs) * 4
        expanded.append(f"add {base_reg}, {base_reg}, #{total}")

    return expanded
    
def expand_push_pop(line):

    match_push = re.match(r'push\s*\{([^\}]+)\}', line, re.I)
    match_pop  = re.match(r'pop\s*\{([^\}]+)\}', line, re.I)

    if match_push:
        regs = [r.strip() for r in match_push.group(1).split(",")]
        total = 4 * len(regs)

        expanded = []
        expanded.append(f"sub sp, sp, #{total}")

        for i, r in enumerate(regs):
            expanded.append(f"str {r}, [sp, #{4*i}]")

        return expanded

    if match_pop:
        regs = [r.strip() for r in match_pop.group(1).split(",")]
        expanded = []

        for i, r in enumerate(regs):
            expanded.append(f"ldr {r}, [sp, #{4*i}]")

        total = 4 * len(regs)
        expanded.append(f"add sp, sp, #{total}")

        return expanded

    return [line]
# =====================================================
# Parser
# =====================================================

def clean_line(line):
    line = re.split(r'[@;]', line)[0]  # remove comments
    return line.strip()


def parse_file(filename):

    with open(filename) as f:
        raw_lines = f.readlines()

    lines = []
    for raw in raw_lines:
        cleaned = clean_line(raw)

        # Expand push/pop
        expanded1 = expand_push_pop(cleaned)

        # Expand ldm/stm
        final = []
        for e in expanded1:
            final.extend(expand_ldm_stm(e))

        for e in final:
            lines.append(e + "\n")

    labels = {}
    instructions = []
    pc = 0

    # PASS 1 — Collect labels
    for line in lines:
        line = clean_line(line)
        if not line:
            continue
        # skip assembler directives (like .text, .align) but not labels ending with ':'
        if line.startswith(".") and not line.endswith(":"):
            continue

        if line.endswith(":"):
            labels[line[:-1].lower()] = pc
        else:
            pc += 1

    # PASS 2 — Encode instructions
    pc = 0

    for line in lines:

        line = clean_line(line)

        if not line:
            continue

        # skip assembler directives but NOT labels
        if line.startswith(".") and not line.endswith(":"):
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
                    
            #is r0 always 0?
            elif instr == "mov":

                if tokens[2].startswith("#"):
                    pseudo = ["add", tokens[1], "r15", tokens[2]]
                    code = encode_r_type_i(pseudo)
                else:
                    pseudo = ["add", tokens[1], tokens[2], "r15"]
                    code = encode_r_type(pseudo)

            elif instr in ["ldr", "lw"]:
                code = encode_lw(tokens, line, labels, pc)
                
            elif instr == "cmp":

                # cmp rX, #imm
                if tokens[2].startswith("#"):
                    imm = int(tokens[2].replace("#", ""))
                    imm = sign_extend_12bit(imm)
                    pseudo = ["sub", tokens[1], tokens[1], tokens[2]]
                    code = pack_r_type_imm(
                        OPCODE["CMPI"],
                        ALU_CTRL["sub"],
                        parse_register(tokens[1]),
                        0,   # Rd unused
                        imm
                    )
                else:
                    code = pack_r_type(
                        OPCODE["CMP"],
                        ALU_CTRL["sub"],
                        parse_register(tokens[1]),
                        parse_register(tokens[2]),
                        0   # Rd unused
                    )

            elif instr in ["str", "sw"]:
                code = encode_sw(tokens, line)

            elif instr in ["b", "bge", "ble"]:
                code = encode_branch(tokens, labels, pc)

            elif instr == "nop":
                code = 0
                #code = pack_r_type(OPCODE["CMP"], 0, 15, 15, 0)

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

def write_readable_to_file(instructions, outfile):

    with open(outfile, "w") as f:
        for i, inst in enumerate(instructions):
            opcode = (inst >> 28) & 0xF
            alu    = (inst >> 24) & 0xF
            r1     = (inst >> 20) & 0xF
            r2     = (inst >> 16) & 0xF
            rd     = (inst >> 12) & 0xF
            imm12  = inst & 0xFFF

            if imm12 & 0x800:
                imm12 -= 0x1000

            f.write(f"PC {i:03} | HEX={inst:08X} | OP={opcode:04b} ALU={alu:04b} R1={r1} R2={r2} RD={rd} IMM={imm12}\n")
            
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
    write_readable_to_file(machine_code, "machine_code.txt")
    write_hex(machine_code, output_file)

    print("\nAssembly complete.")
    print("Hex written to:", output_file)