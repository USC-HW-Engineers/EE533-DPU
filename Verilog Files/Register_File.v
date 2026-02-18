////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : Register_File.vf
// /___/   /\     Timestamp : 02/17/2026 19:49:50
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "C:/Documents and Settings/student/Desktop/ARM_Processor/Register_File.sch" Register_File.vf
//Design Name: Register_File
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module D2_4E_MXILINX_Register_File(A0, 
                                   A1, 
                                   E, 
                                   D0, 
                                   D1, 
                                   D2, 
                                   D3);

    input A0;
    input A1;
    input E;
   output D0;
   output D1;
   output D2;
   output D3;
   
   
   AND3 I_36_30 (.I0(A1), 
                 .I1(A0), 
                 .I2(E), 
                 .O(D3));
   AND3B1 I_36_31 (.I0(A0), 
                   .I1(A1), 
                   .I2(E), 
                   .O(D2));
   AND3B1 I_36_32 (.I0(A1), 
                   .I1(A0), 
                   .I2(E), 
                   .O(D1));
   AND3B2 I_36_33 (.I0(A0), 
                   .I1(A1), 
                   .I2(E), 
                   .O(D0));
endmodule
`timescale 1ns / 1ps

module Register_File(clk, 
                     r0addr, 
                     r1addr, 
                     waddr, 
                     wdata, 
                     wena, 
                     r0data, 
                     r1data);

    input clk;
    input [1:0] r0addr;
    input [1:0] r1addr;
    input [1:0] waddr;
    input [63:0] wdata;
    input wena;
   output [63:0] r0data;
   output [63:0] r1data;
   
   wire XLXN_1;
   wire XLXN_2;
   wire XLXN_3;
   wire XLXN_4;
   wire [63:0] XLXN_34;
   wire [63:0] XLXN_35;
   wire [63:0] XLXN_38;
   wire [63:0] XLXN_39;
   
   D2_4E_MXILINX_Register_File XLXI_16 (.A0(waddr[0]), 
                                        .A1(waddr[1]), 
                                        .E(wena), 
                                        .D0(XLXN_1), 
                                        .D1(XLXN_2), 
                                        .D2(XLXN_3), 
                                        .D3(XLXN_4));
   // synthesis attribute HU_SET of XLXI_16 is "XLXI_16_0"
   Mux4_1_64b XLXI_48 (.D0(XLXN_34[63:0]), 
                       .D1(XLXN_35[63:0]), 
                       .D2(XLXN_38[63:0]), 
                       .D3(XLXN_39[63:0]), 
                       .S(r0addr[1:0]), 
                       .O(r0data[63:0]));
   Mux4_1_64b XLXI_49 (.D0(XLXN_34[63:0]), 
                       .D1(XLXN_35[63:0]), 
                       .D2(XLXN_38[63:0]), 
                       .D3(XLXN_39[63:0]), 
                       .S(r1addr[1:0]), 
                       .O(r1data[63:0]));
   reg_file_64 XLXI_66 (.CE(XLXN_1), 
                        .clk(clk), 
                        .D(wdata[63:0]), 
                        .Q(XLXN_34[63:0]));
   reg_file_64 XLXI_67 (.CE(XLXN_2), 
                        .clk(clk), 
                        .D(wdata[63:0]), 
                        .Q(XLXN_35[63:0]));
   reg_file_64 XLXI_68 (.CE(XLXN_3), 
                        .clk(clk), 
                        .D(wdata[63:0]), 
                        .Q(XLXN_38[63:0]));
   reg_file_64 XLXI_69 (.CE(XLXN_4), 
                        .clk(clk), 
                        .D(wdata[63:0]), 
                        .Q(XLXN_39[63:0]));
endmodule
