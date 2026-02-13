VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1(31:0)
        SIGNAL XLXN_25(63:0)
        SIGNAL XLXN_27(63:0)
        SIGNAL XLXN_30
        SIGNAL INS(25:24)
        SIGNAL INS(28:27)
        SIGNAL XLXN_46(1:0)
        SIGNAL INS(31:0)
        SIGNAL DIN(31:0)
        SIGNAL IM_WE
        SIGNAL CLK
        SIGNAL INS(31)
        SIGNAL vdd
        SIGNAL XLXN_140(8:0)
        SIGNAL INS(22:21)
        SIGNAL XLXN_150(63:0)
        SIGNAL XLXN_151(63:0)
        SIGNAL XLXN_152(63:0)
        SIGNAL XLXN_153(63:0)
        SIGNAL XLXN_154(63:0)
        SIGNAL XLXN_159(63:0)
        SIGNAL XLXN_160
        SIGNAL XLXN_161
        SIGNAL XLXN_162(63:0)
        SIGNAL XLXN_163(63:0)
        SIGNAL XLXN_164(1:0)
        SIGNAL XLXN_181
        SIGNAL XLXN_27(7:0)
        SIGNAL XLXN_184
        SIGNAL XLXN_185(63:0)
        SIGNAL XLXN_190
        SIGNAL XLXN_191
        SIGNAL XLXN_192(1:0)
        SIGNAL XLXN_193(1:0)
        SIGNAL XLXN_202
        SIGNAL XLXN_203(63:0)
        SIGNAL grnd
        SIGNAL IM_CLR
        SIGNAL XLXN_81(8:0)
        SIGNAL B(8:0)
        PORT Input DIN(31:0)
        PORT Input IM_WE
        PORT Input CLK
        PORT Input IM_CLR
        PORT Input B(8:0)
        BEGIN BLOCKDEF I_Mem
            TIMESTAMP 2026 2 13 8 10 47
            RECTANGLE N 32 0 320 272 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 320 48 352 48 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF D_Mem
            TIMESTAMP 2026 2 13 9 25 33
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            BEGIN LINE W 0 304 32 304 
            END LINE
            LINE N 0 336 32 336 
            LINE N 0 464 32 464 
            BEGIN LINE W 256 48 288 48 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF Register_File_16b
            TIMESTAMP 2026 2 13 0 4 4
            RECTANGLE N 64 -384 320 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -364 384 -340 
            LINE N 320 -352 384 -352 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ifd32
            TIMESTAMP 2026 2 13 5 27 34
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF adder_9bit
            TIMESTAMP 2026 2 13 1 26 26
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF ifd9
            TIMESTAMP 2026 2 13 8 39 34
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
        END BLOCKDEF
        BEGIN BLOCKDEF ID_EX_Reg
            TIMESTAMP 2026 2 13 5 13 50
            RECTANGLE N 64 -512 368 0 
            LINE N 64 -32 0 -32 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 368 -352 432 -352 
            RECTANGLE N 368 -364 432 -340 
            LINE N 368 -288 432 -288 
            RECTANGLE N 368 -300 432 -276 
            LINE N 368 -224 432 -224 
            RECTANGLE N 368 -236 432 -212 
            LINE N 368 -480 432 -480 
            LINE N 368 -416 432 -416 
        END BLOCKDEF
        BEGIN BLOCKDEF EX_WB_Reg
            TIMESTAMP 2026 2 13 6 5 53
            RECTANGLE N 64 -384 368 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -352 0 -352 
            LINE N 368 -288 432 -288 
            RECTANGLE N 368 -300 432 -276 
            LINE N 368 -224 432 -224 
            RECTANGLE N 368 -236 432 -212 
            LINE N 368 -352 432 -352 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 I_Mem
            PIN addr(8:0) XLXN_140(8:0)
            PIN din(31:0) DIN(31:0)
            PIN we IM_WE
            PIN clk CLK
            PIN dout(31:0) XLXN_1(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_72 vcc
            PIN P vdd
        END BLOCK
        BEGIN BLOCK XLXI_74 ID_EX_Reg
            PIN CE vdd
            PIN CLK CLK
            PIN CLR grnd
            PIN ID_R1(63:0) XLXN_150(63:0)
            PIN ID_R2(63:0) XLXN_151(63:0)
            PIN ID_REG1(1:0) INS(22:21)
            PIN ID_WME INS(31)
            PIN ID_WRE INS(31)
            PIN EX_R1(63:0) XLXN_162(63:0)
            PIN EX_R2(63:0) XLXN_163(63:0)
            PIN EX_REG1(1:0) XLXN_164(1:0)
            PIN EX_WME XLXN_160
            PIN EX_WRE XLXN_161
        END BLOCK
        BEGIN BLOCK XLXI_75 ID_EX_Reg
            PIN CE vdd
            PIN CLK CLK
            PIN CLR grnd
            PIN ID_R1(63:0) XLXN_162(63:0)
            PIN ID_R2(63:0) XLXN_163(63:0)
            PIN ID_REG1(1:0) XLXN_164(1:0)
            PIN ID_WME XLXN_160
            PIN ID_WRE XLXN_161
            PIN EX_R1(63:0) XLXN_27(63:0)
            PIN EX_R2(63:0) XLXN_25(63:0)
            PIN EX_REG1(1:0) XLXN_192(1:0)
            PIN EX_WME XLXN_190
            PIN EX_WRE XLXN_191
        END BLOCK
        BEGIN BLOCK XLXI_4 Register_File_16b
            PIN wena XLXN_202
            PIN clk CLK
            PIN wdata(63:0) XLXN_203(63:0)
            PIN waddr(1:0) XLXN_46(1:0)
            PIN r0addr(1:0) INS(28:27)
            PIN r1addr(1:0) INS(25:24)
            PIN r1data(63:0) XLXN_150(63:0)
            PIN r0data(63:0) XLXN_151(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_32 D_Mem
            PIN addra(7:0) XLXN_27(7:0)
            PIN clka CLK
            PIN addrb(7:0) XLXN_27(7:0)
            PIN dinb(63:0) XLXN_25(63:0)
            PIN web XLXN_190
            PIN clkb CLK
            PIN douta(63:0) XLXN_185(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_80 EX_WB_Reg
            PIN CE vdd
            PIN CLK CLK
            PIN CLR grnd
            PIN EX_DOUT(63:0) XLXN_185(63:0)
            PIN EX_REG1(1:0) XLXN_192(1:0)
            PIN EX_WRE XLXN_191
            PIN WB_DOUT(63:0) XLXN_203(63:0)
            PIN WB_REG1(1:0) XLXN_46(1:0)
            PIN WB_WRE XLXN_202
        END BLOCK
        BEGIN BLOCK XLXI_81 gnd
            PIN G grnd
        END BLOCK
        BEGIN BLOCK XLXI_66 adder_9bit
            PIN A(8:0) XLXN_140(8:0)
            PIN B(8:0) B(8:0)
            PIN Cin vdd
            PIN Cout
            PIN S(8:0) XLXN_81(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_84 ifd9
            PIN CLK CLK
            PIN CLR IM_CLR
            PIN D(8:0) XLXN_81(8:0)
            PIN Q(8:0) XLXN_140(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_86 ifd32
            PIN CE vdd
            PIN CLK CLK
            PIN CLR grnd
            PIN D(31:0) XLXN_1(31:0)
            PIN Q(31:0) INS(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_1(31:0)
            WIRE 544 1280 576 1280
        END BRANCH
        BEGIN BRANCH XLXN_27(63:0)
            WIRE 2496 1296 2544 1296
            WIRE 2544 1296 2544 1344
            WIRE 2544 1040 2544 1104
            WIRE 2544 1104 2544 1296
        END BRANCH
        BEGIN BRANCH INS(25:24)
            WIRE 1072 1616 1072 1616
            WIRE 1072 1616 1136 1616
            BEGIN DISPLAY 1080 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INS(28:27)
            WIRE 1072 1552 1072 1552
            WIRE 1072 1552 1136 1552
            BEGIN DISPLAY 1080 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INS(31:0)
            WIRE 960 1280 976 1280
            WIRE 976 1280 976 1552
            WIRE 976 1552 976 1616
            WIRE 976 1616 976 1872
            WIRE 976 1872 976 1936
            WIRE 976 1120 976 1168
            WIRE 976 1168 976 1232
            WIRE 976 1232 976 1280
        END BRANCH
        BUSTAP 976 1616 1072 1616
        BUSTAP 976 1552 1072 1552
        BEGIN BRANCH DIN(31:0)
            WIRE 160 1312 192 1312
        END BRANCH
        BEGIN BRANCH IM_WE
            WIRE 144 1344 192 1344
        END BRANCH
        IOMARKER 144 1344 IM_WE R180 28
        BEGIN INSTANCE XLXI_1 192 1232 R0
        END INSTANCE
        IOMARKER 160 1312 DIN(31:0) R180 28
        IOMARKER 144 1472 CLK R180 28
        BUSTAP 976 1872 1072 1872
        BEGIN BRANCH INS(22:21)
            WIRE 1072 1872 1392 1872
            WIRE 1392 1872 1552 1872
            WIRE 1552 1424 1552 1872
            WIRE 1552 1424 1584 1424
            BEGIN DISPLAY 1400 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_72 640 1760 R0
        BEGIN BRANCH vdd
            WIRE 704 1760 704 1824
            BEGIN DISPLAY 704 1824 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_151(63:0)
            WIRE 1520 1616 1536 1616
            WIRE 1536 1360 1536 1616
            WIRE 1536 1360 1584 1360
        END BRANCH
        BEGIN BRANCH XLXN_150(63:0)
            WIRE 1520 1296 1584 1296
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 144 1472 176 1472
            WIRE 176 1472 192 1472
            WIRE 176 1472 176 1520
            WIRE 176 1520 560 1520
            WIRE 560 1520 1008 1520
            WIRE 560 1408 560 1520
            WIRE 560 1408 576 1408
            WIRE 1008 1360 1008 1520
            WIRE 1008 1360 1136 1360
        END BRANCH
        BEGIN INSTANCE XLXI_74 1584 1648 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_75 2064 1648 R0
        END INSTANCE
        BEGIN BRANCH XLXN_160
            WIRE 2016 1168 2064 1168
        END BRANCH
        BEGIN BRANCH XLXN_161
            WIRE 2016 1232 2064 1232
        END BRANCH
        BEGIN BRANCH XLXN_162(63:0)
            WIRE 2016 1296 2064 1296
        END BRANCH
        BEGIN BRANCH XLXN_163(63:0)
            WIRE 2016 1360 2064 1360
        END BRANCH
        BEGIN BRANCH XLXN_164(1:0)
            WIRE 2016 1424 2064 1424
        END BRANCH
        BUSTAP 976 1232 1072 1232
        BEGIN BRANCH INS(31)
            WIRE 1072 1232 1392 1232
            WIRE 1392 1232 1584 1232
            BEGIN DISPLAY 1392 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_4 1136 1648 R0
        END INSTANCE
        BEGIN BRANCH XLXN_46(1:0)
            WIRE 1120 1488 1136 1488
            WIRE 1120 1488 1120 1760
            WIRE 1120 1760 3472 1760
            WIRE 3440 1168 3472 1168
            WIRE 3472 1168 3472 1760
        END BRANCH
        BUSTAP 976 1168 1072 1168
        BEGIN BRANCH INS(31)
            WIRE 1072 1168 1360 1168
            WIRE 1360 1168 1584 1168
            BEGIN DISPLAY 1360 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_25(63:0)
            WIRE 2496 1360 2688 1360
        END BRANCH
        BUSTAP 2544 1104 2640 1104
        BEGIN BRANCH XLXN_27(7:0)
            WIRE 2640 1104 2672 1104
            WIRE 2672 1104 2688 1104
            BEGIN DISPLAY 2680 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2544 1328 2640 1328
        BEGIN BRANCH XLXN_27(7:0)
            WIRE 2640 1328 2672 1328
            WIRE 2672 1328 2688 1328
            BEGIN DISPLAY 2680 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_185(63:0)
            WIRE 2976 1104 3008 1104
        END BRANCH
        BEGIN INSTANCE XLXI_32 2688 1056 R0
        END INSTANCE
        BEGIN BRANCH CLK
            WIRE 2672 1296 2688 1296
            WIRE 2672 1296 2672 1472
            WIRE 2672 1472 2672 1520
            WIRE 2672 1520 2688 1520
            BEGIN DISPLAY 2672 1472 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_190
            WIRE 2496 1168 2528 1168
            WIRE 2528 1168 2528 1392
            WIRE 2528 1392 2688 1392
        END BRANCH
        BEGIN BRANCH XLXN_191
            WIRE 2496 1232 2592 1232
            WIRE 2592 1040 3008 1040
            WIRE 2592 1040 2592 1232
        END BRANCH
        BEGIN BRANCH XLXN_192(1:0)
            WIRE 2496 1424 2512 1424
            WIRE 2512 1424 2512 1616
            WIRE 2512 1616 2992 1616
            WIRE 2992 1168 2992 1616
            WIRE 2992 1168 3008 1168
        END BRANCH
        BEGIN INSTANCE XLXI_80 3008 1392 R0
        END INSTANCE
        BEGIN BRANCH vdd
            WIRE 1568 1616 1584 1616
            WIRE 1568 1616 1568 1728
            WIRE 1568 1728 1712 1728
            WIRE 1712 1728 2048 1728
            WIRE 2048 1616 2048 1728
            WIRE 2048 1616 2064 1616
            BEGIN DISPLAY 1712 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH grnd
            WIRE 1520 1552 1584 1552
            BEGIN DISPLAY 1520 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1520 1488 1568 1488
            WIRE 1568 1488 1584 1488
            BEGIN DISPLAY 1568 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH grnd
            WIRE 2032 1552 2064 1552
            BEGIN DISPLAY 2032 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2032 1488 2064 1488
            BEGIN DISPLAY 2032 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 2976 1232 3008 1232
            BEGIN DISPLAY 2976 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2976 1296 3008 1296
            BEGIN DISPLAY 2976 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH grnd
            WIRE 2976 1360 3008 1360
            BEGIN DISPLAY 2976 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_202
            WIRE 1104 928 3504 928
            WIRE 3504 928 3504 1040
            WIRE 1104 928 1104 1296
            WIRE 1104 1296 1136 1296
            WIRE 3440 1040 3504 1040
        END BRANCH
        BEGIN BRANCH XLXN_203(63:0)
            WIRE 1104 1424 1136 1424
            WIRE 1104 1424 1104 1744
            WIRE 1104 1744 3504 1744
            WIRE 3440 1104 3504 1104
            WIRE 3504 1104 3504 1744
        END BRANCH
        BEGIN BRANCH grnd
            WIRE 544 1472 576 1472
            BEGIN DISPLAY 544 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 544 1344 560 1344
            WIRE 560 1344 576 1344
            BEGIN DISPLAY 560 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_81 464 1904 R0
        BEGIN BRANCH grnd
            WIRE 528 1712 528 1776
            BEGIN DISPLAY 528 1712 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_140(8:0)
            WIRE 112 1152 112 1280
            WIRE 112 1280 192 1280
            WIRE 112 1152 592 1152
            WIRE 576 256 592 256
            WIRE 592 256 720 256
            WIRE 592 256 592 1152
        END BRANCH
        IOMARKER 160 384 IM_CLR R180 28
        BEGIN INSTANCE XLXI_66 720 416 R0
        END INSTANCE
        BEGIN BRANCH IM_CLR
            WIRE 160 384 192 384
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 144 320 160 320
            WIRE 160 320 192 320
            BEGIN DISPLAY 160 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_81(8:0)
            WIRE 128 144 128 256
            WIRE 128 256 192 256
            WIRE 128 144 1120 144
            WIRE 1120 144 1120 256
            WIRE 1104 256 1120 256
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 640 384 672 384
            WIRE 672 384 720 384
            BEGIN DISPLAY 672 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_84 192 416 R0
        END INSTANCE
        BEGIN BRANCH B(8:0)
            WIRE 672 320 720 320
        END BRANCH
        IOMARKER 672 320 B(8:0) R180 28
        BEGIN INSTANCE XLXI_86 576 1504 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
