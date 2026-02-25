`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:42:50 02/19/2026 
// Design Name: 
// Module Name:    Condition_Unit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Condition_Unit(
    input wire [1:0] BType,
	 input wire ALU_N,
    input wire ALU_Z,
    input wire ALU_C,
    input wire ALU_V,
    input wire set_flags,
	 input wire br_en,
	 input wire clk,
    input wire reset,
	 output wire branch_taken
    );

    reg N, Z, C, V;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            N <= 1'b0;
            Z <= 1'b0;
            C <= 1'b0;
            V <= 1'b0;
        end
        else if (set_flags) begin
            N <= ALU_N;
            Z <= ALU_Z;
            C <= ALU_C;
            V <= ALU_V;
        end
    end

    wire ge_condition = (N == V);
    wire le_condition = (Z == 1'b1) || (N != V);

    wire condition_result =
            (BType == 2'b01) ? 1'b1 :
            (BType == 2'b10) ? ge_condition :
            (BType == 2'b11) ? le_condition :
            1'b0;

    assign branch_taken = br_en & condition_result;

endmodule
