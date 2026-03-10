////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : Mux4_1_16b.vf
// /___/   /\     Timestamp : 02/13/2026 13:24:54
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "C:/Documents and Settings/student/Desktop/5_Stage_Pipeline/Mux4_1_16b.sch" Mux4_1_16b.vf
//Design Name: Mux4_1_16b
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module M2_1E_MXILINX_Mux4_1_16b(D0, 
                                D1, 
                                E, 
                                S0, 
                                O);

    input D0;
    input D1;
    input E;
    input S0;
   output O;
   
   wire M0;
   wire M1;
   
   AND3 I_36_30 (.I0(D1), 
                 .I1(E), 
                 .I2(S0), 
                 .O(M1));
   AND3B1 I_36_31 (.I0(S0), 
                   .I1(E), 
                   .I2(D0), 
                   .O(M0));
   OR2 I_36_38 (.I0(M1), 
                .I1(M0), 
                .O(O));
endmodule
`timescale 1ns / 1ps

module M4_1E_MXILINX_Mux4_1_16b(D0, 
                                D1, 
                                D2, 
                                D3, 
                                E, 
                                S0, 
                                S1, 
                                O);

    input D0;
    input D1;
    input D2;
    input D3;
    input E;
    input S0;
    input S1;
   output O;
   
   wire M01;
   wire M23;
   
   M2_1E_MXILINX_Mux4_1_16b I_M01 (.D0(D0), 
                                   .D1(D1), 
                                   .E(E), 
                                   .S0(S0), 
                                   .O(M01));
   // synthesis attribute HU_SET of I_M01 is "I_M01_1"
   M2_1E_MXILINX_Mux4_1_16b I_M23 (.D0(D2), 
                                   .D1(D3), 
                                   .E(E), 
                                   .S0(S0), 
                                   .O(M23));
   // synthesis attribute HU_SET of I_M23 is "I_M23_0"
   MUXF5 I_O (.I0(M01), 
              .I1(M23), 
              .S(S1), 
              .O(O));
endmodule
`timescale 1ns / 1ps

