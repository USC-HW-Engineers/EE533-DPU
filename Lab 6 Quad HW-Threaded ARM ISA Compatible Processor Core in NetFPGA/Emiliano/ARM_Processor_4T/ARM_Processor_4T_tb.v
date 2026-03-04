`timescale 1ns / 1ps

module ARM_Processor_4T_tb;

    // Inputs
    reg [10:2] ADDR;
    reg CLK;
    reg CLR_ALL;
    reg [31:0] DIN;
    reg IM_CLR;
    reg IM_WE;

    // Internal wires for monitoring (optional)
    // wire [10:2] pc = uut.PC;

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
        $display("[%t] Starting Instruction Memory Load from hex file...", $time);
        
        IM_WE = 1;
        begin: IM_LOAD
            integer i;
            reg [31:0] prog_buffer [0:511];
            // Initialize buffer to NOPs first
            for (i = 0; i < 512; i = i + 1) prog_buffer[i] = 32'h00000000;
            
            // Load the machine code from the Toolkit directory
            $readmemh("../Toolkit/newSort_Manual2.hex", prog_buffer);
            
            for (i = 0; i < 512; i = i + 1) begin
                @(posedge CLK);
                ADDR = i;
                DIN = prog_buffer[i];
            end
        end        

        @(posedge CLK);
        IM_WE = 0;
        $display("[%t] Instruction Memory Load Complete.", $time);

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
    task dump_data_mem;
        integer i;
        begin
            $display("--- Data Memory Dump (First 32 Words) ---");
            $display("Word Addr | Value");
            $display("-------------------------");
            for (i = 0; i < 32; i = i + 1) begin
                // For BLKMEMDP_V6_3 simulation models, the internal array is usually 'mem'.
                // If this results in an error, try 'memory' or use the ISim hierarchy viewer to find the exact path.
                $display("%d | %h", i, uut.Data_Mem.inst.mem[i]);
            end
            $display("-------------------------");
            $display("Current MEM Stage Probe:");
            $display("M_ALU (Addr): %h | M_DM_OUT (Data): %h", uut.M_ALU, uut.M_DM_OUT);
        end
    endtask

    // Monitor changes to see the threads interleaving
    initial begin
        $monitor("Time: %t | PC: %h | INS: %h | TID: %d", $time, uut.PC, uut.INS, uut.ID_TID);
    end

endmodule
