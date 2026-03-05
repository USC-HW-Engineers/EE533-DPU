# Lab 6: Quad HW-Threaded ARM-ISA Compatible Processor Core

## Project Overview
This project implements a high-performance, 5-stage pipelined processor core compatible with a subset of the ARM Instruction Set Architecture (ISA). The design is optimized for a NetFPGA platform and features **Fine-Grained Multithreading (FGMT)**.

### Key Features
*   **4 Concurrent Hardware Threads**: Zero-overhead context switching by interleaving threads every clock cycle.
*   **5-Stage Pipeline**: Instruction Fetch (IF), Instruction Decode (ID), Execute (EX), Memory (MEM), and Write-Back (WB).
*   **64-bit Data Path**: Support for 64-bit arithmetic and data memory access.
*   **BRAM Integration**: Unified memory mapping across Instruction Memory (IM) and Data Memory (DM) using high-speed Xilinx Block RAM.
*   **Zero-Extension Immediate**: Optimized for positive address range mapping (0-4095) in memory-mapped operations.

## Architecture & Implementation
The processor uses a fixed interleaving sequence (**T0 -> T1 -> T2 -> T3**). Each thread maintains its own:
*   **Program Counter (PC)**: Independent word-aligned addressing.
*   **Flag Register**: Independent Status Flags (C, N, V, Z).
*   **Register File Section**: Shared 16-register bank indexed by Thread ID.

### Memory Map
| Segment | Address Range (Byte) | Purpose |
|---------|---------------------|---------|
| IM      | 0x000 - 0x7FF       | Instruction Fetch (512 words) |
| DM      | 0x800 - 0xBFF       | Data Read/Write (256 words) |

## Simulation & Testing
The project includes a robust Verilog testbench (`ARM_Processor_4T_tb.v`) capable of:
1.  **Direct Memory Loading**: Loads machine code from `.hex` files using `$readmemh`.
2.  **Real-Time Monitoring**: Logs all memory writes and thread transitions as they occur.
3.  **Hierarchical Probing**: Dumps the complete internal state of the Data Memory BRAM upon simulation completion.

### Running the Simulation
1.  Open the project in **Xilinx ISE 10.1**.
2.  Add the `newSort_Manual2.hex` file to your project toolkit.
3.  Simulate `ARM_Processor_4T_tb` and run for `60us`.

## Project Contributors
- **Emiliano**: Core Architecture, Verilog Implementation, and PC Logic Refinement.
- **Raymond**: Pipeline Registers and 4-Threaded Core Integration.
- **Vipassana**: ARM ISA Parser and Assembler Toolchain.
