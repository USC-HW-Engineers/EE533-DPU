# Standalone GPU CUDA-Compatible Processor

This project implements a custom, standalone SIMD GPU core designed to execute CUDA-compatible source code. The architecture is optimized for Artificial Neural Network (ANN) acceleration, supporting 64-bit vector operations with both integer and BFloat16 (BF16) data types.

## 🚀 Project Overview

The system provides a complete end-to-end toolchain:
1.  **Source:** Write standard CUDA C (`.cu`) kernels.
2.  **Compile:** Use NVIDIA's `nvcc` to generate PTX assembly.
3.  **Translate:** A custom Python parser converts PTX into a specialized 32-bit machine code (`.hex`).
4.  **Execute:** The machine code runs on a custom GPU core (implemented in Verilog) or a behavioral Python simulator.

---

## 🏗️ Hardware Architecture

The GPU operates as a SIMD (Single Instruction, Multiple Data) processor where each 64-bit register holds **4 packed 16-bit lanes**.

### Key Components:
*   **Control Unit (FSM):** A 10-state Finite State Machine (FETCH, DECODE, EXECUTE, WRITEBACK, etc.) that manages the multi-cycle execution of instructions.
*   **Register File:** 32 registers x 64-bits. Includes 3 read ports to support Fused Multiply-Add (FMA) operations. `R0` is hardwired to zero, and `R31` is reserved for the `thread_id`.
*   **Execution Unit (ALU):** A SIMD integer ALU performing per-lane `VADD`, `VSUB`, and bitwise logic.
*   **Tensor Unit:** A high-performance module featuring 4 parallel pipelined **BFloat16 lanes**. It supports 4-stage pipelined FMA (a*b + c) with optional ReLU activation.
*   **Memory Interface:** 1024-word Instruction Memory (IMEM) and Data Memory (DMEM) using synchronous FPGA Block RAM.

---

## 📜 Instruction Set Architecture (ISA)

The GPU supports two primary instruction formats:

### R-TYPE (Register-Register)
Used for ALU and Tensor operations.
`[Opcode(5)][Rd(5)][Ra(5)][Rb(5)][Rc(5)][Func(4)][Mode(3)]`

*   **ALU Ops:** `VADD`, `VSUB`, `VAND`, `VOR`, `VXOR`, `VSLT`.
*   **Tensor Ops:** `TENSOR_ADD`, `TENSOR_MUL`, `TENSOR_FMA` (with optional `_RELU` suffixes).
*   **Special:** `RELU_INT` (integer activation) and `VBCAST` (lane broadcasting).

### I-TYPE (Register-Immediate)
Used for memory access, branches, and immediate loading.
`[Opcode(5)][Rd(5)][Ra(5)][Imm17(17)]`

*   **Memory:** `LD` (Load), `ST` (Store).
*   **Immediates:** `MOVI`, `ADDI`, `LUI`.
*   **Control:** `BEQ`, `BNE`, `BLT`, `BGE`, `HALT`, `NOP`.

---

## 🛠️ Software Toolchain

The toolchain bridges the gap between NVIDIA's SIMT model and our custom SIMD hardware.

### Compilation Flow
1.  **NVIDIA NVCC:** Compiles `.cu` source to `.ptx` (Scalar assembly).
2.  **PTX Parser:** A custom Python script that maps PTX virtual registers to physical registers (R1-R31) and translates assembly to our 32-bit machine code.
3.  **Behavioral Simulator:** A Python-based simulator that mimics the hardware FSM and register updates for rapid verification.
4.  **Disassembler:** Translates `.hex` files back into human-readable mnemonics for debugging.

---

## 📁 File Structure

*   `kernel.cu`: Primary CUDA source file containing compute kernels.
*   `ptx_parser.py`: The translator from NVIDIA PTX to custom Machine Code.
*   `gpu_simulator.py`: Behavioral simulator for verification.
*   `disassembler.py`: Tool for inspecting generated `.hex` files.
*   `architecture.txt` / `instructions.txt`: Detailed technical specifications.
*   `Makefile`: Automates the build and simulation process.

---

## ⚡ Quick Start

### Build the project
To compile `kernel.cu` into the final machine code:
```bash
make
```

### Run Simulation
To test the generated machine code in the behavioral simulator:
```bash
make sim
```

### Disassemble Hex
To view the mnemonics of a generated hex file:
```bash
python3 disassembler.py gpu_program.hex
```
