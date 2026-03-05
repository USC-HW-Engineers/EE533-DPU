`timescale 1ns / 1ps
module dmem (
    input         clk,
    input         we,
    input  [9:0]  addr,
    input  [63:0] w_data,
    output [63:0] r_data
);

    reg [63:0] mem [0:1023];

    initial $readmemh("data.hex", mem);

    always @(posedge clk) begin
        if (we) mem[addr] <= w_data;
    end

    reg [63:0] r_data_reg;
    always @(posedge clk) begin
        r_data_reg <= mem[addr];
    end

    assign r_data = r_data_reg;

endmodule
