`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:11:07 02/18/2026 
// Design Name: 
// Module Name:    Sign_Extend_16to64 
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
module Sign_Extend_16to64(
    input [15:0] ext_in,
    output [63:0] ext_out
    );

assign ext_out = {{48{ext_in[15]}}, ext_in};

endmodule
