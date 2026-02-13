////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : ifd2.vf
// /___/   /\     Timestamp : 02/13/2026 00:13:25
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "C:/Documents and Settings/student/Desktop/5_Stage_Pipeline/ifd2.sch" ifd2.vf
//Design Name: ifd2
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module ifd2(CE, 
            CLK, 
            CLR, 
            D, 
            Q);

    input CE;
    input CLK;
    input CLR;
    input [1:0] D;
   output [1:0] Q;
   
   
   FDCE XLXI_12 (.C(CLK), 
                 .CE(CE), 
                 .CLR(CLR), 
                 .D(D[1]), 
                 .Q(Q[1]));
   defparam XLXI_12.INIT = 1'b0;
   FDCE XLXI_13 (.C(CLK), 
                 .CE(CE), 
                 .CLR(CLR), 
                 .D(D[0]), 
                 .Q(Q[0]));
   defparam XLXI_13.INIT = 1'b0;
endmodule
