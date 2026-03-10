module cpu #(
	parameter DATA_WIDTH = 64,
	parameter CTRL_WIDTH = DATA_WIDTH/8,
	parameter UDP_REG_SRC_WIDTH = 2
) (
      // --- data path interface
      input  [DATA_WIDTH-1:0]     in_data,                        
      input  [CTRL_WIDTH-1:0]     in_ctrl,                        
      input                  in_wr,                          
      output                 in_rdy,                         

      output [DATA_WIDTH-1:0]  out_data,                         
      output [CTRL_WIDTH-1:0]  out_ctrl,                         
      output                 out_wr,                           
      input                  out_rdy,                          

      // --- Register interface
      input                  reg_req_in,                      
      input                  reg_ack_in,                      
      input                  reg_rd_wr_L_in,                  
      input [`UDP_REG_ADDR_WIDTH-1:0]  reg_addr_in,                     
      input [`CPCI_NF2_DATA_WIDTH-1:0]  reg_data_in,                     
      input [UDP_REG_SRC_WIDTH-1:0] reg_src_in,                      

      output                 reg_req_out,                     
      output                 reg_ack_out,                     
      output                 reg_rd_wr_L_out,                 
      output [`UDP_REG_ADDR_WIDTH-1:0]  reg_addr_out,                   
      output [`CPCI_NF2_DATA_WIDTH-1:0] reg_data_out,                   
      output [UDP_REG_SRC_WIDTH-1:0] reg_src_out,                    
      

      // --- Misc
      input                  clk,                            
      input                  reset                          
);

// internal wires for register interface
// sw regs
wire [31:0] cpu_ctrl, dmem_data, dmem_addr, imem_data, imem_addr;

// hardware regs
wire [31:0] dmem_data_rd_lo, dmem_data_rd_hi,current_pc;
reg [31:0] cycle_counts;

//******************************************************************
//    Register Interface
//*****************************************************************

generic_regs #(
	.UDP_REG_SRC_WIDTH (UDP_REG_SRC_WIDTH),
	.TAG               (`CPU_BLOCK_ADDR),
	.REG_ADDR_WIDTH    (`CPU_REG_ADDR_WIDTH),
	.NUM_COUNTERS      (0),
	.NUM_SOFTWARE_REGS (5),
	.NUM_HARDWARE_REGS (4)
) module_reg (
	.reg_req_in(reg_req_in), .reg_ack_in(reg_ack_in), .reg_rd_wr_L_in(reg_rd_wr_L_in),
	.reg_addr_in(reg_addr_in), .reg_data_in(reg_data_in), .reg_src_in(reg_src_in),

	.reg_req_out(reg_req_out), .reg_ack_out(reg_ack_out), .reg_rd_wr_L_out(reg_rd_wr_L_out),
        .reg_addr_out(reg_addr_out), .reg_data_out(reg_data_out), .reg_src_out(reg_src_out),

	.software_regs ({cpu_ctrl, dmem_data, dmem_addr, imem_data, imem_addr }),
	.hardware_regs ({cycle_counts, dmem_data_rd_hi ,dmem_data_rd_lo, current_pc}),

	.clk(clk),
	.reset(reset)
);

//******************************************************************
//    Network Data Path Interface
//*****************************************************************
// Logic to detect start and end of packets
// In NetFPGA, in_ctrl != 0 indicates a header (start) or tail (end) word.
// For the convertible FIFO, we need to distinguish them.
reg in_packet;
always @(posedge clk) begin
    if (reset) in_packet <= 1'b0;
    else if (in_wr && in_ctrl != 0 && !in_packet) in_packet <= 1'b1;
    else if (in_wr && in_ctrl != 0 && in_packet)  in_packet <= 1'b0;
end

wire is_first = (in_wr && in_ctrl != 0 && !in_packet);
wire is_last  = (in_wr && in_ctrl != 0 && in_packet);

// Internal wires for processor output
wire [71:0] proc_out_72;
wire        proc_fifo_full;

// Backpressure: We are ready if the internal FIFO is not full
assign in_rdy = !proc_fifo_full;

// Output assignments: Split the 72-bit processor output back to NetFPGA format
assign out_data = proc_out_72[63:0];
assign out_ctrl = proc_out_72[71:64];


//******************************************************************
//    Actual CPU design
//*****************************************************************
wire [10:2] internal_pc;
wire cpu_internal_reset = reset | cpu_ctrl[0];
assign current_pc = {23'h0, internal_pc};

always @(posedge clk) begin
	if(cpu_internal_reset) begin
		cycle_counts <= 32'h0;
	end else begin
		cycle_counts <= cycle_counts + 1;
	end
end

ARM_Processor_4T processor (
	.CLK (clk),
	.CLR_ALL (cpu_internal_reset),
	.IM_CLR (cpu_internal_reset),
	.DIN (imem_data),
	.IM_WE (cpu_ctrl[1]),
	.ADDR (imem_addr[10:2]),
	
	// External Monitoring & Debug
	.EXT_DM_DIN({32'h0, dmem_data}), 
	.EXT_DM_ADDR(dmem_addr[7:0]),
	.EXT_DM_WEN(cpu_ctrl[2]),
	.EXT_DM_DATA({dmem_data_rd_hi, dmem_data_rd_lo}),
	.EXT_PC_OUT (internal_pc),

	// Network Interface
	.in_data({in_ctrl, in_data}),
	.in_wr_en(in_wr),
	.in_firstword(is_first),
	.in_lastword(is_last),
	.fifo_full(proc_fifo_full),
	.out_data(proc_out_72),
	.out_rd_en(out_rdy)
);



endmodule
