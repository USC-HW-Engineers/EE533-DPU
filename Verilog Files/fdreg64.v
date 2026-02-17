////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : fdreg64.vf
// /___/   /\     Timestamp : 02/13/2026 13:18:08
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "C:/Documents and Settings/student/Desktop/5_Stage_Pipeline/fdreg64.sch" fdreg64.vf
//Design Name: fdreg64
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module fdreg64(CE, 
               clk, 
               D, 
               Q);

    input CE;
    input clk;
    input [63:0] D;
   output [63:0] Q;
   
   wire XLXN_29;
   
   GND XLXI_46 (.G(XLXN_29));
   fdreg16 XLXI_47 (.C(clk), 
                    .CE(CE), 
                    .CLR(XLXN_29), 
                    .D(D[15:0]), 
                    .Q(Q[15:0]));
   fdreg16 XLXI_48 (.C(clk), 
                    .CE(CE), 
                    .CLR(XLXN_29), 
                    .D(D[31:16]), 
                    .Q(Q[31:16]));
   fdreg16 XLXI_49 (.C(clk), 
                    .CE(CE), 
                    .CLR(XLXN_29), 
                    .D(D[47:32]), 
                    .Q(Q[47:32]));
   fdreg16 XLXI_50 (.C(clk), 
                    .CE(CE), 
                    .CLR(XLXN_29), 
                    .D(D[63:48]), 
                    .Q(Q[63:48]));
endmodule
