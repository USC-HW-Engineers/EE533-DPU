# combine_hex_files.py
import sys
from pathlib import Path

INPUT_FILES = ["output1.hex", "output2.hex", "output3.hex", "output4.hex"]
TARGET_LINES = 128
PAD_LINE = "00000000"

def read_and_normalize(path: Path):
    if not path.exists():
        print(f"Warning: {path} not found. Padding with zeros.")
        return []
    with path.open("r", encoding="utf-8") as f:
        lines = [ln.strip() for ln in f.readlines()]
    lines = [ln for ln in lines if ln != ""]
    return lines

def pad_to_target(lines):
    if len(lines) >= TARGET_LINES:
        return lines[:TARGET_LINES]
    return lines + [PAD_LINE] * (TARGET_LINES - len(lines))

def main():
    if len(sys.argv) != 2:
        print("Usage: python combine_hex_files.py <output_file.hex>")
        sys.exit(1)

    output_file = Path(sys.argv[1])
    combined = []

    for fname in INPUT_FILES:
        path = Path(fname)
        lines = read_and_normalize(path)
        padded = pad_to_target(lines)
        combined.extend(padded)

    with output_file.open("w", encoding="utf-8", newline="\n") as f:
        for line in combined:
            f.write(line + "\n")

    print(f"Created {output_file} with {len(combined)} lines.")

if __name__ == "__main__":
    main()