# Lab 6 ARM 4T: timing closure at 125 MHz

The Lab 6 NetFPGA build (`../../Raymond/lab6_arm_4T`) missed the 8 ns `core_clk` constraint:
9.984 ns, 4 setup errors. This folder fixes it.

## Result

| | Before | After |
|---|---|---|
| `TS_core_clk_int` (8 ns) | 9.984 ns, 4 errors, slack -1.984 ns | 7.976 ns, 0 errors, slack +0.024 ns |
| Whole design | 4 timing errors | 0 timing errors |
| Occupied slices | 15,691 | 15,720 (+29) |
| 4-input LUTs | 24,640 | 24,779 (+139) |
| Slice flip-flops | 14,968 | 14,930 (-38) |
| Latency | | unchanged |

Verified in simulation (ISE, XP VM) and by the post-route timing report. Not run on the board.

## The path that failed

ID/EX register -> operand mux `XLXI_134` (`ALUB`, fanout 149) -> ALU `XLXI_174` shifter and
result mux -> `Z = (ALU_Result == 64'b0)` (a 64-bit carry-chain compare, about 2.2 ns) -> Z
flip-flop in `Flag_Reg_4`. 12 logic levels, 4.011 ns logic and 5.973 ns route.

## The fix

The Z flag is computed one stage later, in M, from the registered ALU result:

- `ALU.v`: `Z` tied to 0 (the compare is removed from EX).
- `Zero_Detect.v` (new): `Z = (M_ALU == 0)`.
- `Z_Reg_4.v` (new): four per-thread Z bits, written with the M-stage thread ID and read with
  the EX-stage thread ID. Its output feeds the Condition Unit.
- `Flag_Reg_4` still holds N, C and V. Its Z bits are unused and removed by synthesis.

It costs no latency because of the 4-thread round-robin: a thread's next instruction reads its
flags 4 cycles later, so writing Z one cycle later still leaves 2 cycles of margin.

## What limits it now

The worst path is a half-cycle path: thread-ID register `XLXI_217` -> PC read mux
`XLXI_215/XLXI_206` -> instruction-memory BRAM `XLXI_182`, which is clocked on the falling edge
(3.988 ns of a 4 ns requirement, 69.5% routing). The register-file BRAM read into ID/EX is
similar, and the ALU path now ends at EX/M at 7.879 ns. Going faster would need rising-edge
BRAMs, which adds a pipeline stage.

## Folder contents

| Path | What |
|---|---|
| (top level) | ISE 10.1 project with the schematic changes (`Pipeline_Datapath.sch`) |
| `netfpga_build/src/` | Files changed in the NetFPGA build tree: `ALU.v`, `Zero_Detect.v`, `Z_Reg_4.v`, and Raymond's `Pipeline_Datapath.vf` with the same wiring added by hand (`XLXI_224`, `XLXI_225`) |
| `netfpga_build/synth/nf2_top.prj` | Synthesis file list with the two new modules added |
| `timing_reports/before/` | Rebuild of the original design: `.twr`, `trce -v 10` detail, `.mrp`, `syn.log` |
| `timing_reports/after/` | Same reports after the fix |

To rebuild: copy `netfpga_build/src/*` and `netfpga_build/synth/nf2_top.prj` over Raymond's
`lab6_arm_4T` tree and run `make` in `synth/`. Do not run `make clean`: it deletes the
hand-edited `nf2_top.prj`.
