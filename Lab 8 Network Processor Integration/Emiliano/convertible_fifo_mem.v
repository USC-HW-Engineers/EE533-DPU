// Convertible FIFO Memory Module
// 256 x 72-bit True Dual Port RAM
// Designed for EE 533 Lab 8

`timescale 1ns / 1ps

module convertible_fifo_mem(
    input clka,
    input clkb,
    input [7:0] addra,
    input [7:0] addrb,
    input [71:0] dina,
    input [71:0] dinb,
    input wea,
    input web,
    output reg [71:0] douta,
    output reg [71:0] doutb
);

    // BRAM storage
    reg [71:0] ram [255:0];

    // Port A
    always @(posedge clka) begin
        if (wea)
            ram[addra] <= dina;
        douta <= ram[addra];
    end

    // Port B
    always @(posedge clkb) begin
        if (web)
            ram[addrb] <= dinb;
        doutb <= ram[addrb];
    end

endmodule
