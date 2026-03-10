#!/bin/bash

# Custom ARM CPU FGMT Toolchain Script
# Designed for EE 533 Lab 8
# Automates: (.c -> gcc -> .s -> cleaner.py) or (.s) -> Latest_Parser.py -> .hex -> combine.py -> final.hex

# Default values
T0_FILE=""
T1_FILE=""
T2_FILE=""
T3_FILE=""
OUTPUT_FILE="final_machine_code.hex"
RUN_REVERSE=false

# Help message
usage() {
    echo "Usage: $0 [-0 <t0.c/s>] [-1 <t1.c/s>] [-2 <t2.c/s>] [-3 <t3.c/s>] [-o <output.hex>] [-r]"
    echo "  -0    Thread 0 source file (.c or .s)"
    echo "  -1    Thread 1 source file (.c or .s)"
    echo "  -2    Thread 2 source file (.c or .s)"
    echo "  -3    Thread 3 source file (.c or .s)"
    echo "  -o    Output combined machine code file (default: final_machine_code.hex)"
    echo "  -r    Run reverseEng.py to generate a .txt disassembly of the final output"
    echo "  -h    Display this help message"
    echo ""
    echo "Example: $0 -0 main.c -1 sensor.s -o net_processor.hex -r"
    exit 1
}

# Parse flags
while getopts "0:1:2:3:o:rh" opt; do
    case ${opt} in
        0 ) T0_FILE=$OPTARG ;;
        1 ) T1_FILE=$OPTARG ;;
        2 ) T2_FILE=$OPTARG ;;
        3 ) T3_FILE=$OPTARG ;;
        o ) OUTPUT_FILE=$OPTARG ;;
        r ) RUN_REVERSE=true ;;
        h ) usage ;;
        \? ) usage ;;
    esac
done

# Validate: at least one input file should be provided
if [ -z "$T0_FILE" ] && [ -z "$T1_FILE" ] && [ -z "$T2_FILE" ] && [ -z "$T3_FILE" ]; then
    echo "Error: At least one thread source file (-0, -1, -2, or -3) must be provided."
    usage
fi

echo "--- Starting Custom ARM CPU FGMT Toolchain ---"

# Function to process a single thread
process_thread() {
    local input=$1
    local output_hex=$2
    
    if [ -z "$input" ]; then
        # Ensure no stale hex file remains if thread is unused
        rm -f "$output_hex"
        return
    fi

    echo ">> Processing Thread for $output_hex: $input"

    if [[ "$input" == *.c ]]; then
        local base="${input%.c}"
        local asm_file="${base}.s"
        local cleaned_asm="${base}_cleaned.s"

        echo "[1/3] Compiling C to Assembly (arm-none-eabi-gcc)..."
        if ! arm-none-eabi-gcc -mcpu=arm7tdmi -S "$input" -fno-asynchronous-unwind-tables -fno-unwind-tables -fno-ident -fno-stack-protector -o "$asm_file"; then
            echo "Error: arm-none-eabi-gcc failed."
            exit 1
        fi

        echo "[2/3] Cleaning GCC directives (cleaner.py)..."
        if ! python3 ./cleaner.py "$asm_file"; then
            echo "Error: cleaner.py failed."
            exit 1
        fi

        echo "[3/3] Parsing to Machine Code (Latest_Parser.py)..."
        if ! python3 ./Latest_Parser.py "$cleaned_asm" "$output_hex"; then
            echo "Error: Latest_Parser.py failed."
            exit 1
        fi

    elif [[ "$input" == *.s ]]; then
        echo "[1/1] Parsing Assembly to Machine Code (Latest_Parser.py)..."
        if ! python3 ./Latest_Parser.py "$input" "$output_hex"; then
            echo "Error: Latest_Parser.py failed."
            exit 1
        fi
    else
        echo "Error: Input file $input must be a .c or .s file."
        exit 1
    fi
}

# Step 1: Process each thread into its respective temporary output hex
process_thread "$T0_FILE" "output1.hex"
process_thread "$T1_FILE" "output2.hex"
process_thread "$T2_FILE" "output3.hex"
process_thread "$T3_FILE" "output4.hex"

# Step 2: Combine all threads into the final memory image
echo "--- Final Step: Combining Threads ---"
if ! python3 combine.py "$OUTPUT_FILE"; then
    echo "Error: combine.py failed."
    exit 1
fi

# Optional Step 3: Reverse Engineer (Disassemble)
if [ "$RUN_REVERSE" = true ]; then
    DISASM_FILE="${OUTPUT_FILE%.hex}.txt"
    echo "--- Disassembling $OUTPUT_FILE to $DISASM_FILE ---"
    if ! python3 ./reverseEng.py "$OUTPUT_FILE" > "$DISASM_FILE"; then
        echo "Error: reverseEng.py failed."
        exit 1
    fi
fi

echo "--- Success! ---"
echo "Generated FGMT machine code: $OUTPUT_FILE"
[ "$RUN_REVERSE" = true ] && echo "Generated disassembly: $DISASM_FILE"
