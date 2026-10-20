`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:38:27 10/19/2026 
// Design Name: 
// Module Name:    Z_Reg_4 
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
module Z_Reg_4(
	input wire CLK,
	input wire CLR,
	input wire Z_in,
	input wire [1:0] EX_TID,
	input wire [1:0] M_TID,
	output wire Z_out);
	
	reg[3:0] z;
	
	always @(posedge CLK or posedge CLR) begin
		if (CLR)
			z <= 0;
		else
			z[M_TID] <= Z_in;
	end

	assign Z_out = z[EX_TID];

endmodule