module Mux4_1_16b(D0, 
                  D1, 
                  D2, 
                  D3, 
                  S, 
                  O);

    input [15:0] D0;
    input [15:0] D1;
    input [15:0] D2;
    input [15:0] D3;
    input [1:0] S;
   output [15:0] O;
   
   wire E;
   
   M4_1E_MXILINX_Mux4_1_16b XLXI_2 (.D0(D0[0]), 
                                    .D1(D1[0]), 
                                    .D2(D2[0]), 
                                    .D3(D3[0]), 
                                    .E(E), 
                                    .S0(S[0]), 
                                    .S1(S[1]), 
                                    .O(O[0]));
   // synthesis attribute HU_SET of XLXI_2 is "XLXI_2_6"
   M4_1E_MXILINX_Mux4_1_16b XLXI_3 (.D0(D0[1]), 
                                    .D1(D1[1]), 
                                    .D2(D2[1]), 
                                    .D3(D3[1]), 
                                    .E(E), 
                                    .S0(S[0]), 
                                    .S1(S[1]), 
                                    .O(O[1]));
   // synthesis attribute HU_SET of XLXI_3 is "XLXI_3_7"
   M4_1E_MXILINX_Mux4_1_16b XLXI_10 (.D0(D0[2]), 
                                     .D1(D1[2]), 
                                     .D2(D2[2]), 
                                     .D3(D3[2]), 
                                     .E(E), 
                                     .S0(S[0]), 
                                     .S1(S[1]), 
                                     .O(O[2]));
   // synthesis attribute HU_SET of XLXI_10 is "XLXI_10_8"
   M4_1E_MXILINX_Mux4_1_16b XLXI_11 (.D0(D0[3]), 
                                     .D1(D1[3]), 
                                     .D2(D2[3]), 
                                     .D3(D3[3]), 
                                     .E(E), 
                                     .S0(S[0]), 
                                     .S1(S[1]), 
                                     .O(O[3]));
   // synthesis attribute HU_SET of XLXI_11 is "XLXI_11_9"
   M4_1E_MXILINX_Mux4_1_16b XLXI_20 (.D0(D0[4]), 
                                     .D1(D1[4]), 
                                     .D2(D2[4]), 
                                     .D3(D3[4]), 
                                     .E(E), 
                                     .S0(S[0]), 
                                     .S1(S[1]), 
                                     .O(O[4]));
   // synthesis attribute HU_SET of XLXI_20 is "XLXI_20_2"
   M4_1E_MXILINX_Mux4_1_16b XLXI_21 (.D0(D0[5]), 
                                     .D1(D1[5]), 
                                     .D2(D2[5]), 
                                     .D3(D3[5]), 
                                     .E(E), 
                                     .S0(S[0]), 
                                     .S1(S[1]), 
                                     .O(O[5]));
   // synthesis attribute HU_SET of XLXI_21 is "XLXI_21_3"
   M4_1E_MXILINX_Mux4_1_16b XLXI_22 (.D0(D0[6]), 
                                     .D1(D1[6]), 
                                     .D2(D2[6]), 
                                     .D3(D3[6]), 
                                     .E(E), 
                                     .S0(S[0]), 
                                     .S1(S[1]), 
                                     .O(O[6]));
   // synthesis attribute HU_SET of XLXI_22 is "XLXI_22_4"
   M4_1E_MXILINX_Mux4_1_16b XLXI_23 (.D0(D0[7]), 
                                     .D1(D1[7]), 
                                     .D2(D2[7]), 
                                     .D3(D3[7]), 
                                     .E(E), 
                                     .S0(S[0]), 
                                     .S1(S[1]), 
                                     .O(O[7]));
   // synthesis attribute HU_SET of XLXI_23 is "XLXI_23_5"
   M4_1E_MXILINX_Mux4_1_16b XLXI_64 (.D0(D0[12]), 
                                     .D1(D1[12]), 
                                     .D2(D2[12]), 
                                     .D3(D3[12]), 
                                     .E(E), 
                                     .S0(S[0]), 
                                     .S1(S[1]), 
                                     .O(O[12]));
   // synthesis attribute HU_SET of XLXI_64 is "XLXI_64_10"
   M4_1E_MXILINX_Mux4_1_16b XLXI_65 (.D0(D0[13]), 
                                     .D1(D1[13]), 
                                     .D2(D2[13]), 
                                     .D3(D3[13]), 
                                     .E(E), 
                                     .S0(S[0]), 
                                     .S1(S[1]), 
                                     .O(O[13]));
   // synthesis attribute HU_SET of XLXI_65 is "XLXI_65_11"
   M4_1E_MXILINX_Mux4_1_16b XLXI_66 (.D0(D0[14]), 
                                     .D1(D1[14]), 
                                     .D2(D2[14]), 
                                     .D3(D3[14]), 
                                     .E(E), 
                                     .S0(S[0]), 
                                     .S1(S[1]), 
                                     .O(O[14]));
   // synthesis attribute HU_SET of XLXI_66 is "XLXI_66_12"
   M4_1E_MXILINX_Mux4_1_16b XLXI_67 (.D0(D0[15]), 
                                     .D1(D1[15]), 
                                     .D2(D2[15]), 
                                     .D3(D3[15]), 
                                     .E(E), 
                                     .S0(S[0]), 
                                     .S1(S[1]), 
                                     .O(O[15]));
   // synthesis attribute HU_SET of XLXI_67 is "XLXI_67_13"
   M4_1E_MXILINX_Mux4_1_16b XLXI_68 (.D0(D0[8]), 
                                     .D1(D1[8]), 
                                     .D2(D2[8]), 
                                     .D3(D3[8]), 
                                     .E(E), 
                                     .S0(S[0]), 
                                     .S1(S[1]), 
                                     .O(O[8]));
   // synthesis attribute HU_SET of XLXI_68 is "XLXI_68_14"
   M4_1E_MXILINX_Mux4_1_16b XLXI_69 (.D0(D0[9]), 
                                     .D1(D1[9]), 
                                     .D2(D2[9]), 
                                     .D3(D3[9]), 
                                     .E(E), 
                                     .S0(S[0]), 
                                     .S1(S[1]), 
                                     .O(O[9]));
   // synthesis attribute HU_SET of XLXI_69 is "XLXI_69_15"
   M4_1E_MXILINX_Mux4_1_16b XLXI_70 (.D0(D0[10]), 
                                     .D1(D1[10]), 
                                     .D2(D2[10]), 
                                     .D3(D3[10]), 
                                     .E(E), 
                                     .S0(S[0]), 
                                     .S1(S[1]), 
                                     .O(O[10]));
   // synthesis attribute HU_SET of XLXI_70 is "XLXI_70_16"
   M4_1E_MXILINX_Mux4_1_16b XLXI_71 (.D0(D0[11]), 
                                     .D1(D1[11]), 
                                     .D2(D2[11]), 
                                     .D3(D3[11]), 
                                     .E(E), 
                                     .S0(S[0]), 
                                     .S1(S[1]), 
                                     .O(O[11]));
   // synthesis attribute HU_SET of XLXI_71 is "XLXI_71_17"
   VCC XLXI_88 (.P(E));
endmodule
