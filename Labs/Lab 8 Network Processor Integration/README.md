# EE 533 Deep Processing Unit (DPU) - Lab 8

A high-performance Network Processor and GPU-accelerated accelerator integrated into the NetFPGA-1G reference pipeline.

## Overview
This repository contains the design and implementation of a heterogeneous System-on-Chip (SoC) for network packet processing. The architecture combines a multi-threaded ARM-compatible processor for complex control logic and a 4-lane SIMD GPU (DPU) for parallel arithmetic acceleration, linked by a specialized "Convertible FIFO."

## Architecture Highlights
- **ARM-Compatible Orchestrator**: 4-hardware-threaded 5-stage pipeline with Fine-Grained Multithreading.
- **SIMD GPU/DPU**: 4-lane vector processor supporting BFloat16 Tensor operations (FMA/MAC) and integer SIMD.
- **Convertible FIFO**: A "dual-personality" 256x72 True Dual-Port BRAM that switches between a network FIFO and a shared scratchpad RAM.
- **MMIO Control**: Unified memory map allowing the ARM CPU to manage the GPU state, FIFO modes, and packet forwarding.

## Memory Map
| Address Range | Component | Description |
| --- | --- | --- |
| `0x0000 - 0x07FF` | ARM IMEM | 512 words for ARM Instructions |
| `0x0800 - 0x0BFF` | ARM DMEM | 256 words for Local Data |
| `0x0C00 - 0x0FFF` | Shared FIFO | 256 words of shared packet buffer |
| `0x1000` | Control Reg | Handshake and GPU control mailbox |

## Operational Flow
1. **Buffer**: The NetFPGA pipeline streams a packet into the FIFO.
2. **Poll**: The ARM CPU polls the Control Register for `packet_ready`.
3. **Switch**: CPU switches the FIFO to **Processor Mode** for random access.
4. **Accelerate**: CPU triggers the GPU to perform SIMD operations (e.g., encryption, header modification) on the buffered packet.
5. **Release**: Once the GPU halts, the CPU releases the FIFO to **Network Mode** and triggers the hardware forwarder.

## Directory Structure
- `/src`: Verilog source files for CPU, GPU, and FIFO modules.
- `/sw`: Control scripts (`cpureg2`) and packet generators (`send_test.pl`).
- `/Toolkit CPU`: Assembler, parser, and test kernels for ARM and GPU.

## Tools Required
- Xilinx ISE 10.1 (Targeting Virtex-II Pro / Virtex-5)
- ModelSim for simulation
- NetFPGA-1G Hardware Platform
- Python/Perl for toolchain and scripting

## Authors
- Emiliano (ARM Integration & FIFO Design)
- Raymond (GPU/DPU SIMD Design & Post-Syn Integration)

---
*Developed for EE 533: Network Processor Design at USC.*
