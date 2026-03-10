////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : Mux4_1_64b.vf
// /___/   /\     Timestamp : 02/13/2026 13:18:06
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "C:/Documents and Settings/student/Desktop/5_Stage_Pipeline/Mux4_1_64b.sch" Mux4_1_64b.vf
//Design Name: Mux4_1_64b
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module Mux4_1_64b(D0, 
                  D1, 
                  D2, 
                  D3, 
                  S, 
                  O);

    input [63:0] D0;
    input [63:0] D1;
    input [63:0] D2;
    input [63:0] D3;
    input [1:0] S;
   output [63:0] O;
   
   
   Mux4_1_16b XLXI_1 (.D0(D0[15:0]), 
                      .D1(D1[15:0]), 
                      .D2(D2[15:0]), 
                      .D3(D3[15:0]), 
                      .S(S[1:0]), 
                      .O(O[15:0]));
   Mux4_1_16b XLXI_2 (.D0(D0[31:16]), 
                      .D1(D1[31:16]), 
                      .D2(D2[31:16]), 
                      .D3(D3[31:16]), 
                      .S(S[1:0]), 
                      .O(O[31:16]));
   Mux4_1_16b XLXI_3 (.D0(D0[47:32]), 
                      .D1(D1[47:32]), 
                      .D2(D2[47:32]), 
                      .D3(D3[47:32]), 
                      .S(S[1:0]), 
                      .O(O[47:32]));
   Mux4_1_16b XLXI_4 (.D0(D0[63:48]), 
                      .D1(D1[63:48]), 
                      .D2(D2[63:48]), 
                      .D3(D3[63:48]), 
                      .S(S[1:0]), 
                      .O(O[63:48]));
endmodule
