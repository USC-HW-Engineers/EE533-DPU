import os

# Placeholder mapping for the first hex digit (Instruction)
# You can update these words as needed.
OP1_MAP = {
    '0': 'nop', '1': 'rty', '2': 'ldr', '3': 'str',
    '4': 'b  ', '5': 'na ', '6': 'na ', '7': 'na ',
    '8': 'cpi', '9': 'rti', 'A': 'na ', 'B': 'na ',
    'C': 'na ', 'D': 'na ', 'E': 'na ', 'F': 'na '
}

# Placeholder mapping for the second hex digit (ALU Operation)
# You can update these words as needed.
OP2_MAP = {
    '0': 'add', '1': 'sub', '2': 'and', '3': 'or ',
    '4': 'xor', '5': 'xnor', '6': 'lsl', '7': 'lsr',
    '8': 'asr', '9': 'cpe', 'A': 'cpl', 'B': 'cgt',
    'C': 'na ', 'D': 'na ', 'E': 'na ', 'F': 'na '
}

def translate_hex(hex_val):
    """Translates a single 8-digit hex string into its instruction components."""
    if len(hex_val) != 8:
        return f"Invalid length: {hex_val}"

    # 1. First left number (index 0) -> Word
    instr = OP1_MAP.get(hex_val[0].upper(), f"INST_{hex_val[0]}")
    
    # 2. Second number (index 1) -> ALU Word
    alu_op = OP2_MAP.get(hex_val[1].upper(), f"ALU_{hex_val[1]}")
    
    # 3-5. Third, Fourth, and Fifth numbers -> Registers (R + unsigned decimal)
    r1 = f"R{int(hex_val[2], 16)}"
    r2 = f"R{int(hex_val[3], 16)}"
    r3 = f"R{int(hex_val[4], 16)}"
    
    # 6. Last 3 numbers (indices 5-7) -> Constant (signed decimal)
    const_hex = hex_val[5:8]
    const_val = int(const_hex, 16)
    # Handle 12-bit signed (2's complement)
    if const_val >= 0x800:
        const_val -= 0x1000
        
    return f"{instr} {alu_op} {r1} {r2} {r3} {const_val}"

def main():
    filename = 'newSort_output.hex'
    
    if not os.path.exists(filename):
        print(f"Error: {filename} not found.")
        return

    with open(filename, 'r') as f:
        for line in f:
            hex_instruction = line.strip()
            if hex_instruction:
                print(translate_hex(hex_instruction))

if __name__ == "__main__":
    main()
