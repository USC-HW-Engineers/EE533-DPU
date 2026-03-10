#!/bin/bash

# Custom GPU Toolchain Script
# Automates: .cu -> nvcc -> .ptx -> ptx_parser.py -> .hex

# Default values
INPUT_FILE=""
OUTPUT_FILE="gpu_program.hex"
KEEP_PTX=false

# Help message
usage() {
    echo "Usage: $0 -i <input.cu> [-o <output.hex>] [-k]"
    echo "  -i    Input CUDA source file (.cu)"
    echo "  -o    Output machine code file (default: gpu_program.hex)"
    echo "  -k    Keep intermediate .ptx file"
    echo "  -h    Display this help message"
    exit 1
}

# Parse flags
while getopts "i:o:kh" opt; do
    case ${opt} in
        i ) INPUT_FILE=$OPTARG ;;
        o ) OUTPUT_FILE=$OPTARG ;;
        k ) KEEP_PTX=true ;;
        h ) usage ;;
        \? ) usage ;;
    esac
done

# Validate input
if [ -z "$INPUT_FILE" ]; then
    echo "Error: Missing input file."
    usage
fi

if [[ ! "$INPUT_FILE" == *.cu ]]; then
    echo "Error: Input file must be a .cu file."
    exit 1
fi

BASENAME=$(basename "$INPUT_FILE" .cu)
PTX_FILE="${BASENAME}.ptx"

echo "--- Starting Custom GPU Toolchain ---"

# Step 1: NVIDIA NVCC to PTX
echo "[1/2] Compiling $INPUT_FILE to $PTX_FILE..."
if ! nvcc -ptx -arch=sm_80 "$INPUT_FILE" -o "$PTX_FILE"; then
    echo "Error: nvcc compilation failed."
    exit 1
fi

# Step 2: Custom PTX Parser to HEX
echo "[2/2] Translating $PTX_FILE to $OUTPUT_FILE..."
if ! python3 ptx_parser.py "$PTX_FILE" "$OUTPUT_FILE"; then
    echo "Error: PTX parsing failed."
    exit 1
fi

# Cleanup
if [ "$KEEP_PTX" = false ]; then
    rm "$PTX_FILE"
    echo "Cleaned up intermediate file: $PTX_FILE"
fi

echo "--- Success! ---"
echo "Generated machine code: $OUTPUT_FILE"
