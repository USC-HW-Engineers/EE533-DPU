// Convertible FIFO Module
// Designed for EE 533 Lab 8
// Integrates NetFPGA pipeline and ARM-compatible processor access
// Instantiates True Dual Port RAM IP Core (FIFO.v)

`timescale 1ns / 1ps

module convertible_fifo(
    input clk,
    input rst,

    // --- Network FPGA Interface ---
    // Input Port (from Reference Pipeline)
    input [71:0] in_data,
    input in_wr_en,
    input in_firstword,
    input in_lastword,
    output fifo_full,

    // Output Port (to Reference Pipeline)
    output [71:0] out_data,
    input out_rd_en,

    // --- Processor (CPU/GPU) Interface ---
    input mode_select,         // 0: Network Mode, 1: Processor Mode
    
    // CPU Port A Access
    input [7:0] cpu_addr_a,
    input [71:0] cpu_data_in_a,
    input cpu_we_a,
    output [71:0] cpu_data_out_a,

    // CPU Port B Access
    input [7:0] cpu_addr_b,
    input [71:0] cpu_data_in_b,
    input cpu_we_b,
    output [71:0] cpu_data_out_b,

    // Pointer Management
    input [7:0] cpu_head_ptr_in,
    input [7:0] cpu_tail_ptr_in,
    input cpu_ptr_we,
    output [7:0] head_ptr_val,
    output [7:0] tail_ptr_val,

    // Control Signals
    output packet_ready,
    input cpu_packet_done      // Signal from CPU that processing/sending is complete
);

    // Internal Pointers
    reg [7:0] head_ptr;
    reg [7:0] tail_ptr;
    reg packet_in_fifo;

    // Head/Tail Pointer Logic
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            head_ptr <= 8'b0;
            tail_ptr <= 8'b0;
            packet_in_fifo <= 1'b0;
        end else begin
            if (cpu_ptr_we) begin
                head_ptr <= cpu_head_ptr_in;
                tail_ptr <= cpu_tail_ptr_in;
            end else if (mode_select == 1'b0) begin
                // Network Mode: Traditional FIFO movement
                if (in_wr_en && !fifo_full) begin
                    tail_ptr <= tail_ptr + 1'b1;
                    if (in_lastword)
                        packet_in_fifo <= 1'b1;
                end
                
                if (out_rd_en) begin
                    head_ptr <= head_ptr + 1'b1;
                end
            end
            
            // Clear packet flag when CPU signals done
            if (cpu_packet_done) begin
                packet_in_fifo <= 1'b0;
            end
        end
    end

    // Signal logic
    assign packet_ready = packet_in_fifo;
    assign fifo_full = packet_in_fifo; // Stall input once one packet is buffered
    assign head_ptr_val = head_ptr;
    assign tail_ptr_val = tail_ptr;

    // Memory Port Multiplexers
    wire [7:0] mem_addr_a;
    wire [7:0] mem_addr_b;
    wire [71:0] mem_data_in_a;
    wire [71:0] mem_data_in_b;
    wire mem_we_a;
    wire mem_we_b;

    // Address and Data Muxes
    // Port A: Input from Network OR CPU Access A
    assign mem_addr_a    = (mode_select) ? cpu_addr_a : tail_ptr;
    assign mem_data_in_a = (mode_select) ? cpu_data_in_a : in_data;
    assign mem_we_a      = (mode_select) ? cpu_we_a : (in_wr_en && !fifo_full);

    // Port B: Output to Network OR CPU Access B
    assign mem_addr_b    = (mode_select) ? cpu_addr_b : head_ptr;
    assign mem_data_in_b = (mode_select) ? cpu_data_in_b : 72'b0; 
    assign mem_we_b      = (mode_select) ? cpu_we_b : 1'b0;

    // Output Data
    assign out_data = cpu_data_out_b; // Port B is the default network exit

    // Instantiate Xilinx IP Core (True Dual Port)
    FIFO mem_inst (
        .clka(clk),
        .clkb(clk),
        .addra(mem_addr_a),
        .addrb(mem_addr_b),
        .dina(mem_data_in_a),
        .dinb(mem_data_in_b),
        .douta(cpu_data_out_a),
        .doutb(cpu_data_out_b),
        .wea(mem_we_a),
        .web(mem_we_b)
    );

endmodule
