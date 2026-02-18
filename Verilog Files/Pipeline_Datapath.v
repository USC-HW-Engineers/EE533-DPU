////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : Pipeline_Datapath.vf
// /___/   /\     Timestamp : 02/13/2026 13:18:07
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "C:/Documents and Settings/student/Desktop/5_Stage_Pipeline/Pipeline_Datapath.sch" Pipeline_Datapath.vf
//Design Name: Pipeline_Datapath
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module Pipeline_Datapath(B, 
                         CLK, 
                         CLR_ALL, 
                         DIN, 
                         IM_CLR, 
                         IM_WE);

    input [8:0] B;
    input CLK;
    input CLR_ALL;
    input [31:0] DIN;
    input IM_CLR;
    input IM_WE;
   
   wire [63:0] EX_R1;
   wire [63:0] EX_R2;
   wire [63:0] ID_R1;
   wire [63:0] ID_R2;
   wire [31:0] IM_OUT;
   wire [31:0] INS;
   wire [63:0] M_OUT;
   wire [63:0] M_R1;
   wire [63:0] M_R2;
   wire M_WM;
   wire [8:0] PC;
   wire vdd;
   wire [1:0] WB_ADDR;
   wire [63:0] WB_DATA;
   wire WB_WRITE;
   wire [8:0] XLXN_81;
   wire XLXN_160;
   wire XLXN_161;
   wire [1:0] XLXN_164;
   wire XLXN_191;
   wire [1:0] XLXN_192;
   
   I_Mem XLXI_1 (.addr(PC[8:0]), 
                 .clk(CLK), 
                 .din(DIN[31:0]), 
                 .we(IM_WE), 
                 .dout(IM_OUT[31:0]));
   Register_File_16b XLXI_4 (.clk(CLK), 
                             .r0addr(INS[28:27]), 
                             .r1addr(INS[25:24]), 
                             .waddr(WB_ADDR[1:0]), 
                             .wdata(WB_DATA[63:0]), 
                             .wena(WB_WRITE), 
                             .r0data(ID_R2[63:0]), 
                             .r1data(ID_R1[63:0]));
   D_Mem XLXI_32 (.addra(M_R1[7:0]), 
                  .addrb(M_R1[7:0]), 
                  .clka(CLK), 
                  .clkb(CLK), 
                  .dinb(M_R2[63:0]), 
                  .web(M_WM), 
                  .douta(M_OUT[63:0]));
   adder_9bit XLXI_66 (.A(PC[8:0]), 
                       .B(B[8:0]), 
                       .Cin(vdd), 
                       .Cout(), 
                       .S(XLXN_81[8:0]));
   VCC XLXI_72 (.P(vdd));
   ID_EX_Reg XLXI_74 (.CE(vdd), 
                      .CLK(CLK), 
                      .CLR(CLR_ALL), 
                      .ID_REG1(INS[22:21]), 
                      .ID_R1(ID_R1[63:0]), 
                      .ID_R2(ID_R2[63:0]), 
                      .ID_WME(INS[31]), 
                      .ID_WRE(INS[30]), 
                      .EX_REG1(XLXN_164[1:0]), 
                      .EX_R1(EX_R1[63:0]), 
                      .EX_R2(EX_R2[63:0]), 
                      .EX_WME(XLXN_160), 
                      .EX_WRE(XLXN_161));
   ID_EX_Reg XLXI_75 (.CE(vdd), 
                      .CLK(CLK), 
                      .CLR(CLR_ALL), 
                      .ID_REG1(XLXN_164[1:0]), 
                      .ID_R1(EX_R1[63:0]), 
                      .ID_R2(EX_R2[63:0]), 
                      .ID_WME(XLXN_160), 
                      .ID_WRE(XLXN_161), 
                      .EX_REG1(XLXN_192[1:0]), 
                      .EX_R1(M_R1[63:0]), 
                      .EX_R2(M_R2[63:0]), 
                      .EX_WME(M_WM), 
                      .EX_WRE(XLXN_191));
   EX_WB_Reg XLXI_80 (.CE(vdd), 
                      .CLK(CLK), 
                      .CLR(CLR_ALL), 
                      .EX_DOUT(M_OUT[63:0]), 
                      .EX_REG1(XLXN_192[1:0]), 
                      .EX_WRE(XLXN_191), 
                      .WB_DOUT(WB_DATA[63:0]), 
                      .WB_REG1(WB_ADDR[1:0]), 
                      .WB_WRE(WB_WRITE));
   ifd9 XLXI_84 (.CLK(CLK), 
                 .CLR(IM_CLR), 
                 .D(XLXN_81[8:0]), 
                 .Q(PC[8:0]));
   ifd32 XLXI_86 (.CE(vdd), 
                  .CLK(CLK), 
                  .CLR(CLR_ALL), 
                  .D(IM_OUT[31:0]), 
                  .Q(INS[31:0]));
endmodule
