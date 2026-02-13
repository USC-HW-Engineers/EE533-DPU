////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : ID_EX_Reg.vf
// /___/   /\     Timestamp : 02/13/2026 13:18:08
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "C:/Documents and Settings/student/Desktop/5_Stage_Pipeline/ID_EX_Reg.sch" ID_EX_Reg.vf
//Design Name: ID_EX_Reg
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module ID_EX_Reg(CE, 
                 CLK, 
                 CLR, 
                 ID_REG1, 
                 ID_R1, 
                 ID_R2, 
                 ID_WME, 
                 ID_WRE, 
                 EX_REG1, 
                 EX_R1, 
                 EX_R2, 
                 EX_WME, 
                 EX_WRE);

    input CE;
    input CLK;
    input CLR;
    input [1:0] ID_REG1;
    input [63:0] ID_R1;
    input [63:0] ID_R2;
    input ID_WME;
    input ID_WRE;
   output [1:0] EX_REG1;
   output [63:0] EX_R1;
   output [63:0] EX_R2;
   output EX_WME;
   output EX_WRE;
   
   
   ifd64 XLXI_6 (.CE(CE), 
                 .CLK(CLK), 
                 .CLR(CLR), 
                 .D(ID_R1[63:0]), 
                 .Q(EX_R1[63:0]));
   ifd64 XLXI_7 (.CE(CE), 
                 .CLK(CLK), 
                 .CLR(CLR), 
                 .D(ID_R2[63:0]), 
                 .Q(EX_R2[63:0]));
   ifd2 XLXI_10 (.CE(CE), 
                 .CLK(CLK), 
                 .CLR(CLR), 
                 .D(ID_REG1[1:0]), 
                 .Q(EX_REG1[1:0]));
   FDCE XLXI_12 (.C(CLK), 
                 .CE(CE), 
                 .CLR(CLR), 
                 .D(ID_WME), 
                 .Q(EX_WME));
   defparam XLXI_12.INIT = 1'b0;
   FDCE XLXI_13 (.C(CLK), 
                 .CE(CE), 
                 .CLR(CLR), 
                 .D(ID_WRE), 
                 .Q(EX_WRE));
   defparam XLXI_13.INIT = 1'b0;
endmodule
