`timescale 1ns / 1ps

module ALU (
    input              clk,
    input      [63:0]  A,
    input      [63:0]  B,
    input      [3:0]   aluctrl,
    output reg [63:0]  Z,
    output reg         overflow
);


    reg [63:0] result;
    reg ovf;


    always @(*) begin
        result = 64'b0;
        ovf    = 1'b0;

        case (aluctrl)

            4'b0000: begin   // ADD
                result = A + B;
                ovf = (A[63] & B[63] & ~result[63]) |
                      (~A[63] & ~B[63] & result[63]);
            end

            4'b0001: begin   // SUB
                result = A - B;
                ovf = (A[63] & ~B[63] & ~result[63]) |
                      (~A[63] & B[63] & result[63]);
            end

            4'b0010: result = A & B;        // AND
            4'b0011: result = A | B;        // OR
            4'b0100: result = A ^ B;        // XOR
            4'b0101: result = ~(A ^ B);     // XNOR

            4'b0110: result = A << B[5:0];  // Logical Shift Left
            4'b0111: result = A >> B[5:0];  // Logical Shift Right
            4'b1000: result = $signed(A) >>> B[5:0]; // Arithmetic Shift Right
				
				4'b1001: begin   // COMPARE EQUAL
							 if (A == B)
								  result = 64'd1;
							 else
								  result = 64'd0;
						end

						4'b1010: begin   // COMPARE LESS THAN (signed)
							 if ($signed(A) < $signed(B))
								  result = 64'd1;
							 else
								  result = 64'd0;
						end

						4'b1011: begin   // COMPARE GREATER THAN (signed)
							 if ($signed(A) > $signed(B))
								  result = 64'd1;
							 else
								  result = 64'd0;
						end


            default: result = 64'b0;

        endcase
    end

  
    always @(posedge clk) begin
        Z        <= result;
        overflow <= ovf;
    end

endmodule
