import sys
import os

REMOVE_PREFIXES = (
    ".cpu",
    ".arch",
    ".fpu",
    ".eabi_attribute",
    ".file", ".text", ".word", ".align", ".global", ".type",
    ".ident",
    ".section",
    ".syntax",
    ".arm",
    ".thumb",
    ".size"
)

def should_remove(line):
    stripped = line.strip()
    return stripped.startswith(REMOVE_PREFIXES)

def clean_file(input_file):
    # Create output filename automatically
    base, ext = os.path.splitext(input_file)
    output_file = base + "_cleaned" + ext

    with open(input_file, "r") as infile, open(output_file, "w") as outfile:
        for line in infile:
            if not should_remove(line):
                outfile.write(line)

    print(f"Cleaned assembly written to {output_file}")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python clean_asm.py <input_file.s>")
        sys.exit(1)

    input_filename = sys.argv[1]

    if not os.path.isfile(input_filename):
        print("Error: File not found.")
        sys.exit(1)

    clean_file(input_filename)