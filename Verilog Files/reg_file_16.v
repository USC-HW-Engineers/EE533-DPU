////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : reg_file_16.vf
// /___/   /\     Timestamp : 02/17/2026 19:49:49
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "C:/Documents and Settings/student/Desktop/ARM_Processor/reg_file_16.sch" reg_file_16.vf
//Design Name: reg_file_16
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module reg_file_16(C, 
                   CE, 
                   CLR, 
                   D, 
                   Q);

    input C;
    input CE;
    input CLR;
    input [15:0] D;
   output [15:0] Q;
   
   
   FDCE_1 XLXI_23 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[0]), 
                   .Q(Q[0]));
   defparam XLXI_23.INIT = 1'b0;
   FDCE_1 XLXI_24 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[1]), 
                   .Q(Q[1]));
   defparam XLXI_24.INIT = 1'b0;
   FDCE_1 XLXI_25 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[2]), 
                   .Q(Q[2]));
   defparam XLXI_25.INIT = 1'b0;
   FDCE_1 XLXI_26 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[3]), 
                   .Q(Q[3]));
   defparam XLXI_26.INIT = 1'b0;
   FDCE_1 XLXI_27 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[4]), 
                   .Q(Q[4]));
   defparam XLXI_27.INIT = 1'b0;
   FDCE_1 XLXI_28 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[5]), 
                   .Q(Q[5]));
   defparam XLXI_28.INIT = 1'b0;
   FDCE_1 XLXI_29 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[6]), 
                   .Q(Q[6]));
   defparam XLXI_29.INIT = 1'b0;
   FDCE_1 XLXI_30 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[7]), 
                   .Q(Q[7]));
   defparam XLXI_30.INIT = 1'b0;
   FDCE_1 XLXI_39 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[8]), 
                   .Q(Q[8]));
   defparam XLXI_39.INIT = 1'b0;
   FDCE_1 XLXI_40 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[9]), 
                   .Q(Q[9]));
   defparam XLXI_40.INIT = 1'b0;
   FDCE_1 XLXI_41 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[10]), 
                   .Q(Q[10]));
   defparam XLXI_41.INIT = 1'b0;
   FDCE_1 XLXI_42 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[11]), 
                   .Q(Q[11]));
   defparam XLXI_42.INIT = 1'b0;
   FDCE_1 XLXI_43 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[12]), 
                   .Q(Q[12]));
   defparam XLXI_43.INIT = 1'b0;
   FDCE_1 XLXI_44 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[13]), 
                   .Q(Q[13]));
   defparam XLXI_44.INIT = 1'b0;
   FDCE_1 XLXI_45 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[14]), 
                   .Q(Q[14]));
   defparam XLXI_45.INIT = 1'b0;
   FDCE_1 XLXI_46 (.C(C), 
                   .CE(CE), 
                   .CLR(CLR), 
                   .D(D[15]), 
                   .Q(Q[15]));
   defparam XLXI_46.INIT = 1'b0;
endmodule
