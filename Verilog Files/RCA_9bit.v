////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : RCA_9bit.vf
// /___/   /\     Timestamp : 02/17/2026 19:49:49
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "C:/Documents and Settings/student/Desktop/ARM_Processor/RCA_9bit.sch" RCA_9bit.vf
//Design Name: RCA_9bit
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module RCA_9bit(A, 
                B, 
                Cin, 
                Cout, 
                S);

    input [8:0] A;
    input [8:0] B;
    input Cin;
   output Cout;
   output [8:0] S;
   
   wire C3;
   wire XLXN_4;
   wire XLXN_5;
   wire XLXN_39;
   wire XLXN_40;
   wire XLXN_51;
   wire XLXN_54;
   wire XLXN_55;
   
   FA_1b XLXI_16 (.A(A[0]), 
                  .B(B[0]), 
                  .C(Cin), 
                  .CO(XLXN_4), 
                  .S(S[0]));
   FA_1b XLXI_25 (.A(A[1]), 
                  .B(B[1]), 
                  .C(XLXN_4), 
                  .CO(XLXN_5), 
                  .S(S[1]));
   FA_1b XLXI_26 (.A(A[2]), 
                  .B(B[2]), 
                  .C(XLXN_5), 
                  .CO(XLXN_54), 
                  .S(S[2]));
   FA_1b XLXI_27 (.A(A[3]), 
                  .B(B[3]), 
                  .C(XLXN_54), 
                  .CO(C3), 
                  .S(S[3]));
   FA_1b XLXI_28 (.A(A[5]), 
                  .B(B[5]), 
                  .C(XLXN_39), 
                  .CO(XLXN_40), 
                  .S(S[5]));
   FA_1b XLXI_29 (.A(A[6]), 
                  .B(B[6]), 
                  .C(XLXN_40), 
                  .CO(XLXN_51), 
                  .S(S[6]));
   FA_1b XLXI_30 (.A(A[7]), 
                  .B(B[7]), 
                  .C(XLXN_51), 
                  .CO(XLXN_55), 
                  .S(S[7]));
   FA_1b XLXI_31 (.A(A[8]), 
                  .B(B[8]), 
                  .C(XLXN_55), 
                  .CO(Cout), 
                  .S(S[8]));
   FA_1b XLXI_32 (.A(A[4]), 
                  .B(B[4]), 
                  .C(C3), 
                  .CO(XLXN_39), 
                  .S(S[4]));
endmodule
