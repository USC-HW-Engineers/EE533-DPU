VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL IM_OUT(31:0)
        SIGNAL M_R1(63:0)
        SIGNAL XLXN_3(63:0)
        SIGNAL INS(25:24)
        SIGNAL INS(28:27)
        SIGNAL INS(31:0)
        SIGNAL XLXN_7(31:0)
        SIGNAL ID_R2(63:0)
        SIGNAL ID_R1(63:0)
        SIGNAL XLXN_160
        SIGNAL XLXN_161
        SIGNAL EX_R1(63:0)
        SIGNAL EX_R2(63:0)
        SIGNAL XLXN_164(1:0)
        SIGNAL WB_ADDR(1:0)
        SIGNAL XLXN_16(1:0)
        SIGNAL INS(31)
        SIGNAL M_R2(63:0)
        SIGNAL M_OUT(63:0)
        SIGNAL CLK
        SIGNAL M_WM
        SIGNAL XLXN_21
        SIGNAL XLXN_191
        SIGNAL XLXN_192(1:0)
        SIGNAL vdd
        SIGNAL CLR_ALL
        SIGNAL XLXN_29
        SIGNAL XLXN_32
        SIGNAL WB_WRITE
        SIGNAL WB_DATA(63:0)
        SIGNAL XLXN_35(63:0)
        SIGNAL INS(30)
        SIGNAL M_R1(7:0)
        SIGNAL XLXN_37(7:0)
        SIGNAL XLXN_38
        SIGNAL DIN(31:0)
        SIGNAL IM_WE
        SIGNAL IM_CLR
        SIGNAL B(8:0)
        SIGNAL INS(22:21)
        SIGNAL XLXN_48(1:0)
        SIGNAL XLXN_230(8:0)
        SIGNAL XLXN_231(8:0)
        SIGNAL XLXN_53(8:0)
        PORT Input CLK
        PORT Input CLR_ALL
        PORT Input DIN(31:0)
        PORT Input IM_WE
        PORT Input IM_CLR
        PORT Input B(8:0)
        BEGIN BLOCKDEF ID_EX_Reg
            TIMESTAMP 2026 2 18 2 47 59
            RECTANGLE N 64 -512 320 0 
            LINE N 64 -32 0 -32 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 320 -352 384 -352 
            RECTANGLE N 320 -364 384 -340 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -480 384 -480 
            LINE N 320 -416 384 -416 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
        END BLOCKDEF
        BEGIN BLOCKDEF D_Mem
            TIMESTAMP 2026 2 18 2 53 37
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
        BEGIN BLOCKDEF EX_WB_Reg
            TIMESTAMP 2026 2 18 2 49 34
            RECTANGLE N 64 -384 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -352 0 -352 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -352 384 -352 
        END BLOCKDEF
        BEGIN BLOCKDEF I_Mem_Dual
            TIMESTAMP 2026 2 18 2 53 54
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
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF Register_File
            TIMESTAMP 2026 2 18 2 51 34
            RECTANGLE N 64 -384 320 0 
            LINE N 64 -288 0 -288 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -352 0 -352 
            LINE N 320 -352 384 -352 
            RECTANGLE N 320 -364 384 -340 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF RCA_9bit
            TIMESTAMP 2026 2 18 2 55 18
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
        BEGIN BLOCKDEF PC_9b
            TIMESTAMP 2026 2 18 2 59 37
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
        END BLOCKDEF
        BEGIN BLOCKDEF dff32
            TIMESTAMP 2026 2 18 2 59 59
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCK XLXI_74 ID_EX_Reg
            PIN CE vdd
            PIN CLK CLK
            PIN CLR CLR_ALL
            PIN EX_R1(63:0) EX_R1(63:0)
            PIN EX_R2(63:0) EX_R2(63:0)
            PIN EX_REG1(1:0) XLXN_164(1:0)
            PIN EX_WME XLXN_160
            PIN EX_WRE XLXN_161
            PIN ID_R1(63:0) ID_R1(63:0)
            PIN ID_R2(63:0) ID_R2(63:0)
            PIN ID_REG1(1:0) INS(22:21)
            PIN ID_WME INS(31)
            PIN ID_WRE INS(30)
        END BLOCK
        BEGIN BLOCK XLXI_75 ID_EX_Reg
            PIN CE vdd
            PIN CLK CLK
            PIN CLR CLR_ALL
            PIN EX_R1(63:0) M_R1(63:0)
            PIN EX_R2(63:0) M_R2(63:0)
            PIN EX_REG1(1:0) XLXN_192(1:0)
            PIN EX_WME M_WM
            PIN EX_WRE XLXN_191
            PIN ID_R1(63:0) EX_R1(63:0)
            PIN ID_R2(63:0) EX_R2(63:0)
            PIN ID_REG1(1:0) XLXN_164(1:0)
            PIN ID_WME XLXN_160
            PIN ID_WRE XLXN_161
        END BLOCK
        BEGIN BLOCK XLXI_32 D_Mem
            PIN addra(7:0) M_R1(7:0)
            PIN clka CLK
            PIN addrb(7:0) XLXN_37(7:0)
            PIN dinb(63:0) M_R2(63:0)
            PIN web M_WM
            PIN clkb CLK
            PIN douta(63:0) M_OUT(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_80 EX_WB_Reg
            PIN CE XLXN_29
            PIN CLK CLK
            PIN CLR CLR_ALL
            PIN EX_DOUT(63:0) M_OUT(63:0)
            PIN EX_REG1(1:0) XLXN_192(1:0)
            PIN EX_WRE XLXN_191
            PIN WB_DOUT(63:0) WB_DATA(63:0)
            PIN WB_REG1(1:0) WB_ADDR(1:0)
            PIN WB_WRE WB_WRITE
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
        BEGIN BLOCK XLXI_72 vcc
            PIN P vdd
        END BLOCK
        BEGIN BLOCK XLXI_90 Register_File
            PIN clk CLK
            PIN r0addr(1:0) INS(28:27)
            PIN r1addr(1:0) INS(25:24)
            PIN waddr(1:0) WB_ADDR(1:0)
            PIN wdata(63:0) WB_DATA(63:0)
            PIN wena WB_WRITE
            PIN r0data(63:0) ID_R1(63:0)
            PIN r1data(63:0) ID_R2(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_91 RCA_9bit
            PIN A(8:0) XLXN_231(8:0)
            PIN B(8:0) B(8:0)
            PIN Cin vdd
            PIN Cout
            PIN S(8:0) XLXN_230(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_92 PC_9b
            PIN CLK CLK
            PIN CLR IM_CLR
            PIN D(8:0) XLXN_230(8:0)
            PIN Q(8:0) XLXN_231(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_93 dff32
            PIN CE vdd
            PIN CLK CLK
            PIN CLR XLXN_38
            PIN D(31:0) IM_OUT(31:0)
            PIN Q(31:0) INS(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN BRANCH IM_OUT(31:0)
            WIRE 1344 1632 1376 1632
        END BRANCH
        BEGIN BRANCH M_R1(63:0)
            WIRE 3248 1648 3296 1648
            WIRE 3296 1648 3344 1648
            WIRE 3344 1648 3344 1680
            WIRE 3344 1680 3344 1696
            WIRE 3344 1392 3344 1456
            WIRE 3344 1456 3344 1648
        END BRANCH
        BEGIN BRANCH INS(25:24)
            WIRE 1872 1968 1872 1968
            WIRE 1872 1968 1936 1968
            BEGIN DISPLAY 1880 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INS(28:27)
            WIRE 1872 1904 1872 1904
            WIRE 1872 1904 1936 1904
            BEGIN DISPLAY 1880 1904 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INS(31:0)
            WIRE 1760 1632 1776 1632
            WIRE 1776 1632 1776 1904
            WIRE 1776 1904 1776 1968
            WIRE 1776 1968 1776 2128
            WIRE 1776 2128 1776 2192
            WIRE 1776 1472 1776 1520
            WIRE 1776 1520 1776 1584
            WIRE 1776 1584 1776 1632
        END BRANCH
        BUSTAP 1776 1968 1872 1968
        BUSTAP 1776 1904 1872 1904
        BEGIN BRANCH ID_R2(63:0)
            WIRE 2320 1968 2336 1968
            WIRE 2336 1712 2336 1968
            WIRE 2336 1712 2384 1712
        END BRANCH
        BEGIN BRANCH ID_R1(63:0)
            WIRE 2320 1648 2384 1648
        END BRANCH
        BEGIN INSTANCE XLXI_74 2384 2000 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_75 2864 2000 R0
        END INSTANCE
        BEGIN BRANCH XLXN_160
            WIRE 2768 1520 2816 1520
            WIRE 2816 1520 2864 1520
        END BRANCH
        BEGIN BRANCH XLXN_161
            WIRE 2768 1584 2816 1584
            WIRE 2816 1584 2864 1584
        END BRANCH
        BEGIN BRANCH EX_R1(63:0)
            WIRE 2768 1648 2816 1648
            WIRE 2816 1648 2864 1648
        END BRANCH
        BEGIN BRANCH EX_R2(63:0)
            WIRE 2768 1712 2816 1712
            WIRE 2816 1712 2864 1712
        END BRANCH
        BEGIN BRANCH XLXN_164(1:0)
            WIRE 2768 1776 2816 1776
            WIRE 2816 1776 2864 1776
        END BRANCH
        BEGIN BRANCH WB_ADDR(1:0)
            WIRE 1920 1840 1936 1840
            WIRE 1920 1840 1920 2112
            WIRE 1920 2112 4272 2112
            WIRE 4192 1520 4240 1520
            WIRE 4240 1520 4272 1520
            WIRE 4272 1520 4272 2112
        END BRANCH
        BUSTAP 1776 1520 1872 1520
        BEGIN BRANCH INS(31)
            WIRE 1872 1520 2160 1520
            WIRE 2160 1520 2384 1520
            BEGIN DISPLAY 2160 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH M_R2(63:0)
            WIRE 3248 1712 3296 1712
            WIRE 3296 1712 3488 1712
        END BRANCH
        BEGIN BRANCH M_OUT(63:0)
            WIRE 3776 1456 3808 1456
        END BRANCH
        BEGIN INSTANCE XLXI_32 3488 1408 R0
        END INSTANCE
        BEGIN BRANCH CLK
            WIRE 3472 1648 3488 1648
            WIRE 3472 1648 3472 1824
            WIRE 3472 1824 3472 1872
            WIRE 3472 1872 3488 1872
            BEGIN DISPLAY 3472 1824 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH M_WM
            WIRE 3248 1520 3296 1520
            WIRE 3296 1520 3328 1520
            WIRE 3328 1520 3328 1744
            WIRE 3328 1744 3488 1744
        END BRANCH
        BEGIN BRANCH XLXN_191
            WIRE 3248 1584 3296 1584
            WIRE 3296 1584 3392 1584
            WIRE 3392 1392 3808 1392
            WIRE 3392 1392 3392 1584
        END BRANCH
        BEGIN BRANCH XLXN_192(1:0)
            WIRE 3248 1776 3296 1776
            WIRE 3296 1776 3312 1776
            WIRE 3312 1776 3312 1968
            WIRE 3312 1968 3792 1968
            WIRE 3792 1520 3792 1968
            WIRE 3792 1520 3808 1520
        END BRANCH
        BEGIN INSTANCE XLXI_80 3808 1744 R0
        END INSTANCE
        BEGIN BRANCH vdd
            WIRE 2368 1968 2384 1968
            WIRE 2368 1968 2368 2080
            WIRE 2368 2080 2512 2080
            WIRE 2512 2080 2848 2080
            WIRE 2848 1968 2848 2080
            WIRE 2848 1968 2864 1968
            BEGIN DISPLAY 2512 2080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLR_ALL
            WIRE 2320 1904 2384 1904
            BEGIN DISPLAY 2320 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2320 1840 2368 1840
            WIRE 2368 1840 2384 1840
            BEGIN DISPLAY 2368 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLR_ALL
            WIRE 2832 1904 2864 1904
            BEGIN DISPLAY 2832 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2832 1840 2864 1840
            BEGIN DISPLAY 2832 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 3776 1584 3808 1584
            BEGIN DISPLAY 3776 1584 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 3776 1648 3808 1648
            BEGIN DISPLAY 3776 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLR_ALL
            WIRE 3776 1712 3808 1712
            BEGIN DISPLAY 3776 1712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WB_WRITE
            WIRE 1936 1280 4304 1280
            WIRE 4304 1280 4304 1392
            WIRE 1936 1280 1936 1648
            WIRE 4192 1392 4240 1392
            WIRE 4240 1392 4304 1392
        END BRANCH
        BEGIN BRANCH WB_DATA(63:0)
            WIRE 1904 1776 1936 1776
            WIRE 1904 1776 1904 2096
            WIRE 1904 2096 4304 2096
            WIRE 4192 1456 4240 1456
            WIRE 4240 1456 4304 1456
            WIRE 4304 1456 4304 2096
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 1344 1696 1360 1696
            WIRE 1360 1696 1376 1696
            BEGIN DISPLAY 1360 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1776 1584 1872 1584
        BEGIN BRANCH INS(30)
            WIRE 1872 1584 2128 1584
            WIRE 2128 1584 2384 1584
            BEGIN DISPLAY 2128 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3344 1456 3440 1456
        BEGIN BRANCH M_R1(7:0)
            WIRE 3440 1456 3456 1456
            WIRE 3456 1456 3456 1456
            WIRE 3456 1456 3488 1456
            BEGIN DISPLAY 3464 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3344 1680 3440 1680
        BEGIN BRANCH XLXN_37(7:0)
            WIRE 3440 1680 3456 1680
            WIRE 3456 1680 3456 1680
            WIRE 3456 1680 3488 1680
            BEGIN DISPLAY 3464 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_38
            WIRE 1344 1824 1376 1824
            BEGIN DISPLAY 1344 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DIN(31:0)
            WIRE 976 1888 1056 1888
        END BRANCH
        BEGIN INSTANCE XLXI_89 1056 1584 R0
        END INSTANCE
        BEGIN BRANCH IM_WE
            WIRE 976 1920 1056 1920
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 976 1824 1040 1824
            WIRE 1040 1824 1056 1824
            WIRE 1040 1824 1040 2048
            WIRE 1040 2048 1056 2048
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1360 1760 1376 1760
            WIRE 1360 1760 1360 1872
            WIRE 1360 1872 1808 1872
            WIRE 1808 1712 1808 1872
            WIRE 1808 1712 1936 1712
            BEGIN DISPLAY 1360 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IM_CLR
            WIRE 960 1280 992 1280
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 944 1216 960 1216
            WIRE 960 1216 992 1216
            BEGIN DISPLAY 960 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 1440 1280 1472 1280
            WIRE 1472 1280 1520 1280
            BEGIN DISPLAY 1472 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(8:0)
            WIRE 1472 1216 1520 1216
        END BRANCH
        BEGIN BRANCH INS(22:21)
            WIRE 1872 2128 2192 2128
            WIRE 2192 2128 2192 2128
            WIRE 2192 2128 2352 2128
            WIRE 2352 1776 2384 1776
            WIRE 2352 1776 2352 2128
            BEGIN DISPLAY 2200 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1776 2128 1872 2128
        INSTANCE XLXI_72 2368 1200 R0
        BEGIN BRANCH vdd
            WIRE 2432 1200 2432 1216
            BEGIN DISPLAY 2432 1216 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLR_ALL
            WIRE 2176 1200 2272 1200
        END BRANCH
        BEGIN BRANCH XLXN_230(8:0)
            WIRE 928 1056 928 1152
            WIRE 928 1152 992 1152
            WIRE 928 1056 1968 1056
            WIRE 1968 1056 1968 1152
            WIRE 1904 1152 1968 1152
        END BRANCH
        BEGIN BRANCH XLXN_231(8:0)
            WIRE 1008 1520 1488 1520
            WIRE 1008 1520 1008 1632
            WIRE 1008 1632 1008 1856
            WIRE 1008 1856 1056 1856
            WIRE 1008 1632 1056 1632
            WIRE 1376 1152 1488 1152
            WIRE 1488 1152 1520 1152
            WIRE 1488 1152 1488 1520
        END BRANCH
        BEGIN INSTANCE XLXI_90 1936 2000 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_91 1520 1312 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_92 992 1312 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_93 1376 1856 R0
        END INSTANCE
        IOMARKER 976 1888 DIN(31:0) R180 28
        IOMARKER 976 1920 IM_WE R180 28
        IOMARKER 976 1824 CLK R180 28
        IOMARKER 960 1280 IM_CLR R180 28
        IOMARKER 1472 1216 B(8:0) R180 28
        IOMARKER 2176 1200 CLR_ALL R180 28
    END SHEET
END SCHEMATIC
