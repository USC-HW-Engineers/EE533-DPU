`timescale 1ns / 1ps

module ARM_Processor_4T(
    input  [10:2] ADDR,
    input         CLK,
    input         CLR_ALL,
    input  [31:0] DIN,
    input         IM_CLR,
    input         IM_WE,
    input  [63:0] EXT_DM_DIN,
    input  [7:0]  EXT_DM_ADDR,
    input         EXT_DM_WEN,
    output [63:0] EXT_DM_DATA,
    output [10:2] EXT_PC_OUT
);

    // --- Wire Declarations ---
    wire vdd;
    assign vdd = 1'b1;
    
    // Instruction Fetch (IF) Stage
    wire [10:2] PC;
    wire [31:0] IM_OUT;
    
    assign EXT_PC_OUT = PC;
    
    // IF/ID Pipeline Register Outputs
    wire [31:0] INS;
    wire [1:0]  ID_TID;
    
    // ID Stage Control & Data Wires
    wire        ID_ALUSrc;
    wire        ID_Branch;
    wire        ID_MemRead;
    wire        ID_MemtoReg;
    wire        ID_MemWrite;
    wire        ID_RegWrite;
    wire [63:0] R0_OUT;
    wire [63:0] R1_OUT;
    
    // ID/EX Pipeline Register Outputs
    wire [3:0]  EX_RegAddr;
    wire [3:0]  ALUAddr;
    wire [11:0] EX_Imm12;
    wire        EX_ALUSrc;
    wire        EX_BE;       // Branch enable signal from control
    wire [1:0]  EX_BType;    // Branch condition type
    wire        EX_MemRead;
    wire        EX_MemWrite;
    wire        EX_MemtoReg;
    wire        EX_RegWrite;
    wire [63:0] EX_R1;
    wire [63:0] EX_R2;
    wire [1:0]  EX_TID;
    
    // EX Stage Execution Wires
    wire [63:0] EX_Imm64;
    wire [63:0] ALUB;
    wire [63:0] EX_ALU_Res;
    wire        ALU_C, ALU_N, ALU_V, ALU_Z;
    wire        Flag_C, Flag_N, Flag_V, Flag_Z;
    wire        EX_BranchTaken; // Signal to PC logic
    
    // EX/MEM Pipeline Register Outputs
    wire [3:0]  M_RegAddr;
    wire [63:0] M_ALU;
    wire        M_BranchTaken;
    wire [1:0]  M_TID;
    wire        M_MemRead_MemStage;
    wire        M_MemWrite_MemStage;
    wire        M_MemtoReg_MemStage;
    wire        M_RegWrite_MemStage;
    wire [63:0] M_R2;
    
    // MEM Stage Memory Output
    wire [63:0] M_DM_OUT;
    wire [31:0] M_IM_OUT;
    wire [63:0] M_FINAL_OUT;
    
    // Virtual Memory Mapping: Use M_ALU[11] to select between IM (0) and DM (1)
    // IM is 512 words (byte addr 0-2047), DM is 256 words (byte addr 2048-3071)
    assign M_FINAL_OUT = (M_ALU[11] == 1'b0) ? {32'b0, M_IM_OUT} : M_DM_OUT;
    
    // MEM/WB Pipeline Register Outputs
    wire [3:0]  WB_ADDR;
    wire [63:0] WB_ALU;
    wire [63:0] WB_OUT;
    wire [1:0]  WB_TID;
    wire        WB_MemtoReg;
    wire        WB_W;
    
    // WB Stage Final Data
    wire [63:0] WB_Data;

    // External DM access muxes
    wire [7:0]  final_dm_addr       = (EXT_DM_WEN) ? EXT_DM_ADDR : M_ALU[9:2];
    wire [63:0] final_dm_data       = (EXT_DM_WEN) ? EXT_DM_DIN  : M_R2;
    wire        final_dm_wen        = (EXT_DM_WEN) ? EXT_DM_WEN  : M_MemWrite_MemStage;
    wire [7:0]  final_dm_read_addr  = (CLR_ALL)    ? EXT_DM_ADDR : M_ALU[9:2];
    wire        final_dm_read_en    = (CLR_ALL)    ? 1'b1        : M_MemRead_MemStage;

    assign EXT_DM_DATA = M_DM_OUT;

    // --- Pipeline Implementation ---

    // 1. Instruction Memory & PC Logic (IF Stage)
    I_Mem_Dual Inst_Mem (
        .addra(IM_WE ? ADDR : M_ALU[10:2]), // Use [10:2] to access 512 words of IM via byte addresses
        .addrb(PC),
        .clka(CLK),
        .clkb(CLK),
        .dina(DIN),
        .douta(M_IM_OUT),
        .doutb(IM_OUT),
        .wea(IM_WE)
    );

    Counter_2b Thread_Counter (
        .CE(vdd),
        .CLK(CLK),
        .CLR(IM_CLR),
        .T_ID(PC[10:9])
    );

    PCL_7b_4 PC_Logic (
        .CLK(CLK),
        .CLR(IM_CLR),
        .D(M_ALU[8:2]),  // Translate byte-aligned branch target to word-aligned PC
        .ID(PC[10:9]),
        .L(M_BranchTaken),
        .Q(PC[8:2])
    );

    // 2. IF/ID Pipeline Register
    IF_ID_Reg IF_ID_PR (
        .CE(vdd),
        .CLK(CLK),
        .CLR(CLR_ALL),
        .IF_Ins(IM_OUT),
        .IF_TID(PC[10:9]),
        .ID_Ins(INS),
        .ID_TID(ID_TID)
    );

    // 3. Instruction Decode (ID) Stage
    Control_Unit Control (
        .OP(INS[31:28]),
        .ALUSrc(ID_ALUSrc),
        .Branch(ID_Branch),
        .MemRead(ID_MemRead),
        .MemtoReg(ID_MemtoReg),
        .MemWrite(ID_MemWrite),
        .RegWrite(ID_RegWrite)
    );

    Register_File_BRAM Reg_File (
        .clk(CLK),
        .R_ID(ID_TID),
        .r0addr(INS[23:20]),
        .r1addr(INS[19:16]),
        .waddr(WB_ADDR),
        .wdata(WB_Data),
        .wena(WB_W),
        .W_ID(WB_TID),
        .r0data(R0_OUT),
        .r1data(R1_OUT)
    );

    // 4. ID/EX Pipeline Register
    ID_EX_Reg ID_EX_PR (
        .CE(vdd),
        .CLK(CLK),
        .CLR(CLR_ALL),
        .ID_Addr(INS[15:12]),
        .ID_ALUC(INS[27:24]),
        .ID_ALUD(INS[11:0]),
        .ID_ALUSrc(ID_ALUSrc),
        .ID_B(ID_Branch),
        .ID_BT(INS[19:18]),
        .ID_MemR(ID_MemRead),
        .ID_MemW(ID_MemWrite),
        .ID_M2Reg(ID_MemtoReg),
        .ID_RegW(ID_RegWrite),
        .ID_R1(R0_OUT),
        .ID_R2(R1_OUT),
        .ID_TID(ID_TID),
        .EX_Addr(EX_RegAddr),
        .EX_ALUC(ALUAddr),
        .EX_ALUD(EX_Imm12),
        .EX_ALUSrc(EX_ALUSrc),
        .EX_B(EX_BE),
        .EX_BT(EX_BType),
        .EX_MemR(EX_MemRead),
        .EX_MemW(EX_MemWrite),
        .EX_M2Reg(EX_MemtoReg),
        .EX_RegW(EX_RegWrite),
        .EX_R1(EX_R1),
        .EX_R2(EX_R2),
        .EX_TID(EX_TID)
    );

    // 5. Execution (EX) Stage
    Sign_Extend_12to64 Imm_Ext (
        .ext_in(EX_Imm12),
        .ext_out(EX_Imm64)
    );

    Mux2_1_64b ALU_Src_Mux (
        .D0(EX_R2),
        .D1(EX_Imm64),
        .S(EX_ALUSrc),
        .O(ALUB)
    );

    ALU Main_ALU (
        .A(EX_R1),
        .aluctrl(ALUAddr),
        .B(ALUB),
        .ALU_Result(EX_ALU_Res),
        .C(ALU_C),
        .N(ALU_N),
        .V(ALU_V),
        .Z(ALU_Z)
    );

    Flag_Reg_4 Flags (
        .CLK(CLK),
        .CLR(CLR_ALL),
        .C_in(ALU_C),
        .ID(EX_TID),
        .N_in(ALU_N),
        .V_in(ALU_V),
        .Z_in(ALU_Z),
        .C_out(Flag_C),
        .N_out(Flag_N),
        .V_out(Flag_V),
        .Z_out(Flag_Z)
    );

    Condition_Unit Branch_Unit (
        .br_en(EX_BE),
        .BType(EX_BType),
        .C(Flag_C),
        .N(Flag_N),
        .V(Flag_V),
        .Z(Flag_Z),
        .branch_taken(EX_BranchTaken)
    );

    // 6. EX/MEM Pipeline Register
    EX_M_Reg EX_MEM_PR (
        .CE(vdd),
        .CLK(CLK),
        .CLR(CLR_ALL),
        .EX_Addr(EX_RegAddr),
        .EX_ALU(EX_ALU_Res),
        .EX_B(EX_BranchTaken),
        .EX_ID(EX_TID),
        .EX_MemR(EX_MemRead),
        .EX_MemW(EX_MemWrite),
        .EX_M2Reg(EX_MemtoReg),
        .EX_RegW(EX_RegWrite),
        .EX_R2(EX_R2),
        .M_Addr(M_RegAddr),
        .M_ALU(M_ALU),
        .M_B(M_BranchTaken),
        .M_ID(M_TID),
        .M_MemR(M_MemRead_MemStage),
        .M_MemW(M_MemWrite_MemStage),
        .M_M2Reg(M_MemtoReg_MemStage),
        .M_RegW(M_RegWrite_MemStage),
        .M_R2(M_R2)
    );

    // 7. Memory (MEM) Stage
    D_Mem Data_Mem (
        .addra(final_dm_addr),
        .addrb(final_dm_read_addr),
        .clka(CLK),
        .clkb(CLK),
        .dina(final_dm_data),
        .enb(final_dm_read_en),
        .wea(final_dm_wen),
        .doutb(M_DM_OUT)
    );

    // 8. MEM/WB Pipeline Register
    M_WB_Reg MEM_WB_PR (
        .CE(vdd),
        .CLK(CLK),
        .CLR(CLR_ALL),
        .M_Addr(M_RegAddr),
        .M_ALU(M_ALU),
        .M_Data(M_FINAL_OUT),
        .M_ID(M_TID),
        .M_M2Reg(M_MemtoReg_MemStage),
        .M_RegW(M_RegWrite_MemStage),
        .WB_Addr(WB_ADDR),
        .WB_ALU(WB_ALU),
        .WB_Data(WB_OUT),
        .WB_ID(WB_TID),
        .WB_M2Reg(WB_MemtoReg),
        .WB_RegW(WB_W)
    );

    // 9. Write-Back (WB) Stage
    Mux2_1_64b WB_Data_Mux (
        .D0(WB_ALU),
        .D1(WB_OUT),
        .S(WB_MemtoReg),
        .O(WB_Data)
    );

endmodule
