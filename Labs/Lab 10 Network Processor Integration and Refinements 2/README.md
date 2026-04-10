# Lab 10: Network Processor Integration and Refinements 2

This laboratory project implements a complete SoC on the NetFPGA platform, integrating a multi-threaded ARM CPU, a SIMT GPU with a systolic array tensor core, and a packet processing engine. The system is demonstrated through an end-to-end Fully Connected (FC) neural network layer inference.

## Architecture Overview

- **ARM CPU**: 4-threaded Fine-Grained Multithreading (FGMT) barrel processor. 5-stage pipeline, compatible with a subset of the ARM ISA.
- **SIMT GPU**: 4-threaded Single Instruction, Multiple Threads (SIMT) architecture with 4 scalar lanes.
- **Tensor Core**: 4x4 Systolic Array (SA) optimized for Brain Float 16 (BF16) matrix operations.
- **DMA Engine**: High-performance data mover between CPU and GPU memories, supporting 32-bit to 16-bit packing/unpacking.
- **Packet Processor**: Command-driven engine for remote orchestration via EtherType `0x88B5` packets.
- **Convertible FIFO**: Hybrid packet buffer and SRAM for system configuration and data transfer.

## Project Structure

- `Raymond/sim/src/rtl/`: Verilog source code for all SoC components.
  - `soc/`: Top-level SoC wrapper.
  - `cpu/`: FGMT ARM CPU implementation.
  - `gpu/`: SIMT GPU and Tensor Core implementation.
  - `cp/`: Coprocessor 10 (CP10) and DMA engine.
  - `network/`: Packet processor and FIFO modules.
- `Raymond/sim/src/asm/`: ARM assembly for feature extraction and orchestration.
- `Raymond/sim/src/c/`: C source files for CPU/GPU kernels.
- `Raymond/sim/src/tb/`: Verilog testbenches for unit and integration testing.
- `Raymond/sim/src/script/`: Automation scripts for assembly and simulation.

## Key Features

- **FC Layer Inference**: Hardware-accelerated `y = ReLU(W * X + B)` computation using the tensor core.
- **BF16 Support**: Native hardware support for BFloat16 arithmetic, balancing performance and range for ML workloads.
- **FGMT Orchestration**: CPU manages the GPU lifecycle, DMA transfers, and packet parsing using hardware threads.
- **DMA Bursting**: Efficient memory transfers with automatic address increment and packing/unpacking capabilities.

## Getting Started

### Prerequisites

- Xilinx ISE 10.1 (for synthesis on NetFPGA).
- Icarus Verilog (for simulation).
- Python 3 (for golden model verification).

### Simulation

Run the integration testbench to verify the FC layer inference:

```bash
cd Raymond/sim/src/sim/
iverilog -f soc_sim_inc.txt -o soc_tb.vvp ../tb/soc_tb.v
vvp soc_tb.vvp
```

### Hardware Verification

Use the `socreg` script to inject matrices and trigger execution on the FPGA:

```bash
cd Raymond/
./socreg fc
```

