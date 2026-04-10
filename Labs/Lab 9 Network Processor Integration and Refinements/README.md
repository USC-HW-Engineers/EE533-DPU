# Lab 9: Network Processor Integration and Refinements

## Overview
This lab focuses on the heterogeneous integration of a 7-stage barrel ARM CPU (from Team 5) with a custom SIMD GPU and a newly integrated 16-PE BF16 Tensor Core. The system is deployed on the NetFPGA-1G platform as a user module within the reference NIC pipeline.

The design enables end-to-end hardware acceleration of vector and tensor operations, triggered by Ethernet packets containing embedded commands (EtherType `0x88B5`) without host-level software intervention during execution.

## Key Features
- **7-Stage ARM CPU**: 4-thread barrel pipeline with CP10 coprocessor interface for GPU control.
- **SIMD GPU**: 4-lane architecture supporting INT16 and BF16 operations.
- **16-PE Tensor Core**: 4x4 WMMA (Weight Matrix Multiply-Accumulate) unit using BF16 floating-point arithmetic.
- **Packet Processor**: Decodes commands from Ethernet packets to load programs/data and trigger execution.
- **Convertible FIFO**: Manages packet RX, SRAM mode for processing, and TX drain for results.

## System Architecture
The SoC is inserted into the NetFPGA pipeline:
`MAC RX → Input Arbiter → Output Port Lookup (NIC) → Network Processor Top → Output Queues → MAC TX`

### Command Protocol (EtherType 0x88B5)
| Opcode | Name | Description |
| :--- | :--- | :--- |
| `0x1` | LOAD_IMEM | Load program into ARM CPU Instruction Memory |
| `0x2` | LOAD_DMEM | Load data into ARM CPU Data Memory |
| `0x3` | CPU_START | Release CPU reset and start execution |
| `0x6` | LOAD_GPU_IMEM | Load kernel into GPU Instruction Memory |
| `0x7` | LOAD_GPU_DMEM | Load vectors/matrices into GPU Data Memory |
| `0x8` | READBACK_GPU | Copy GPU results to response FIFO |

## Register Interface
**Base Address:** `0x2001000` (NWP prefix)
- `0x10`: `sys_ctrl` (bit[2]: system reset)
- `0x14`: `gpu_pc` (Status and Program Counter)
- `0x1C`: `gpu_status` (Halt and State flags)
- `0x24`: `fifo_status` (Head/Tail pointers and ready flags)

## Results
- **VADD+1 Test**: Verified 4-lane INT16 vector addition on hardware.
- **BF16 Dot Product**: Verified $A \cdot B = 136.0$ ($0x4308$) using the 16-PE Tensor Core.
- **Synthesis**: 43 Verilog files and 6 CoreGen blocks synthesized for Virtex-II Pro.
