VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL IM_OUT(31:0)
        SIGNAL M_R2(63:0)
        SIGNAL M_R1(63:0)
        SIGNAL INS(25:24)
        SIGNAL INS(28:27)
        SIGNAL WB_ADDR(1:0)
        SIGNAL INS(31:0)
        SIGNAL CLK
        SIGNAL INS(31)
        SIGNAL vdd
        SIGNAL ID_R1(63:0)
        SIGNAL ID_R2(63:0)
        SIGNAL XLXN_160
        SIGNAL XLXN_161
        SIGNAL EX_R1(63:0)
        SIGNAL EX_R2(63:0)
        SIGNAL XLXN_164(1:0)
        SIGNAL M_OUT(63:0)
        SIGNAL M_WM
        SIGNAL XLXN_191
        SIGNAL XLXN_192(1:0)
        SIGNAL WB_WRITE
        SIGNAL WB_DATA(63:0)
        SIGNAL CLR_ALL
        SIGNAL INS(30)
        SIGNAL M_R1(7:0)
        SIGNAL DIN(31:0)
        SIGNAL IM_WE
        SIGNAL IM_CLR
        SIGNAL B(8:0)
        SIGNAL INS(22:21)
        SIGNAL XLXN_230(8:0)
        SIGNAL XLXN_231(8:0)
        PORT Input CLK
        PORT Input CLR_ALL
        PORT Input DIN(31:0)
        PORT Input IM_WE
        PORT Input IM_CLR
        PORT Input B(8:0)
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
        BEGIN BLOCKDEF I_Mem_Dual
            TIMESTAMP 2026 2 13 22 56 54
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
        BEGIN BLOCK XLXI_74 ID_EX_Reg
            PIN CE vdd
            PIN CLK CLK
            PIN CLR CLR_ALL
            PIN ID_R1(63:0) ID_R1(63:0)
            PIN ID_R2(63:0) ID_R2(63:0)
            PIN ID_REG1(1:0) INS(22:21)
            PIN ID_WME INS(31)
            PIN ID_WRE INS(30)
            PIN EX_R1(63:0) EX_R1(63:0)
            PIN EX_R2(63:0) EX_R2(63:0)
            PIN EX_REG1(1:0) XLXN_164(1:0)
            PIN EX_WME XLXN_160
            PIN EX_WRE XLXN_161
        END BLOCK
        BEGIN BLOCK XLXI_75 ID_EX_Reg
            PIN CE vdd
            PIN CLK CLK
            PIN CLR CLR_ALL
            PIN ID_R1(63:0) EX_R1(63:0)
            PIN ID_R2(63:0) EX_R2(63:0)
            PIN ID_REG1(1:0) XLXN_164(1:0)
            PIN ID_WME XLXN_160
            PIN ID_WRE XLXN_161
            PIN EX_R1(63:0) M_R1(63:0)
            PIN EX_R2(63:0) M_R2(63:0)
            PIN EX_REG1(1:0) XLXN_192(1:0)
            PIN EX_WME M_WM
            PIN EX_WRE XLXN_191
        END BLOCK
        BEGIN BLOCK XLXI_4 Register_File_16b
            PIN wena WB_WRITE
            PIN clk CLK
            PIN wdata(63:0) WB_DATA(63:0)
            PIN waddr(1:0) WB_ADDR(1:0)
            PIN r0addr(1:0) INS(28:27)
            PIN r1addr(1:0) INS(25:24)
            PIN r1data(63:0) ID_R1(63:0)
            PIN r0data(63:0) ID_R2(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_32 D_Mem
            PIN addra(7:0) M_R1(7:0)
            PIN clka CLK
            PIN addrb(7:0) M_R1(7:0)
            PIN dinb(63:0) M_R2(63:0)
            PIN web M_WM
            PIN clkb CLK
            PIN douta(63:0) M_OUT(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_80 EX_WB_Reg
            PIN CE vdd
            PIN CLK CLK
            PIN CLR CLR_ALL
            PIN EX_DOUT(63:0) M_OUT(63:0)
            PIN EX_REG1(1:0) XLXN_192(1:0)
            PIN EX_WRE XLXN_191
            PIN WB_DOUT(63:0) WB_DATA(63:0)
            PIN WB_REG1(1:0) WB_ADDR(1:0)
            PIN WB_WRE WB_WRITE
        END BLOCK
        BEGIN BLOCK XLXI_86 ifd32
            PIN CE vdd
            PIN CLK CLK
            PIN CLR CLR_ALL
            PIN D(31:0) IM_OUT(31:0)
            PIN Q(31:0) INS(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_89 I_Mem_Dual
            PIN addra(8:0) XLXN_231(8:0)
            PIN clka CLK
            PIN addrb(8:0) XLXN_231(8:0)
            PIN dinb(31:0) DIN(31:0)
            PIN web IM_WE
            PIN clkb CLK
            PIN douta(31:0) IM_OUT(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_66 adder_9bit
            PIN A(8:0) XLXN_231(8:0)
            PIN B(8:0) B(8:0)
            PIN Cin vdd
            PIN Cout
            PIN S(8:0) XLXN_230(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_84 ifd9
            PIN CLK CLK
            PIN CLR IM_CLR
            PIN D(8:0) XLXN_230(8:0)
            PIN Q(8:0) XLXN_231(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_72 vcc
            PIN P vdd
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH IM_OUT(31:0)
            WIRE 544 1280 576 1280
        END BRANCH
        BEGIN BRANCH M_R1(63:0)
            WIRE 2496 1296 2544 1296
            WIRE 2544 1296 2544 1328
            WIRE 2544 1328 2544 1344
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
            WIRE 976 1616 976 1776
            WIRE 976 1776 976 1840
            WIRE 976 1120 976 1168
            WIRE 976 1168 976 1232
            WIRE 976 1232 976 1280
        END BRANCH
        BUSTAP 976 1616 1072 1616
        BUSTAP 976 1552 1072 1552
        BEGIN BRANCH ID_R2(63:0)
            WIRE 1520 1616 1536 1616
            WIRE 1536 1360 1536 1616
            WIRE 1536 1360 1584 1360
        END BRANCH
        BEGIN BRANCH ID_R1(63:0)
            WIRE 1520 1296 1584 1296
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
        BEGIN BRANCH EX_R1(63:0)
            WIRE 2016 1296 2064 1296
        END BRANCH
        BEGIN BRANCH EX_R2(63:0)
            WIRE 2016 1360 2064 1360
        END BRANCH
        BEGIN BRANCH XLXN_164(1:0)
            WIRE 2016 1424 2064 1424
        END BRANCH
        BEGIN INSTANCE XLXI_4 1136 1648 R0
        END INSTANCE
        BEGIN BRANCH WB_ADDR(1:0)
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
        BEGIN BRANCH M_R2(63:0)
            WIRE 2496 1360 2688 1360
        END BRANCH
        BEGIN BRANCH M_OUT(63:0)
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
        BEGIN BRANCH M_WM
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
        BEGIN BRANCH CLR_ALL
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
        BEGIN BRANCH CLR_ALL
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
        BEGIN BRANCH CLR_ALL
            WIRE 2976 1360 3008 1360
            BEGIN DISPLAY 2976 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WB_WRITE
            WIRE 1136 928 3504 928
            WIRE 3504 928 3504 1040
            WIRE 1136 928 1136 1296
            WIRE 3440 1040 3504 1040
        END BRANCH
        BEGIN BRANCH WB_DATA(63:0)
            WIRE 1104 1424 1136 1424
            WIRE 1104 1424 1104 1744
            WIRE 1104 1744 3504 1744
            WIRE 3440 1104 3504 1104
            WIRE 3504 1104 3504 1744
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 544 1344 560 1344
            WIRE 560 1344 576 1344
            BEGIN DISPLAY 560 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_86 576 1504 R0
        END INSTANCE
        BUSTAP 976 1232 1072 1232
        BEGIN BRANCH INS(30)
            WIRE 1072 1232 1328 1232
            WIRE 1328 1232 1584 1232
            BEGIN DISPLAY 1328 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2544 1104 2640 1104
        BEGIN BRANCH M_R1(7:0)
            WIRE 2640 1104 2656 1104
            WIRE 2656 1104 2656 1104
            WIRE 2656 1104 2688 1104
            BEGIN DISPLAY 2664 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2544 1328 2640 1328
        BEGIN BRANCH M_R1(7:0)
            WIRE 2640 1328 2656 1328
            WIRE 2656 1328 2656 1328
            WIRE 2656 1328 2688 1328
            BEGIN DISPLAY 2664 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLR_ALL
            WIRE 544 1472 576 1472
            BEGIN DISPLAY 544 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DIN(31:0)
            WIRE 176 1536 256 1536
        END BRANCH
        IOMARKER 176 1536 DIN(31:0) R180 28
        BEGIN INSTANCE XLXI_89 256 1232 R0
        END INSTANCE
        BEGIN BRANCH IM_WE
            WIRE 176 1568 256 1568
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 176 1472 240 1472
            WIRE 240 1472 256 1472
            WIRE 240 1472 240 1696
            WIRE 240 1696 256 1696
        END BRANCH
        IOMARKER 176 1568 IM_WE R180 28
        IOMARKER 176 1472 CLK R180 28
        BEGIN BRANCH CLK
            WIRE 560 1408 576 1408
            WIRE 560 1408 560 1520
            WIRE 560 1520 1008 1520
            WIRE 1008 1360 1008 1520
            WIRE 1008 1360 1136 1360
            BEGIN DISPLAY 560 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_66 720 960 R0
        END INSTANCE
        BEGIN BRANCH IM_CLR
            WIRE 160 928 192 928
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 144 864 160 864
            WIRE 160 864 192 864
            BEGIN DISPLAY 160 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 640 928 672 928
            WIRE 672 928 720 928
            BEGIN DISPLAY 672 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_84 192 960 R0
        END INSTANCE
        BEGIN BRANCH B(8:0)
            WIRE 672 864 720 864
        END BRANCH
        IOMARKER 160 928 IM_CLR R180 28
        IOMARKER 672 864 B(8:0) R180 28
        BEGIN BRANCH INS(22:21)
            WIRE 1072 1776 1392 1776
            WIRE 1392 1776 1392 1776
            WIRE 1392 1776 1552 1776
            WIRE 1552 1424 1584 1424
            WIRE 1552 1424 1552 1776
            BEGIN DISPLAY 1400 1776 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 976 1776 1072 1776
        INSTANCE XLXI_72 1568 848 R0
        BEGIN BRANCH vdd
            WIRE 1632 848 1632 864
            BEGIN DISPLAY 1632 864 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLR_ALL
            WIRE 1376 848 1472 848
        END BRANCH
        IOMARKER 1376 848 CLR_ALL R180 28
        BEGIN BRANCH XLXN_230(8:0)
            WIRE 128 704 128 800
            WIRE 128 800 192 800
            WIRE 128 704 1168 704
            WIRE 1168 704 1168 800
            WIRE 1104 800 1168 800
        END BRANCH
        BEGIN BRANCH XLXN_231(8:0)
            WIRE 208 1168 688 1168
            WIRE 208 1168 208 1280
            WIRE 208 1280 208 1504
            WIRE 208 1504 256 1504
            WIRE 208 1280 256 1280
            WIRE 576 800 688 800
            WIRE 688 800 720 800
            WIRE 688 800 688 1168
        END BRANCH
    END SHEET
END SCHEMATIC
