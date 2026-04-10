# EE533-DPU: Hardware-Accelerated Data Processing Unit

![Course](https://img.shields.io/badge/Course-EE533%3A%20Network%20Processor%20Design-blue)
![Status](https://img.shields.io/badge/Status-In%20Development-orange)
![Platform](https://img.shields.io/badge/Platform-NetFPGA-green)

Welcome to the repository for the **EE533 Data Processing Unit (DPU)** project! This repository documents our semester-long journey to design, simulate, and implement a high-performance, hardware-accelerated DPU from the ground up.

## 📖 Project Overview

The primary objective of this project is to build a complete DPU architecture that integrates a custom-designed **ARM-compatible processor** with a **standalone GPU processor** optimized for network packet processing and Artificial Neural Network (ANN) acceleration.

By combining the control-plane capabilities of a multi-threaded ARM core with the data-plane throughput of a SIMD GPU, we aim to deliver a system capable of handling complex networking tasks with high efficiency.

### Key Features
*   **Custom ARM Processor**: A 5-stage pipelined datapath featuring Fine-Grained Multithreading (FGMT) to support 4 concurrent hardware threads with zero-overhead context switching.
*   **Standalone GPU**: A custom SIMD processor designed from scratch, featuring 64-bit vector registers, specialized Tensor Units for BFloat16 math, and a custom toolchain for translating CUDA kernels into hardware-compatible machine code.
*   **NetFPGA Integration**: Hardware deployment and testing utilizing the NetFPGA platform for real-world network packet inspection and routing.

---

## 🚀 Development Progress

The project is developed incrementally across multiple laboratory assignments. Here is our progress so far:

### Phase 1: Networking & Hardware Foundations
- [x] **Lab 1: Client-Server Comm** - Established basic socket programming concepts with a C-based client-server application.
- [x] **Lab 2: 32-bit ALU Design** - Designed and simulated a hierarchical 32-bit Arithmetic Logic Unit using Xilinx ISE.
- [x] **Lab 3: Mini-IDS** - Developed a Mini-Intrusion Detection System in Verilog for real-time packet payload inspection.

### Phase 2: Hardware Integration & Acceleration
- [x] **Lab 4: NetFPGA Integration** - Integrated the Mini-IDS into the NetFPGA reference router, synthesized the hardware, and verified line-rate filtering performance using `iperf`.
- [x] **CUDA Optimization** - Explored GPU acceleration using NVIDIA CUDA, optimizing matrix multiplication and image convolution (Naive, Tiled, and cuBLAS).

### Phase 3: Processor Architecture
- [x] **Lab 5: Pipelined Datapath** - Implemented a 5-stage pipelined datapath with 64-bit registers and BRAM-based dual-port memory.
- [x] **Lab 6: Multithreaded ARM Core** - Extended the pipeline to support a custom subset of the ARM Instruction Set Architecture (ISA) with 4-way Fine-Grained Multithreading.

### Phase 4: Custom GPU Design
- [x] **Lab 7: Custom SIMD GPU** - Designed a standalone GPU optimized for BFloat16 tensor operations. Developed a complete software toolchain (`kernel.cu` -> PTX -> Custom Machine Code) and a Python-based behavioral simulator.

### Phase 5: System Integration & Performance
- [x] **Lab 8: Network Processor Integration** - Successfully integrated the multi-threaded ARM processor with the NetFPGA pipeline using a specialized **Convertible FIFO** architecture. Implemented a robust hardware-software handshake protocol (Poll -> Lock -> Process -> Done) to enable real-time packet modification at line rate.
- [x] **Lab 9: Network Processor Integration and Refinements** - Heterogeneous integration of a 7-stage barrel ARM CPU with a custom SIMD GPU and a 16-PE BF16 Tensor Core. Enabled end-to-end hardware acceleration of vector and tensor operations triggered by Ethernet packets (EtherType `0x88B5`).
- [x] **Lab 10: Network Processor Integration and Refinements 2** - Implemented a complete SoC on the NetFPGA platform, integrating a SIMT GPU with a systolic array tensor core and a DMA engine. Demonstrated full FC (Fully Connected) neural network layer inference (`y = ReLU(W * X + B)`) using hardware-accelerated BF16 operations.

---

## 📂 Repository Structure

The repository is organized by laboratory assignments, each containing source code, hardware schematics, simulation testbenches, and reports:

*   **`Lab 1/`** - Initial client/server C code.
*   **`Lab 2/`** - Xilinx ISE project for the 32-bit ALU.
*   **`Lab 3/`** - Verilog source and schematics for the Mini-IDS.
*   **`Lab 4/`** - NetFPGA bitfile generation, software configuration scripts (`idsreg`), and `iperf` testing suites.
*   **`Lab 5/`** - Verilog implementation of the 5-stage pipelined datapath.
*   **`Lab 6/`** - Xilinx ISE projects for the single-threaded and 4-threaded ARM processor, including the custom assembly parser.
*   **`Lab 7/`** - Custom GPU architecture documentation, CUDA kernels, Python-based PTX parser, and hardware simulator.
*   **`Lab 8/`** - Integrated NetFPGA system with the ARM core, including the **Convertible FIFO** Verilog source and specialized testing toolkits.
*   **`Lab 9/`** - Final integration phase with the 16-PE BF16 Tensor Core and command-driven packet processing.
*   **`Lab 10/`** - Complete SoC implementation featuring SIMT GPU, systolic array, DMA engine, and FC layer inference demo.
*   **`CUDA Lab/`** - Various CPU and GPU (CUDA) implementations for performance benchmarking.

---

## 🛠️ Prerequisites & Tools

To build, simulate, or modify the components in this repository, you will need:
*   **Xilinx ISE 10.1** (Required for hardware synthesis and simulation of early labs)
*   **NetFPGA Development Environment** (Fedora VM, `nf_download`, etc.)
*   **NVIDIA CUDA Toolkit** (For compiling `.cu` files in Lab 7 and the CUDA Lab)
*   **Python 3.x** (For custom parsers, disassemblers, and behavioral simulators)
*   **Icarus Verilog** (For SoC simulation)
*   **GCC** (For standard C applications)

---

## 🔮 Upcoming Work

The project has reached its final integration stage. Our current focus is on:
1.  **Full Model Acceleration**: Extending the FC layer inference to support multi-layer neural network architectures on the DPU.
2.  **Performance Optimization**: Tuning the DMA engine and systolic array for maximum throughput during large matrix operations.
3.  **Final Documentation**: Completing the comprehensive technical manual and project report.

---
*Developed as part of EE533: Network Processor Design and Programming at the University of Southern California (USC).*