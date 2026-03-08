#!/bin/bash

# Ensure exactly 5 arguments
if [ "$#" -ne 5 ]; then
    echo "Usage: ./compile_cpu2 file1.s file2.s file3.s file4.s output_cpu.hex"
    exit 1
fi

# Extract base names (remove .s)
base1="${1%.s}"
base2="${2%.s}"
base3="${3%.s}"
base4="${4%.s}"

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