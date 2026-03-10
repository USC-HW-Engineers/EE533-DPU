#!/bin/bash

# Ensure exactly 5 arguments
if [ "$#" -ne 5 ]; then
    echo "Usage: ./compile_cpu file1.c file2.c file3.c file4.c output_cpu.hex"
    exit 1
fi

# Compile each C file to assembly
arm-none-eabi-gcc -mcpu=arm7tdmi -S "$1" -fno-asynchronous-unwind-tables -fno-unwind-tables -fno-ident -fno-stack-protector
arm-none-eabi-gcc -mcpu=arm7tdmi -S "$2" -fno-asynchronous-unwind-tables -fno-unwind-tables -fno-ident -fno-stack-protector
arm-none-eabi-gcc -mcpu=arm7tdmi -S "$3" -fno-asynchronous-unwind-tables -fno-unwind-tables -fno-ident -fno-stack-protector
arm-none-eabi-gcc -mcpu=arm7tdmi -S "$4" -fno-asynchronous-unwind-tables -fno-unwind-tables -fno-ident -fno-stack-protector

# Extract base names (remove .c)
base1="${1%.c}"
base2="${2%.c}"
base3="${3%.c}"
base4="${4%.c}"

python3 ./cleaner.py "./${base1}.s" 
python3 ./cleaner.py "./${base2}.s"
python3 ./cleaner.py "./${base3}.s"
python3 ./cleaner.py "./${base4}.s"

# Run parser with fixed output names
python3 ./Latest_Parser.py "./${base1}_cleaned.s" output1.hex
python3 ./Latest_Parser.py "./${base2}_cleaned.s" output2.hex
python3 ./Latest_Parser.py "./${base3}_cleaned.s" output3.hex
python3 ./Latest_Parser.py "./${base4}_cleaned.s" output4.hex

# Combine all hex files into one final file
python3 combine.py "$5"