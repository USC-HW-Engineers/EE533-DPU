`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:59:37 02/12/2026
// Design Name:   ALU
// Module Name:   C:/Xilinx/10.1/ISE/ISEexamples/lab5/ALU_tb.v
// Project Name:  lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	reg clk;
	reg [63:0] A;
	reg [63:0] B;
	reg [3:0] aluctrl;

	// Outputs
	wire [63:0] Z;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.clk(clk), 
		.A(A), 
		.B(B), 
		.aluctrl(aluctrl), 
		.Z(Z), 
		.overflow(overflow)
	);
	
	initial clk = 0;
	always #5 clk = ~clk;

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		aluctrl = 0;

		// Wait 100 ns for global reset to finish
		
		@(posedge clk);
        
		// Add stimulus here
		// Test ADD
        A = 10;
        B = 5;
        aluctrl = 4'b0000;
        @(posedge clk);

        // Test SUB
        A = 20;
        B = 8;
        aluctrl = 4'b0001;
        @(posedge clk);

        // Test AND
        A = 64'hF0F0;
        B = 64'h0FF0;
        aluctrl = 4'b0010;
        @(posedge clk);

        // Test OR
        aluctrl = 4'b0011;
        @(posedge clk);

        // Test Shift Left
        A = 4;
        B = 2;
        aluctrl = 4'b0110;
        @(posedge clk);

        // Test Shift Right
        aluctrl = 4'b0111;
        @(posedge clk);

        // Test Arithmetic Shift Right
        A = -8;
        B = 2;
        aluctrl = 4'b1000;
        @(posedge clk);
		  
		  // Test compare equal True
		  A = 25;
		  B = 25;
		  aluctrl = 4'b1001;
		  @(posedge clk);
		  
		  // Test compare equal False
		  A = 25;
		  B = 30;
		  aluctrl = 4'b1001;
		  @(posedge clk);
		  
		  // Test compare less than True
		  A = 5;
		  B = 15;
		  aluctrl = 4'b1010;
		  @(posedge clk);
		  
		  // Test compare less than  False
		  A = 25;
		  B = 5;
		  aluctrl = 4'b1010;
		  @(posedge clk);
		  
		  // Test compare greater than False
		  A = 2;
		  B = 10;
		  aluctrl = 4'b1011;
		  @(posedge clk);
		  
		  // Test compare greater than True
		  A = 15;
		  B = 5;
		  aluctrl = 4'b1011;
		  @(posedge clk);
		  
		  
		  $stop;

	end
      
endmodule

