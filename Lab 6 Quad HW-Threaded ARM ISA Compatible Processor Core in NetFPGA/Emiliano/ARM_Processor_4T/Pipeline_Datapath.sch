VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_671(1:0)
        SIGNAL CLK
        SIGNAL INS(23:20)
        SIGNAL INS(19:16)
        SIGNAL INS(31:28)
        SIGNAL R0_OUT(63:0)
        SIGNAL R1_OUT(63:0)
        SIGNAL INS(15:12)
        SIGNAL INS(27:24)
        SIGNAL INS(11:0)
        SIGNAL ID_Branch
        SIGNAL ID_MemRead
        SIGNAL ID_MemtoReg
        SIGNAL ID_MemWrite
        SIGNAL ID_RegWrite
        SIGNAL ID_ALUSrc
        SIGNAL XLXN_426(63:0)
        SIGNAL XLXN_698(63:0)
        SIGNAL XLXN_428(63:0)
        SIGNAL ALUAddr(3:0)
        SIGNAL XLXN_437
        SIGNAL XLXN_457
        SIGNAL XLXN_458
        SIGNAL EX_MemtoReg
        SIGNAL XLXN_460
        SIGNAL M_ALU(63:0)
        SIGNAL XLXN_707(63:0)
        SIGNAL M_R2(63:0)
        SIGNAL XLXN_709(63:0)
        SIGNAL M_ALU(7:0)
        SIGNAL M_OUT(63:0)
        SIGNAL XLXN_714(63:0)
        SIGNAL WB_MemtoReg
        SIGNAL vdd
        SIGNAL CLR_ALL
        SIGNAL ALUB(63:0)
        SIGNAL WB_OUT(63:0)
        SIGNAL WB_ALU(63:0)
        SIGNAL EX_ALU(63:0)
        SIGNAL XLXN_561(63:0)
        SIGNAL N
        SIGNAL Z
        SIGNAL C
        SIGNAL V
        SIGNAL EX_B
        SIGNAL EX_BType(1:0)
        SIGNAL INS(19:18)
        SIGNAL XLXN_598(11:0)
        SIGNAL XLXN_602(3:0)
        SIGNAL XLXN_603(3:0)
        SIGNAL M_WM
        SIGNAL IM_WE
        SIGNAL IM_OUT(31:0)
        SIGNAL INS(31:0)
        SIGNAL DIN(31:0)
        SIGNAL ADDR(8:0)
        SIGNAL M_MemR
        SIGNAL M_MemtoReg
        SIGNAL XLXN_541
        SIGNAL EX_BE
        SIGNAL XLXN_645
        SIGNAL XLXN_646
        SIGNAL XLXN_647
        SIGNAL XLXN_648
        SIGNAL M_B
        SIGNAL M_ALU(6:0)
        SIGNAL PC(8:7)
        SIGNAL PC(8:0)
        SIGNAL ID_TID(1:0)
        SIGNAL XLXN_776
        SIGNAL WB_W
        SIGNAL WB_Data(63:0)
        SIGNAL XLXN_779(63:0)
        SIGNAL WB_ADDR(3:0)
        SIGNAL XLXN_781(3:0)
        SIGNAL EX_TID(1:0)
        SIGNAL IM_CLR
        SIGNAL PC(6:0)
        SIGNAL XLXN_814(1:0)
        SIGNAL WB_TID(1:0)
        PORT Input CLK
        PORT Input CLR_ALL
        PORT Input IM_WE
        PORT Input DIN(31:0)
        PORT Input ADDR(8:0)
        PORT Input IM_CLR
        BEGIN BLOCKDEF D_Mem
            TIMESTAMP 2026 2 21 6 15 54
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 368 32 368 
            LINE N 0 464 32 464 
            BEGIN LINE W 256 272 288 272 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF I_Mem_Dual
            TIMESTAMP 2026 2 21 21 58 27
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 464 32 464 
            BEGIN LINE W 256 272 288 272 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2026 2 20 6 10 16
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 64 -256 320 68 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 20 384 44 
            LINE N 320 32 384 32 
        END BLOCKDEF
        BEGIN BLOCKDEF ID_EX_Reg
            TIMESTAMP 2026 2 21 8 37 24
            RECTANGLE N 64 -1024 400 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -608 0 -608 
            LINE N 64 -672 0 -672 
            LINE N 64 -992 0 -992 
            RECTANGLE N 0 -1004 64 -980 
            LINE N 64 -864 0 -864 
            LINE N 64 -800 0 -800 
            LINE N 64 -736 0 -736 
            LINE N 64 -544 0 -544 
            RECTANGLE N 0 -556 64 -532 
            LINE N 64 -480 0 -480 
            RECTANGLE N 0 -492 64 -468 
            LINE N 64 -928 0 -928 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 400 -416 464 -416 
            RECTANGLE N 400 -428 464 -404 
            LINE N 400 -352 464 -352 
            RECTANGLE N 400 -364 464 -340 
            LINE N 400 -288 464 -288 
            RECTANGLE N 400 -300 464 -276 
            LINE N 400 -608 464 -608 
            LINE N 400 -672 464 -672 
            LINE N 400 -992 464 -992 
            RECTANGLE N 400 -1004 464 -980 
            LINE N 400 -864 464 -864 
            LINE N 400 -800 464 -800 
            LINE N 400 -736 464 -736 
            LINE N 400 -544 464 -544 
            RECTANGLE N 400 -556 464 -532 
            LINE N 400 -480 464 -480 
            RECTANGLE N 400 -492 464 -468 
            LINE N 400 -928 464 -928 
            LINE N 400 -224 464 -224 
            RECTANGLE N 400 -236 464 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF Register_File_BRAM
            TIMESTAMP 2026 2 21 21 5 22
            RECTANGLE N 64 -512 320 0 
            LINE N 64 -32 0 -32 
            LINE N 64 -480 0 -480 
            RECTANGLE N 0 -492 64 -468 
            LINE N 320 -480 384 -480 
            RECTANGLE N 320 -492 384 -468 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -428 64 -404 
            LINE N 320 -416 384 -416 
            RECTANGLE N 320 -428 384 -404 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF Mux2_1_64b
            TIMESTAMP 2026 2 19 2 6 25
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF EX_M_Reg
            TIMESTAMP 2026 2 21 20 57 30
            RECTANGLE N 64 -768 400 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -480 0 -480 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -672 0 -672 
            LINE N 64 -608 0 -608 
            LINE N 64 -544 0 -544 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -736 0 -736 
            LINE N 400 -288 464 -288 
            RECTANGLE N 400 -300 464 -276 
            LINE N 400 -416 464 -416 
            RECTANGLE N 400 -428 464 -404 
            LINE N 400 -480 464 -480 
            LINE N 400 -224 464 -224 
            RECTANGLE N 400 -236 464 -212 
            LINE N 400 -672 464 -672 
            LINE N 400 -608 464 -608 
            LINE N 400 -544 464 -544 
            LINE N 400 -352 464 -352 
            RECTANGLE N 400 -364 464 -340 
            LINE N 400 -736 464 -736 
        END BLOCKDEF
        BEGIN BLOCKDEF M_WB_Reg
            TIMESTAMP 2026 2 21 21 1 22
            RECTANGLE N 64 -576 400 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -480 0 -480 
            LINE N 64 -544 0 -544 
            LINE N 400 -288 464 -288 
            RECTANGLE N 400 -300 464 -276 
            LINE N 400 -352 464 -352 
            RECTANGLE N 400 -364 464 -340 
            LINE N 400 -416 464 -416 
            RECTANGLE N 400 -428 464 -404 
            LINE N 400 -224 464 -224 
            RECTANGLE N 400 -236 464 -212 
            LINE N 400 -480 464 -480 
            LINE N 400 -544 464 -544 
        END BLOCKDEF
        BEGIN BLOCKDEF Control_Unit
            TIMESTAMP 2026 2 20 5 53 44
            LINE N 320 32 384 32 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -416 0 -416 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -448 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF Sign_Extend_12to64
            TIMESTAMP 2026 2 20 6 38 18
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF Condition_Unit
            TIMESTAMP 2026 2 21 7 15 46
            LINE N 64 96 0 96 
            LINE N 64 160 0 160 
            LINE N 64 224 0 224 
            LINE N 64 288 0 288 
            LINE N 64 32 0 32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -80 320 320 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF IF_ID_Reg
            TIMESTAMP 2026 2 21 9 18 27
            RECTANGLE N 64 -320 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF Flag_Reg_4
            TIMESTAMP 2026 2 21 9 11 55
            RECTANGLE N 64 -448 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -288 0 -288 
            LINE N 320 -288 384 -288 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -416 0 -416 
            LINE N 320 -416 384 -416 
            LINE N 64 -224 0 -224 
            LINE N 320 -224 384 -224 
            LINE N 64 -352 0 -352 
            LINE N 320 -352 384 -352 
        END BLOCKDEF
        BEGIN BLOCKDEF PCL_7b_4
            TIMESTAMP 2026 2 21 20 24 8
            RECTANGLE N 64 -320 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -224 0 -224 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -300 384 -276 
        END BLOCKDEF
        BEGIN BLOCKDEF Counter_2b
            TIMESTAMP 2026 2 21 9 30 13
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
        END BLOCKDEF
        BEGIN BLOCK XLXI_134 Mux2_1_64b
            PIN D0(63:0) XLXN_426(63:0)
            PIN D1(63:0) XLXN_428(63:0)
            PIN O(63:0) ALUB(63:0)
            PIN S XLXN_437
        END BLOCK
        BEGIN BLOCK XLXI_151 Mux2_1_64b
            PIN D0(63:0) WB_ALU(63:0)
            PIN D1(63:0) WB_OUT(63:0)
            PIN O(63:0) WB_Data(63:0)
            PIN S WB_MemtoReg
        END BLOCK
        BEGIN BLOCK XLXI_168 Control_Unit
            PIN OP(3:0) INS(31:28)
            PIN Branch ID_Branch
            PIN MemtoReg ID_MemtoReg
            PIN RegWrite ID_RegWrite
            PIN MemRead ID_MemRead
            PIN MemWrite ID_MemWrite
            PIN ALUSrc ID_ALUSrc
        END BLOCK
        BEGIN BLOCK XLXI_174 ALU
            PIN A(63:0) XLXN_561(63:0)
            PIN B(63:0) ALUB(63:0)
            PIN aluctrl(3:0) ALUAddr(3:0)
            PIN N N
            PIN Z Z
            PIN C C
            PIN V V
            PIN ALU_Result(63:0) EX_ALU(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_175 Sign_Extend_12to64
            PIN ext_in(11:0) XLXN_598(11:0)
            PIN ext_out(63:0) XLXN_428(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_177 D_Mem
            PIN addra(7:0) M_ALU(7:0)
            PIN dina(63:0) M_R2(63:0)
            PIN wea M_WM
            PIN clka CLK
            PIN addrb(7:0) M_ALU(7:0)
            PIN enb M_MemR
            PIN clkb CLK
            PIN doutb(63:0) M_OUT(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_182 I_Mem_Dual
            PIN addra(8:0) ADDR(8:0)
            PIN dina(31:0) DIN(31:0)
            PIN wea IM_WE
            PIN clka CLK
            PIN addrb(8:0) PC(8:0)
            PIN clkb CLK
            PIN doutb(31:0) IM_OUT(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_185 Condition_Unit
            PIN N XLXN_645
            PIN Z XLXN_646
            PIN C XLXN_647
            PIN V XLXN_648
            PIN br_en EX_BE
            PIN BType(1:0) EX_BType(1:0)
            PIN branch_taken EX_B
        END BLOCK
        BEGIN BLOCK XLXI_72 vcc
            PIN P vdd
        END BLOCK
        BEGIN BLOCK XLXI_192 IF_ID_Reg
            PIN CE vdd
            PIN CLK CLK
            PIN CLR CLR_ALL
            PIN ID_Ins(31:0) INS(31:0)
            PIN ID_TID(1:0) ID_TID(1:0)
            PIN IF_Ins(31:0) IM_OUT(31:0)
            PIN IF_TID(1:0) PC(8:7)
        END BLOCK
        BEGIN BLOCK XLXI_194 ID_EX_Reg
            PIN CE vdd
            PIN CLK CLK
            PIN CLR CLR_ALL
            PIN ID_Addr(3:0) INS(15:12)
            PIN ID_ALUC(3:0) INS(27:24)
            PIN ID_ALUD(11:0) INS(11:0)
            PIN ID_ALUSrc ID_ALUSrc
            PIN ID_B ID_Branch
            PIN ID_BT(1:0) INS(19:18)
            PIN ID_M2Reg ID_MemtoReg
            PIN ID_MemR ID_MemRead
            PIN ID_MemW ID_MemWrite
            PIN ID_R1(63:0) R0_OUT(63:0)
            PIN ID_R2(63:0) R1_OUT(63:0)
            PIN ID_RegW ID_RegWrite
            PIN ID_TID(1:0) ID_TID(1:0)
            PIN EX_Addr(3:0) XLXN_602(3:0)
            PIN EX_ALUC(3:0) ALUAddr(3:0)
            PIN EX_ALUD(11:0) XLXN_598(11:0)
            PIN EX_ALUSrc XLXN_437
            PIN EX_B EX_BE
            PIN EX_BT(1:0) EX_BType(1:0)
            PIN EX_M2Reg EX_MemtoReg
            PIN EX_MemR XLXN_458
            PIN EX_MemW XLXN_457
            PIN EX_R1(63:0) XLXN_561(63:0)
            PIN EX_R2(63:0) XLXN_426(63:0)
            PIN EX_RegW XLXN_460
            PIN EX_TID(1:0) EX_TID(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_195 Flag_Reg_4
            PIN CLK CLK
            PIN CLR CLR_ALL
            PIN C_in C
            PIN C_out XLXN_647
            PIN ID(1:0) EX_TID(1:0)
            PIN N_in N
            PIN N_out XLXN_645
            PIN V_in V
            PIN V_out XLXN_648
            PIN Z_in Z
            PIN Z_out XLXN_646
        END BLOCK
        BEGIN BLOCK XLXI_215 PCL_7b_4
            PIN CLK CLK
            PIN CLR IM_CLR
            PIN D(6:0) M_ALU(6:0)
            PIN ID(1:0) PC(8:7)
            PIN L M_B
            PIN Q(6:0) PC(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_217 Counter_2b
            PIN CE vdd
            PIN CLK CLK
            PIN CLR IM_CLR
            PIN TC
            PIN T_ID(1:0) PC(8:7)
        END BLOCK
        BEGIN BLOCK XLXI_219 EX_M_Reg
            PIN CE vdd
            PIN CLK CLK
            PIN CLR CLR_ALL
            PIN EX_Addr(3:0) XLXN_602(3:0)
            PIN EX_ALU(63:0) EX_ALU(63:0)
            PIN EX_B EX_B
            PIN EX_ID(1:0) EX_TID(1:0)
            PIN EX_M2Reg EX_MemtoReg
            PIN EX_MemR XLXN_458
            PIN EX_MemW XLXN_457
            PIN EX_R2(63:0) XLXN_426(63:0)
            PIN EX_RegW XLXN_460
            PIN M_Addr(3:0) XLXN_603(3:0)
            PIN M_ALU(63:0) M_ALU(63:0)
            PIN M_B M_B
            PIN M_ID(1:0) XLXN_814(1:0)
            PIN M_M2Reg M_MemtoReg
            PIN M_MemR M_MemR
            PIN M_MemW M_WM
            PIN M_R2(63:0) M_R2(63:0)
            PIN M_RegW XLXN_541
        END BLOCK
        BEGIN BLOCK XLXI_220 M_WB_Reg
            PIN CE vdd
            PIN CLK CLK
            PIN CLR CLR_ALL
            PIN M_Addr(3:0) XLXN_603(3:0)
            PIN M_ALU(63:0) M_ALU(63:0)
            PIN M_Data(63:0) M_OUT(63:0)
            PIN M_ID(1:0) XLXN_814(1:0)
            PIN M_M2Reg M_MemtoReg
            PIN M_RegW XLXN_541
            PIN WB_Addr(3:0) WB_ADDR(3:0)
            PIN WB_ALU(63:0) WB_ALU(63:0)
            PIN WB_Data(63:0) WB_OUT(63:0)
            PIN WB_ID(1:0) WB_TID(1:0)
            PIN WB_M2Reg WB_MemtoReg
            PIN WB_RegW WB_W
        END BLOCK
        BEGIN BLOCK XLXI_222 Register_File_BRAM
            PIN clk CLK
            PIN r0addr(3:0) INS(23:20)
            PIN r0data(63:0) R0_OUT(63:0)
            PIN r1addr(3:0) INS(19:16)
            PIN r1data(63:0) R1_OUT(63:0)
            PIN R_ID(1:0) ID_TID(1:0)
            PIN waddr(3:0) WB_ADDR(3:0)
            PIN wdata(63:0) WB_Data(63:0)
            PIN wena WB_W
            PIN W_ID(1:0) WB_TID(1:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN BRANCH CLK
            WIRE 256 1472 320 1472
            WIRE 320 1472 336 1472
            WIRE 320 1472 320 1696
            WIRE 320 1696 336 1696
        END BRANCH
        BEGIN BRANCH INS(23:20)
            WIRE 1152 1488 1152 1488
            WIRE 1152 1488 1216 1488
            BEGIN DISPLAY 1160 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INS(19:16)
            WIRE 1152 1552 1152 1552
            WIRE 1152 1552 1216 1552
            BEGIN DISPLAY 1160 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INS(31:28)
            WIRE 736 672 752 672
            WIRE 752 672 784 672
            BEGIN DISPLAY 752 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R0_OUT(63:0)
            WIRE 1600 1488 1680 1488
        END BRANCH
        BEGIN BRANCH R1_OUT(63:0)
            WIRE 1600 1552 1680 1552
        END BRANCH
        BEGIN BRANCH INS(15:12)
            WIRE 1632 1616 1648 1616
            WIRE 1648 1616 1680 1616
            BEGIN DISPLAY 1648 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INS(27:24)
            WIRE 1632 1680 1648 1680
            WIRE 1648 1680 1680 1680
            BEGIN DISPLAY 1648 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INS(11:0)
            WIRE 1632 1744 1648 1744
            WIRE 1648 1744 1680 1744
            BEGIN DISPLAY 1648 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_Branch
            WIRE 1168 736 1424 736
            WIRE 1424 736 1424 1360
            WIRE 1424 1360 1680 1360
        END BRANCH
        BEGIN BRANCH ID_MemRead
            WIRE 1168 800 1408 800
            WIRE 1408 800 1408 1232
            WIRE 1408 1232 1680 1232
        END BRANCH
        BEGIN BRANCH ID_MemtoReg
            WIRE 1168 864 1392 864
            WIRE 1392 864 1392 1168
            WIRE 1392 1168 1680 1168
        END BRANCH
        BEGIN BRANCH ID_MemWrite
            WIRE 1168 992 1376 992
            WIRE 1376 992 1376 1296
            WIRE 1376 1296 1680 1296
        END BRANCH
        BEGIN BRANCH ID_RegWrite
            WIRE 1168 1056 1440 1056
            WIRE 1440 1056 1440 1104
            WIRE 1440 1104 1680 1104
        END BRANCH
        BEGIN BRANCH ID_ALUSrc
            WIRE 1168 1120 1360 1120
            WIRE 1360 1120 1360 1424
            WIRE 1360 1424 1680 1424
        END BRANCH
        BEGIN BRANCH XLXN_426(63:0)
            WIRE 2144 1552 2224 1552
            WIRE 2224 1552 2224 1904
            WIRE 2224 1904 2656 1904
            WIRE 2656 1904 2656 2016
            WIRE 2656 2016 2672 2016
            WIRE 2656 1904 2784 1904
            WIRE 2784 1488 2832 1488
            WIRE 2784 1488 2784 1904
        END BRANCH
        BEGIN BRANCH XLXN_428(63:0)
            WIRE 2608 2080 2672 2080
        END BRANCH
        BEGIN BRANCH ALUAddr(3:0)
            WIRE 2144 1680 2208 1680
            WIRE 2208 1424 2208 1680
            WIRE 2208 1424 2288 1424
        END BRANCH
        BEGIN BRANCH XLXN_437
            WIRE 2144 1424 2176 1424
            WIRE 2176 1424 2176 2144
            WIRE 2176 2144 2672 2144
        END BRANCH
        BEGIN BRANCH XLXN_457
            WIRE 2144 1296 2832 1296
        END BRANCH
        BEGIN BRANCH XLXN_458
            WIRE 2144 1232 2832 1232
        END BRANCH
        BEGIN BRANCH EX_MemtoReg
            WIRE 2144 1168 2832 1168
        END BRANCH
        BEGIN BRANCH XLXN_460
            WIRE 2144 1104 2832 1104
        END BRANCH
        BEGIN BRANCH M_ALU(63:0)
            WIRE 3296 1424 3328 1424
            WIRE 3328 1424 3392 1424
            WIRE 3392 1424 3392 1712
            WIRE 3392 1712 3872 1712
            WIRE 3872 1296 3936 1296
            WIRE 3872 1296 3872 1712
            BEGIN DISPLAY 3328 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH M_R2(63:0)
            WIRE 3296 1488 3456 1488
            WIRE 3456 1264 3536 1264
            WIRE 3456 1264 3456 1488
        END BRANCH
        BEGIN BRANCH M_ALU(7:0)
            WIRE 3456 1232 3504 1232
            WIRE 3504 1232 3536 1232
            BEGIN DISPLAY 3512 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH M_ALU(7:0)
            WIRE 3440 1456 3504 1456
            WIRE 3504 1456 3536 1456
            BEGIN DISPLAY 3512 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 3520 1424 3536 1424
            WIRE 3520 1424 3520 1600
            WIRE 3520 1600 3520 1648
            WIRE 3520 1648 3536 1648
            BEGIN DISPLAY 3520 1600 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH M_OUT(63:0)
            WIRE 3824 1456 3840 1456
            WIRE 3840 1232 3936 1232
            WIRE 3840 1232 3840 1456
        END BRANCH
        BEGIN BRANCH WB_MemtoReg
            WIRE 4400 1168 4432 1168
            WIRE 4432 1168 4432 1408
            WIRE 4432 1408 4480 1408
        END BRANCH
        BEGIN INSTANCE XLXI_134 2672 2176 R0
        END INSTANCE
        BEGIN BRANCH ALUB(63:0)
            WIRE 3056 2016 3088 2016
            WIRE 3088 2016 3120 2016
            BEGIN DISPLAY 3088 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WB_OUT(63:0)
            WIRE 4400 1232 4416 1232
            WIRE 4416 1232 4416 1344
            WIRE 4416 1344 4480 1344
        END BRANCH
        BEGIN INSTANCE XLXI_151 4480 1440 R0
        END INSTANCE
        BEGIN BRANCH WB_ALU(63:0)
            WIRE 4400 1296 4448 1296
            WIRE 4448 1280 4448 1296
            WIRE 4448 1280 4480 1280
        END BRANCH
        BEGIN INSTANCE XLXI_168 784 1088 R0
        END INSTANCE
        BEGIN BRANCH EX_ALU(63:0)
            WIRE 2672 1680 2768 1680
            WIRE 2768 1424 2768 1680
            WIRE 2768 1424 2832 1424
        END BRANCH
        BEGIN BRANCH XLXN_561(63:0)
            WIRE 2144 1488 2288 1488
        END BRANCH
        BEGIN BRANCH ALUB(63:0)
            WIRE 2240 1552 2272 1552
            WIRE 2272 1552 2288 1552
            BEGIN DISPLAY 2272 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_174 2288 1648 R0
        END INSTANCE
        BEGIN BRANCH N
            WIRE 2672 1424 2688 1424
            WIRE 2688 1424 2720 1424
            BEGIN DISPLAY 2688 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Z
            WIRE 2672 1488 2688 1488
            WIRE 2688 1488 2720 1488
            BEGIN DISPLAY 2688 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C
            WIRE 2672 1552 2688 1552
            WIRE 2688 1552 2720 1552
            BEGIN DISPLAY 2688 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH V
            WIRE 2672 1616 2688 1616
            WIRE 2688 1616 2720 1616
            BEGIN DISPLAY 2688 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_B
            WIRE 2704 368 2816 368
            WIRE 2816 368 2816 1360
            WIRE 2816 1360 2832 1360
        END BRANCH
        BEGIN INSTANCE XLXI_175 2224 2112 R0
        END INSTANCE
        BEGIN BRANCH EX_BType(1:0)
            WIRE 2144 1040 2240 1040
            WIRE 2240 368 2240 1040
            WIRE 2240 368 2320 368
        END BRANCH
        BEGIN BRANCH INS(19:18)
            WIRE 1600 1040 1632 1040
            WIRE 1632 1040 1680 1040
            BEGIN DISPLAY 1632 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_598(11:0)
            WIRE 2144 1744 2160 1744
            WIRE 2160 1744 2160 2080
            WIRE 2160 2080 2224 2080
        END BRANCH
        BEGIN BRANCH XLXN_602(3:0)
            WIRE 2144 1616 2240 1616
            WIRE 2240 1616 2240 1760
            WIRE 2240 1760 2800 1760
            WIRE 2800 1552 2800 1760
            WIRE 2800 1552 2832 1552
        END BRANCH
        BEGIN BRANCH XLXN_603(3:0)
            WIRE 3296 1552 3360 1552
            WIRE 3360 1552 3360 1744
            WIRE 3360 1744 3888 1744
            WIRE 3888 1360 3888 1744
            WIRE 3888 1360 3936 1360
        END BRANCH
        BEGIN INSTANCE XLXI_177 3536 1184 R0
        END INSTANCE
        BEGIN BRANCH M_WM
            WIRE 3296 1296 3536 1296
        END BRANCH
        BEGIN BRANCH IM_WE
            WIRE 256 1344 336 1344
        END BRANCH
        BEGIN BRANCH IM_OUT(31:0)
            WIRE 624 1504 656 1504
        END BRANCH
        BEGIN BRANCH INS(31:0)
            WIRE 1040 1504 1056 1504
            WIRE 1056 1504 1072 1504
            BEGIN DISPLAY 1056 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DIN(31:0)
            WIRE 256 1312 336 1312
        END BRANCH
        BEGIN INSTANCE XLXI_182 336 1232 R0
        END INSTANCE
        BEGIN BRANCH ADDR(8:0)
            WIRE 256 1280 336 1280
        END BRANCH
        BEGIN BRANCH M_MemR
            WIRE 3296 1232 3408 1232
            WIRE 3408 1232 3408 1552
            WIRE 3408 1552 3536 1552
        END BRANCH
        BEGIN BRANCH M_MemtoReg
            WIRE 3296 1168 3936 1168
        END BRANCH
        BEGIN BRANCH XLXN_541
            WIRE 3296 1104 3936 1104
        END BRANCH
        BEGIN BRANCH EX_BE
            WIRE 2144 1360 2224 1360
            WIRE 2224 432 2224 1360
            WIRE 2224 432 2320 432
        END BRANCH
        BEGIN INSTANCE XLXI_185 2320 400 R0
        END INSTANCE
        BEGIN BRANCH CLR_ALL
            WIRE 1504 384 1600 384
        END BRANCH
        INSTANCE XLXI_72 1392 528 R0
        BEGIN BRANCH vdd
            WIRE 1456 528 1456 544
            BEGIN DISPLAY 1456 544 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH N
            WIRE 1760 496 1776 496
            WIRE 1776 496 1808 496
            BEGIN DISPLAY 1776 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Z
            WIRE 1760 560 1776 560
            WIRE 1776 560 1808 560
            BEGIN DISPLAY 1776 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C
            WIRE 1760 624 1776 624
            WIRE 1776 624 1808 624
            BEGIN DISPLAY 1776 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH V
            WIRE 1760 688 1776 688
            WIRE 1776 688 1808 688
            BEGIN DISPLAY 1776 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1760 816 1808 816
            BEGIN DISPLAY 1760 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLR_ALL
            WIRE 1760 880 1808 880
            BEGIN DISPLAY 1760 880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_645
            WIRE 2192 496 2320 496
        END BRANCH
        BEGIN BRANCH XLXN_646
            WIRE 2192 560 2320 560
        END BRANCH
        BEGIN BRANCH XLXN_647
            WIRE 2192 624 2320 624
        END BRANCH
        BEGIN BRANCH XLXN_648
            WIRE 2192 688 2320 688
        END BRANCH
        BEGIN BRANCH M_B
            WIRE 144 240 144 592
            WIRE 144 592 272 592
            WIRE 144 240 3312 240
            WIRE 3312 240 3312 1360
            WIRE 3296 1360 3312 1360
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 208 720 240 720
            WIRE 240 720 272 720
            BEGIN DISPLAY 240 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH M_ALU(6:0)
            WIRE 224 528 240 528
            WIRE 240 528 272 528
            BEGIN DISPLAY 240 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PC(8:0)
            WIRE 256 1504 336 1504
            BEGIN DISPLAY 256 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_192 656 1792 R0
        END INSTANCE
        BEGIN BRANCH CLR_ALL
            WIRE 624 1760 656 1760
            BEGIN DISPLAY 624 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 624 1632 640 1632
            WIRE 640 1632 656 1632
            BEGIN DISPLAY 640 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PC(8:7)
            WIRE 624 1568 640 1568
            WIRE 640 1568 656 1568
            BEGIN DISPLAY 640 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_TID(1:0)
            WIRE 1040 1568 1072 1568
            WIRE 1072 1568 1072 1616
            WIRE 1072 1616 1152 1616
            WIRE 1152 1616 1216 1616
            BEGIN DISPLAY 1152 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 640 1696 656 1696
            WIRE 640 1696 640 1936
            WIRE 640 1936 1216 1936
            BEGIN DISPLAY 640 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WB_W
            WIRE 1152 1872 1152 2240
            WIRE 1152 2240 4464 2240
            WIRE 1152 1872 1216 1872
            WIRE 4400 1104 4464 1104
            WIRE 4464 1104 4464 2240
        END BRANCH
        BEGIN BRANCH WB_Data(63:0)
            WIRE 1136 1808 1136 2256
            WIRE 1136 2256 4944 2256
            WIRE 1136 1808 1216 1808
            WIRE 4864 1280 4944 1280
            WIRE 4944 1280 4944 2256
        END BRANCH
        BEGIN BRANCH WB_ADDR(3:0)
            WIRE 1168 1680 1168 2224
            WIRE 1168 2224 4416 2224
            WIRE 1168 1680 1216 1680
            WIRE 4400 1360 4416 1360
            WIRE 4416 1360 4416 2224
        END BRANCH
        BEGIN INSTANCE XLXI_194 1680 2032 R0
        END INSTANCE
        BEGIN BRANCH CLK
            WIRE 1632 1936 1680 1936
            BEGIN DISPLAY 1632 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 1632 1872 1680 1872
            BEGIN DISPLAY 1632 1872 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLR_ALL
            WIRE 1632 2000 1680 2000
            BEGIN DISPLAY 1632 2000 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_TID(1:0)
            WIRE 1632 1808 1648 1808
            WIRE 1648 1808 1680 1808
            BEGIN DISPLAY 1648 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_195 1808 912 R0
        END INSTANCE
        BEGIN BRANCH EX_TID(1:0)
            WIRE 2144 1808 2192 1808
            WIRE 2192 1808 2752 1808
            WIRE 2752 1616 2752 1808
            WIRE 2752 1616 2832 1616
            BEGIN DISPLAY 2192 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_TID(1:0)
            WIRE 1760 752 1776 752
            WIRE 1776 752 1808 752
            BEGIN DISPLAY 1776 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 256 1472 CLK R180 28
        IOMARKER 256 1344 IM_WE R180 28
        IOMARKER 256 1312 DIN(31:0) R180 28
        IOMARKER 256 1280 ADDR(8:0) R180 28
        IOMARKER 1504 384 CLR_ALL R180 28
        BEGIN BRANCH PC(8:7)
            WIRE 656 1008 688 1008
            WIRE 688 1008 720 1008
            BEGIN DISPLAY 688 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 224 1072 272 1072
            BEGIN DISPLAY 224 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 224 1008 272 1008
            BEGIN DISPLAY 224 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IM_CLR
            WIRE 256 1136 272 1136
        END BRANCH
        IOMARKER 256 1136 IM_CLR R180 28
        BEGIN INSTANCE XLXI_215 272 816 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_217 272 1168 R0
        END INSTANCE
        BEGIN BRANCH PC(6:0)
            WIRE 656 528 688 528
            WIRE 688 528 720 528
            BEGIN DISPLAY 688 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PC(8:7)
            WIRE 208 656 240 656
            WIRE 240 656 272 656
            BEGIN DISPLAY 240 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IM_CLR
            WIRE 208 784 224 784
            WIRE 224 784 272 784
            BEGIN DISPLAY 224 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_219 2832 1840 R0
        END INSTANCE
        BEGIN BRANCH CLK
            WIRE 2816 1744 2832 1744
            BEGIN DISPLAY 2816 1744 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 2816 1680 2832 1680
            BEGIN DISPLAY 2816 1680 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLR_ALL
            WIRE 2816 1808 2832 1808
            BEGIN DISPLAY 2816 1808 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_220 3936 1648 R0
        END INSTANCE
        BEGIN BRANCH CLK
            WIRE 3920 1552 3936 1552
            BEGIN DISPLAY 3920 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 3920 1488 3936 1488
            BEGIN DISPLAY 3920 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLR_ALL
            WIRE 3920 1616 3936 1616
            BEGIN DISPLAY 3920 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_814(1:0)
            WIRE 3296 1616 3344 1616
            WIRE 3344 1616 3344 1728
            WIRE 3344 1728 3904 1728
            WIRE 3904 1424 3904 1728
            WIRE 3904 1424 3936 1424
        END BRANCH
        BEGIN BRANCH WB_TID(1:0)
            WIRE 4400 1424 4432 1424
            WIRE 4432 1424 4480 1424
            BEGIN DISPLAY 4432 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_222 1216 1968 R0
        END INSTANCE
        BEGIN BRANCH WB_TID(1:0)
            WIRE 1136 1744 1152 1744
            WIRE 1152 1744 1216 1744
            BEGIN DISPLAY 1152 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
