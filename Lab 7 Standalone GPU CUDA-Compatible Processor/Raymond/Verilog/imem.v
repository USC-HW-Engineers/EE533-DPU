`timescale 1ns / 1ps
module imem (
    input         clk,
    input  [9:0]  addr,
    output [31:0] data
);

    reg [31:0] mem [0:1023];

    initial $readmemh("program.hex", mem);

    reg [31:0] data_reg;
    always @(posedge clk) begin
        data_reg <= mem[addr];
    end

    assign data = data_reg;

endmodule
