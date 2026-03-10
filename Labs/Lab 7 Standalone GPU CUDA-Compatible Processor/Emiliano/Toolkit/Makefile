# Custom GPU Toolchain Makefile

# --- Variables ---
# The 'BASE' name of your project (the name without .cu)
# You can change this here OR on the command line: make BASE=my_other_file
BASE ?= kernel

NVCC = nvcc
PYTHON = python3
PARSER = ptx_parser.py
SIMULATOR = gpu_simulator.py
DISASSEMBLER = disassembler.py

# Derived File Names
SRC = $(BASE).cu
PTX = $(BASE).ptx
HEX = $(BASE).hex

# --- Targets ---

all: $(HEX)

$(HEX): $(PTX) $(PARSER)
	@echo "[Toolchain] Translating $(PTX) to $(HEX)..."
	$(PYTHON) $(PARSER) $(PTX) $(HEX)

$(PTX): $(SRC)
	@echo "[Toolchain] Compiling $(SRC) to $(PTX) using NVCC..."
	$(NVCC) -ptx -arch=sm_80 $(SRC) -o $(PTX)

# --- Utility Commands ---

sim: $(HEX)
	@echo "[Toolchain] Starting GPU Behavioral Simulator for $(HEX)..."
	$(PYTHON) $(SIMULATOR) $(HEX)

disasm: $(HEX)
	@echo "[Toolchain] Disassembling $(HEX)..."
	$(PYTHON) $(DISASSEMBLER) $(HEX)

clean:
	@echo "[Toolchain] Cleaning up generated files..."
	rm -f *.ptx *.hex
	rm -rf __pycache__

help:
	@echo "GPU Toolchain Commands:"
	@echo "  make                - Build kernel.hex from kernel.cu (default)"
	@echo "  make BASE=test      - Build test.hex from test.cu"
	@echo "  make sim BASE=test  - Compile and run simulator for test.hex"
	@echo "  make clean          - Delete ALL generated .ptx and .hex files"

.PHONY: all sim disasm clean help
