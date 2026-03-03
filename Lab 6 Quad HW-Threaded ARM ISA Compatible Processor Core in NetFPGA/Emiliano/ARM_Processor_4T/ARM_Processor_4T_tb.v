`timescale 1ns / 1ps

module ARM_Processor_4T_tb;

    // Inputs
    reg [8:0] ADDR;
    reg CLK;
    reg CLR_ALL;
    reg [31:0] DIN;
    reg IM_CLR;
    reg IM_WE;

    // Internal wires for monitoring (optional)
    // wire [8:0] pc = uut.PC;

    // Instantiate the Unit Under Test (UUT)
    ARM_Processor_4T uut (
        .ADDR(ADDR), 
        .CLK(CLK), 
        .CLR_ALL(CLR_ALL), 
        .DIN(DIN), 
        .IM_CLR(IM_CLR), 
        .IM_WE(IM_WE)
    );

    // Clock generation
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK; // 100MHz clock
    end

    // Test sequence
    initial begin
        // Initialize Inputs
        ADDR = 0;
        DIN = 0;
        IM_WE = 0;
        IM_CLR = 1;
        CLR_ALL = 1;

        // Wait for global reset
        #100;
        
        // --- Step 1: Load Instruction Memory ---
        // Note: In Xilinx ISE, you can also use .coe files for BRAM initialization.
        // This manual load uses the Port A interface we implemented.
        $display("Starting Instruction Memory Load...");
        
        // Example loading loop (pseudo-code, you should replace with your hex values)
        // Or simply use the Python-generated .coe file in your project.
        // For simulation, we can also use hierarchical force if needed, 
        // but here we use the actual hardware load path.
        
        IM_WE = 1;
        // Example: load a simple NOP loop or your bubble sort hex
        // Here we just clear the memory or load dummy data
        for (integer i = 0; i < 512; i = i + 1) begin
            @(posedge CLK);
            ADDR = i;
            DIN = 32'h00000000; // Load NOPs
        end
        
        // IMPORTANT: To load your actual machine code, you can use $readmemh 
        // into a temporary buffer and loop through it here.
        // reg [31:0] prog_buffer [0:511];
        // $readmemh("BubbleSort.hex", prog_buffer);
        // for(integer i=0; i<512; i=i+1) begin
        //    @(posedge CLK); ADDR = i; DIN = prog_buffer[i];
        // end

        @(posedge CLK);
        IM_WE = 0;
        $display("Instruction Memory Load Complete.");

        // --- Step 2: Release Resets ---
        #20;
        IM_CLR = 0;
        CLR_ALL = 0;
        $display("Processor Resets Released. Starting Execution...");

        // --- Step 3: Run Simulation ---
        // Run for a sufficient time for bubble sort to complete.
        // Bubble sort on 10 numbers is ~100 iterations, 
        // with 4 threads interleaved, we need many cycles.
        #50000; 

        // --- Step 4: Check Data Memory ---
        $display("Simulation Finished. Final Data Memory State:");
        dump_data_mem();

        $finish;
    end

    // Task to dump Data Memory contents via hierarchical probing
    // Note: The internal path 'uut.Data_Mem.inst.memory' depends on the BRAM IP model.
    // In ISE 10.1, it's often 'inst/native_mem_module.blk_mem_gen_vX_X_inst/memory'
    // You may need to check the 'D_Mem.v' generated source or use ISim to find the path.
    task dump_data_mem;
        begin
            $display("Address | Value");
            $display("----------------");
            // Assuming we check the stack area or where the array is stored (e.g. word 140)
            // Replace 'gen_mem' with the actual internal array name found in D_Mem
            /*
            for (integer i = 140; i < 150; i = i + 1) begin
                $display("%d | %h", i, uut.Data_Mem.inst.memory[i]);
            end
            */
            $display("Probing signals in MEM stage:");
            $display("M_ALU: %h, M_DM_OUT: %h", uut.M_ALU, uut.M_DM_OUT);
        end
    endtask

    // Monitor changes to see the threads interleaving
    initial begin
        $monitor("Time: %t | PC: %h | INS: %h | TID: %d", $time, uut.PC, uut.INS, uut.ID_TID);
    end

endmodule
