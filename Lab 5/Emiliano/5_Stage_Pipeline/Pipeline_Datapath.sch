VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1(31:0)
        SIGNAL XLXN_8(63:0)
        SIGNAL XLXN_9(63:0)
        SIGNAL XLXN_19(63:0)
        SIGNAL XLXN_20(63:0)
        SIGNAL XLXN_25(63:0)
        SIGNAL XLXN_27(63:0)
        SIGNAL XLXN_27(7:0)
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_37(63:0)
        SIGNAL INS(25:24)
        SIGNAL INS(28:27)
        SIGNAL XLXN_42(1:0)
        SIGNAL XLXN_43(1:0)
        SIGNAL XLXN_46(1:0)
        SIGNAL XLXN_48
        SIGNAL XLXN_49(63:0)
        SIGNAL INS(31:0)
        SIGNAL DIN(31:0)
        SIGNAL IM_WE
        SIGNAL CLK
        SIGNAL INS(30)
        SIGNAL XLXN_23
        SIGNAL XLXN_18
        SIGNAL vdd
        SIGNAL XLXN_125(8:0)
        SIGNAL XLXN_77
        SIGNAL XLXN_81(8:0)
        SIGNAL IM_CLR
        SIGNAL XLXN_140(8:0)
        SIGNAL XLXN_141(8:0)
        SIGNAL INS(22:21)
        PORT Input DIN(31:0)
        PORT Input IM_WE
        PORT Input CLK
        PORT Input IM_CLR
        BEGIN BLOCKDEF I_Mem
            TIMESTAMP 2026 2 12 23 27 55
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
            TIMESTAMP 2026 2 13 0 40 31
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
            TIMESTAMP 2026 2 12 10 3 56
            LINE N 64 32 0 32 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 64 -128 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF ifd64
            TIMESTAMP 2026 2 12 23 10 42
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF ifd2
            TIMESTAMP 2026 2 13 0 58 54
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -32 0 -32 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
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
            TIMESTAMP 2026 2 13 2 46 34
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
        END BLOCKDEF
        BEGIN BLOCK XLXI_5 ifd32
            PIN D(31:0) XLXN_1(31:0)
            PIN CLK CLK
            PIN Q(31:0) INS(31:0)
            PIN CE
        END BLOCK
        BEGIN BLOCK XLXI_4 Register_File_16b
            PIN wena XLXN_48
            PIN clk CLK
            PIN wdata(63:0) XLXN_49(63:0)
            PIN waddr(1:0) XLXN_46(1:0)
            PIN r0addr(1:0) INS(28:27)
            PIN r1addr(1:0) INS(25:24)
            PIN r1data(63:0) XLXN_8(63:0)
            PIN r0data(63:0) XLXN_9(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 ifd64
            PIN CE vdd
            PIN CLK CLK
            PIN D(63:0) XLXN_9(63:0)
            PIN Q(63:0) XLXN_20(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 ifd64
            PIN CE vdd
            PIN CLK CLK
            PIN D(63:0) XLXN_8(63:0)
            PIN Q(63:0) XLXN_19(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_14 ifd64
            PIN CE vdd
            PIN CLK CLK
            PIN D(63:0) XLXN_20(63:0)
            PIN Q(63:0) XLXN_25(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_15 ifd64
            PIN CE vdd
            PIN CLK CLK
            PIN D(63:0) XLXN_19(63:0)
            PIN Q(63:0) XLXN_27(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_32 D_Mem
            PIN addra(7:0) XLXN_27(7:0)
            PIN clka
            PIN addrb(7:0) XLXN_27(7:0)
            PIN dinb(63:0) XLXN_25(63:0)
            PIN web XLXN_30
            PIN clkb CLK
            PIN douta(63:0) XLXN_37(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_34 ifd64
            PIN CE
            PIN CLK CLK
            PIN D(63:0) XLXN_37(63:0)
            PIN Q(63:0) XLXN_49(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_33 fd
            PIN C CLK
            PIN D XLXN_31
            PIN Q XLXN_48
        END BLOCK
        BEGIN BLOCK XLXI_45 ifd2
            PIN clk CLK
            PIN D(1:0) INS(22:21)
            PIN Q(1:0) XLXN_42(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_46 ifd2
            PIN clk CLK
            PIN D(1:0) XLXN_42(1:0)
            PIN Q(1:0) XLXN_43(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_47 ifd2
            PIN clk CLK
            PIN D(1:0) XLXN_43(1:0)
            PIN Q(1:0) XLXN_46(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_1 I_Mem
            PIN addr(8:0) XLXN_140(8:0)
            PIN din(31:0) DIN(31:0)
            PIN we IM_WE
            PIN clk CLK
            PIN dout(31:0) XLXN_1(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_17 fd
            PIN C CLK
            PIN D XLXN_18
            PIN Q XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_16 fd
            PIN C CLK
            PIN D XLXN_23
            PIN Q XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_9 fd
            PIN C CLK
            PIN D INS(30)
            PIN Q XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_8 fd
            PIN C CLK
            PIN D INS(30)
            PIN Q XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_66 adder_9bit
            PIN A(8:0) XLXN_140(8:0)
            PIN B(8:0)
            PIN Cin XLXN_77
            PIN Cout
            PIN S(8:0) XLXN_81(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_67 vcc
            PIN P XLXN_77
        END BLOCK
        BEGIN BLOCK XLXI_73 ifd9
            PIN CLK CLK
            PIN CLR IM_CLR
            PIN D(8:0) XLXN_81(8:0)
            PIN Q(8:0) XLXN_140(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_72 vcc
            PIN P vdd
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_1(31:0)
            WIRE 544 1280 576 1280
        END BRANCH
        BEGIN INSTANCE XLXI_7 1712 1776 R0
        END INSTANCE
        BEGIN BRANCH XLXN_8(63:0)
            WIRE 1600 1296 1712 1296
        END BRANCH
        BEGIN INSTANCE XLXI_6 1712 1456 R0
        END INSTANCE
        BEGIN BRANCH XLXN_9(63:0)
            WIRE 1600 1616 1712 1616
        END BRANCH
        BEGIN BRANCH XLXN_19(63:0)
            WIRE 2096 1296 2144 1296
        END BRANCH
        BEGIN BRANCH XLXN_20(63:0)
            WIRE 2096 1616 2144 1616
        END BRANCH
        BEGIN INSTANCE XLXI_14 2144 1776 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_15 2144 1456 R0
        END INSTANCE
        BEGIN BRANCH XLXN_25(63:0)
            WIRE 2528 1616 2688 1616
        END BRANCH
        BEGIN BRANCH XLXN_27(63:0)
            WIRE 2528 1296 2544 1296
            WIRE 2544 1296 2544 1360
            WIRE 2544 1360 2544 1584
        END BRANCH
        BUSTAP 2544 1360 2640 1360
        BEGIN BRANCH XLXN_27(7:0)
            WIRE 2640 1360 2656 1360
            WIRE 2656 1360 2688 1360
            BEGIN DISPLAY 2664 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2544 1584 2640 1584
        BEGIN BRANCH XLXN_27(7:0)
            WIRE 2640 1584 2656 1584
            WIRE 2656 1584 2688 1584
            BEGIN DISPLAY 2664 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_32 2688 1312 R0
        END INSTANCE
        BEGIN BRANCH XLXN_30
            WIRE 2528 672 2672 672
            WIRE 2672 672 2672 1648
            WIRE 2672 1648 2688 1648
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 2528 928 3024 928
        END BRANCH
        BEGIN INSTANCE XLXI_34 3024 1520 R0
        END INSTANCE
        INSTANCE XLXI_33 3024 1184 R0
        BEGIN BRANCH XLXN_37(63:0)
            WIRE 2976 1360 3024 1360
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 3008 1056 3024 1056
            WIRE 3008 1056 3008 1088
            WIRE 3008 1088 3008 1488
            WIRE 3008 1488 3024 1488
            WIRE 3008 1488 3008 1936
            WIRE 3008 1936 3024 1936
            BEGIN DISPLAY 3008 1088 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INS(25:24)
            WIRE 1072 1616 1072 1616
            WIRE 1072 1616 1216 1616
            BEGIN DISPLAY 1080 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INS(28:27)
            WIRE 1072 1552 1072 1552
            WIRE 1072 1552 1216 1552
            BEGIN DISPLAY 1080 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_45 1728 1968 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_46 2144 1968 R0
        END INSTANCE
        BEGIN BRANCH XLXN_42(1:0)
            WIRE 2112 1872 2144 1872
        END BRANCH
        BEGIN BRANCH XLXN_43(1:0)
            WIRE 2528 1872 3024 1872
        END BRANCH
        BEGIN INSTANCE XLXI_47 3024 1968 R0
        END INSTANCE
        BEGIN BRANCH XLXN_46(1:0)
            WIRE 1168 1488 1216 1488
            WIRE 1168 1488 1168 2032
            WIRE 1168 2032 3424 2032
            WIRE 3408 1872 3424 1872
            WIRE 3424 1872 3424 2032
        END BRANCH
        BEGIN BRANCH XLXN_49(63:0)
            WIRE 1168 1200 1168 1424
            WIRE 1168 1424 1216 1424
            WIRE 1168 1200 3424 1200
            WIRE 3424 1200 3424 1360
            WIRE 3408 1360 3424 1360
        END BRANCH
        BEGIN INSTANCE XLXI_4 1216 1648 R0
        END INSTANCE
        BEGIN BRANCH XLXN_48
            WIRE 1152 1184 1152 1296
            WIRE 1152 1296 1216 1296
            WIRE 1152 1184 3424 1184
            WIRE 3408 928 3424 928
            WIRE 3424 928 3424 1184
        END BRANCH
        BEGIN BRANCH INS(31:0)
            WIRE 960 1280 976 1280
            WIRE 976 1280 976 1552
            WIRE 976 1552 976 1616
            WIRE 976 1616 976 1872
            WIRE 976 1872 976 2048
            WIRE 976 544 976 672
            WIRE 976 672 976 928
            WIRE 976 928 976 1280
        END BRANCH
        BUSTAP 976 672 1072 672
        BUSTAP 976 1616 1072 1616
        BUSTAP 976 1552 1072 1552
        BEGIN BRANCH DIN(31:0)
            WIRE 160 1312 192 1312
        END BRANCH
        BEGIN BRANCH IM_WE
            WIRE 144 1344 192 1344
        END BRANCH
        IOMARKER 144 1344 IM_WE R180 28
        BEGIN INSTANCE XLXI_5 576 1376 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 192 1232 R0
        END INSTANCE
        IOMARKER 160 1312 DIN(31:0) R180 28
        BEGIN BRANCH CLK
            WIRE 144 1472 176 1472
            WIRE 176 1472 192 1472
            WIRE 176 1472 176 1520
            WIRE 176 1520 560 1520
            WIRE 560 1520 1136 1520
            WIRE 560 1344 576 1344
            WIRE 560 1344 560 1520
            WIRE 1136 1360 1216 1360
            WIRE 1136 1360 1136 1520
        END BRANCH
        IOMARKER 144 1472 CLK R180 28
        BEGIN BRANCH INS(30)
            WIRE 1072 672 1360 672
            WIRE 1360 672 1712 672
            BEGIN DISPLAY 1360 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 2096 928 2144 928
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 2096 672 2144 672
        END BRANCH
        INSTANCE XLXI_17 2144 928 R0
        INSTANCE XLXI_16 2144 1184 R0
        INSTANCE XLXI_9 1712 928 R0
        INSTANCE XLXI_8 1712 1184 R0
        BEGIN BRANCH CLK
            WIRE 1696 800 1712 800
            WIRE 1696 800 1696 1024
            WIRE 1696 1024 1696 1056
            WIRE 1696 1056 1712 1056
            WIRE 1696 1056 1696 1424
            WIRE 1696 1424 1712 1424
            WIRE 1696 1424 1696 1744
            WIRE 1696 1744 1696 1936
            WIRE 1696 1936 1728 1936
            WIRE 1696 1744 1712 1744
            BEGIN DISPLAY 1696 1024 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2128 800 2144 800
            WIRE 2128 800 2128 1040
            WIRE 2128 1040 2128 1056
            WIRE 2128 1056 2144 1056
            WIRE 2128 1056 2128 1424
            WIRE 2128 1424 2128 1744
            WIRE 2128 1744 2128 1936
            WIRE 2128 1936 2144 1936
            WIRE 2128 1744 2144 1744
            WIRE 2128 1424 2144 1424
            BEGIN DISPLAY 2128 1040 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2640 1776 2688 1776
            BEGIN DISPLAY 2640 1776 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 1680 1360 1712 1360
            WIRE 1680 1360 1680 1680
            WIRE 1680 1680 1712 1680
            BEGIN DISPLAY 1680 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 2112 1360 2144 1360
            WIRE 2112 1360 2112 1680
            WIRE 2112 1680 2144 1680
            BEGIN DISPLAY 2112 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_66 720 416 R0
        END INSTANCE
        INSTANCE XLXI_67 576 384 R0
        BEGIN INSTANCE XLXI_73 192 416 R0
        END INSTANCE
        BEGIN BRANCH XLXN_77
            WIRE 640 384 720 384
        END BRANCH
        BEGIN BRANCH XLXN_81(8:0)
            WIRE 128 144 128 256
            WIRE 128 256 192 256
            WIRE 128 144 1120 144
            WIRE 1120 144 1120 256
            WIRE 1104 256 1120 256
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 144 320 160 320
            WIRE 160 320 192 320
            BEGIN DISPLAY 160 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IM_CLR
            WIRE 160 384 192 384
        END BRANCH
        IOMARKER 160 384 IM_CLR R180 28
        BEGIN BRANCH XLXN_140(8:0)
            WIRE 112 1152 112 1280
            WIRE 112 1280 192 1280
            WIRE 112 1152 592 1152
            WIRE 576 256 592 256
            WIRE 592 256 592 1152
            WIRE 592 256 720 256
        END BRANCH
        BUSTAP 976 928 1072 928
        BEGIN BRANCH INS(30)
            WIRE 1072 928 1392 928
            WIRE 1392 928 1712 928
            BEGIN DISPLAY 1392 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 976 1872 1072 1872
        BEGIN BRANCH INS(22:21)
            WIRE 1072 1872 1392 1872
            WIRE 1392 1872 1728 1872
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
    END SHEET
END SCHEMATIC
