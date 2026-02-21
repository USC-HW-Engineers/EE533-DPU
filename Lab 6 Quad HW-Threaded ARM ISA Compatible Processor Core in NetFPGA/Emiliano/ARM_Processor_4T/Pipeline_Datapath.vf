////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : Pipeline_Datapath.vf
// /___/   /\     Timestamp : 02/21/2026 13:58:54
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "C:/Documents and Settings/student/Desktop/ARM_Processor_4T/Pipeline_Datapath.sch" Pipeline_Datapath.vf
//Design Name: Pipeline_Datapath
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module Pipeline_Datapath(ADDR, 
                         CLK, 
                         CLR_ALL, 
                         DIN, 
                         IM_CLR, 
                         IM_WE);

    input [8:0] ADDR;
    input CLK;
    input CLR_ALL;
    input [31:0] DIN;
    input IM_CLR;
    input IM_WE;
   
   wire [3:0] ALUAddr;
   wire [63:0] ALUB;
   wire C;
   wire [63:0] EX_ALU;
   wire EX_B;
   wire EX_BE;
   wire [1:0] EX_BType;
   wire EX_MemtoReg;
   wire [1:0] EX_TID;
   wire ID_ALUSrc;
   wire ID_Branch;
   wire ID_MemRead;
   wire ID_MemtoReg;
   wire ID_MemWrite;
   wire ID_RegWrite;
   wire [1:0] ID_TID;
   wire [31:0] IM_OUT;
   wire [31:0] INS;
   wire [63:0] M_ALU;
   wire M_B;
   wire M_MemR;
   wire M_MemtoReg;
   wire [63:0] M_OUT;
   wire [63:0] M_R2;
   wire M_WM;
   wire N;
   wire [8:0] PC;
   wire [63:0] R0_OUT;
   wire [63:0] R1_OUT;
   wire V;
   wire vdd;
   wire [3:0] WB_ADDR;
   wire [63:0] WB_ALU;
   wire [63:0] WB_Data;
   wire WB_MemtoReg;
   wire [63:0] WB_OUT;
   wire [1:0] WB_TID;
   wire WB_W;
   wire [63:0] XLXN_426;
   wire [63:0] XLXN_428;
   wire XLXN_437;
   wire XLXN_457;
   wire XLXN_458;
   wire XLXN_460;
   wire XLXN_541;
   wire [63:0] XLXN_561;
   wire [11:0] XLXN_598;
   wire [3:0] XLXN_602;
   wire [3:0] XLXN_603;
   wire XLXN_645;
   wire XLXN_646;
   wire XLXN_647;
   wire XLXN_648;
   wire [1:0] XLXN_814;
   wire Z;
   
   VCC XLXI_72 (.P(vdd));
   Mux2_1_64b XLXI_134 (.D0(XLXN_426[63:0]), 
                        .D1(XLXN_428[63:0]), 
                        .S(XLXN_437), 
                        .O(ALUB[63:0]));
   Mux2_1_64b XLXI_151 (.D0(WB_ALU[63:0]), 
                        .D1(WB_OUT[63:0]), 
                        .S(WB_MemtoReg), 
                        .O(WB_Data[63:0]));
   Control_Unit XLXI_168 (.OP(INS[31:28]), 
                          .ALUSrc(ID_ALUSrc), 
                          .Branch(ID_Branch), 
                          .MemRead(ID_MemRead), 
                          .MemtoReg(ID_MemtoReg), 
                          .MemWrite(ID_MemWrite), 
                          .RegWrite(ID_RegWrite));
   ALU XLXI_174 (.A(XLXN_561[63:0]), 
                 .aluctrl(ALUAddr[3:0]), 
                 .B(ALUB[63:0]), 
                 .ALU_Result(EX_ALU[63:0]), 
                 .C(C), 
                 .N(N), 
                 .V(V), 
                 .Z(Z));
   Sign_Extend_12to64 XLXI_175 (.ext_in(XLXN_598[11:0]), 
                                .ext_out(XLXN_428[63:0]));
   D_Mem XLXI_177 (.addra(M_ALU[7:0]), 
                   .addrb(M_ALU[7:0]), 
                   .clka(CLK), 
                   .clkb(CLK), 
                   .dina(M_R2[63:0]), 
                   .enb(M_MemR), 
                   .wea(M_WM), 
                   .doutb(M_OUT[63:0]));
   I_Mem_Dual XLXI_182 (.addra(ADDR[8:0]), 
                        .addrb(PC[8:0]), 
                        .clka(CLK), 
                        .clkb(CLK), 
                        .dina(DIN[31:0]), 
                        .wea(IM_WE), 
                        .doutb(IM_OUT[31:0]));
   Condition_Unit XLXI_185 (.br_en(EX_BE), 
                            .BType(EX_BType[1:0]), 
                            .C(XLXN_647), 
                            .N(XLXN_645), 
                            .V(XLXN_648), 
                            .Z(XLXN_646), 
                            .branch_taken(EX_B));
   IF_ID_Reg XLXI_192 (.CE(vdd), 
                       .CLK(CLK), 
                       .CLR(CLR_ALL), 
                       .IF_Ins(IM_OUT[31:0]), 
                       .IF_TID(PC[8:7]), 
                       .ID_Ins(INS[31:0]), 
                       .ID_TID(ID_TID[1:0]));
   ID_EX_Reg XLXI_194 (.CE(vdd), 
                       .CLK(CLK), 
                       .CLR(CLR_ALL), 
                       .ID_Addr(INS[15:12]), 
                       .ID_ALUC(INS[27:24]), 
                       .ID_ALUD(INS[11:0]), 
                       .ID_ALUSrc(ID_ALUSrc), 
                       .ID_B(ID_Branch), 
                       .ID_BT(INS[19:18]), 
                       .ID_MemR(ID_MemRead), 
                       .ID_MemW(ID_MemWrite), 
                       .ID_M2Reg(ID_MemtoReg), 
                       .ID_RegW(ID_RegWrite), 
                       .ID_R1(R0_OUT[63:0]), 
                       .ID_R2(R1_OUT[63:0]), 
                       .ID_TID(ID_TID[1:0]), 
                       .EX_Addr(XLXN_602[3:0]), 
                       .EX_ALUC(ALUAddr[3:0]), 
                       .EX_ALUD(XLXN_598[11:0]), 
                       .EX_ALUSrc(XLXN_437), 
                       .EX_B(EX_BE), 
                       .EX_BT(EX_BType[1:0]), 
                       .EX_MemR(XLXN_458), 
                       .EX_MemW(XLXN_457), 
                       .EX_M2Reg(EX_MemtoReg), 
                       .EX_RegW(XLXN_460), 
                       .EX_R1(XLXN_561[63:0]), 
                       .EX_R2(XLXN_426[63:0]), 
                       .EX_TID(EX_TID[1:0]));
   Flag_Reg_4 XLXI_195 (.CLK(CLK), 
                        .CLR(CLR_ALL), 
                        .C_in(C), 
                        .ID(EX_TID[1:0]), 
                        .N_in(N), 
                        .V_in(V), 
                        .Z_in(Z), 
                        .C_out(XLXN_647), 
                        .N_out(XLXN_645), 
                        .V_out(XLXN_648), 
                        .Z_out(XLXN_646));
   PCL_7b_4 XLXI_215 (.CLK(CLK), 
                      .CLR(IM_CLR), 
                      .D(M_ALU[6:0]), 
                      .ID(PC[8:7]), 
                      .L(M_B), 
                      .Q(PC[6:0]));
   Counter_2b XLXI_217 (.CE(vdd), 
                        .CLK(CLK), 
                        .CLR(IM_CLR), 
                        .TC(), 
                        .T_ID(PC[8:7]));
   EX_M_Reg XLXI_219 (.CE(vdd), 
                      .CLK(CLK), 
                      .CLR(CLR_ALL), 
                      .EX_Addr(XLXN_602[3:0]), 
                      .EX_ALU(EX_ALU[63:0]), 
                      .EX_B(EX_B), 
                      .EX_ID(EX_TID[1:0]), 
                      .EX_MemR(XLXN_458), 
                      .EX_MemW(XLXN_457), 
                      .EX_M2Reg(EX_MemtoReg), 
                      .EX_RegW(XLXN_460), 
                      .EX_R2(XLXN_426[63:0]), 
                      .M_Addr(XLXN_603[3:0]), 
                      .M_ALU(M_ALU[63:0]), 
                      .M_B(M_B), 
                      .M_ID(XLXN_814[1:0]), 
                      .M_MemR(M_MemR), 
                      .M_MemW(M_WM), 
                      .M_M2Reg(M_MemtoReg), 
                      .M_RegW(XLXN_541), 
                      .M_R2(M_R2[63:0]));
   M_WB_Reg XLXI_220 (.CE(vdd), 
                      .CLK(CLK), 
                      .CLR(CLR_ALL), 
                      .M_Addr(XLXN_603[3:0]), 
                      .M_ALU(M_ALU[63:0]), 
                      .M_Data(M_OUT[63:0]), 
                      .M_ID(XLXN_814[1:0]), 
                      .M_M2Reg(M_MemtoReg), 
                      .M_RegW(XLXN_541), 
                      .WB_Addr(WB_ADDR[3:0]), 
                      .WB_ALU(WB_ALU[63:0]), 
                      .WB_Data(WB_OUT[63:0]), 
                      .WB_ID(WB_TID[1:0]), 
                      .WB_M2Reg(WB_MemtoReg), 
                      .WB_RegW(WB_W));
   Register_File_BRAM XLXI_222 (.clk(CLK), 
                                .R_ID(ID_TID[1:0]), 
                                .r0addr(INS[23:20]), 
                                .r1addr(INS[19:16]), 
                                .waddr(WB_ADDR[3:0]), 
                                .wdata(WB_Data[63:0]), 
                                .wena(WB_W), 
                                .W_ID(WB_TID[1:0]), 
                                .r0data(R0_OUT[63:0]), 
                                .r1data(R1_OUT[63:0]));
endmodule
