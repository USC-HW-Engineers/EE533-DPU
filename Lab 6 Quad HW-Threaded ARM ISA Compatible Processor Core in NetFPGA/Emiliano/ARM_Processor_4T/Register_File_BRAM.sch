VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL wdata(63:0)
        SIGNAL wena
        SIGNAL r0data(63:0)
        SIGNAL r1data(63:0)
        SIGNAL waddr(3:0)
        SIGNAL r1addr(3:0)
        SIGNAL r0addr(3:0)
        SIGNAL XLXN_8
        SIGNAL XLXN_14(5:0)
        SIGNAL R_ID(1:0)
        SIGNAL W_ID(1:0)
        SIGNAL XLXN_18(5:0)
        SIGNAL XLXN_19(5:0)
        SIGNAL XLXN_20(5:0)
        PORT Input clk
        PORT Input wdata(63:0)
        PORT Input wena
        PORT Output r0data(63:0)
        PORT Output r1data(63:0)
        PORT Input waddr(3:0)
        PORT Input r1addr(3:0)
        PORT Input r0addr(3:0)
        PORT Input R_ID(1:0)
        PORT Input W_ID(1:0)
        BEGIN BLOCKDEF busmerge4_2
            TIMESTAMP 2026 2 21 8 20 46
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF Reg_File_Dual
            TIMESTAMP 2026 2 21 7 59 41
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
        BEGIN BLOCK XLXI_66 busmerge4_2
            PIN da(1:0) R_ID(1:0)
            PIN db(3:0) r0addr(3:0)
            PIN q(5:0) XLXN_18(5:0)
        END BLOCK
        BEGIN BLOCK XLXI_67 busmerge4_2
            PIN da(1:0) R_ID(1:0)
            PIN db(3:0) r1addr(3:0)
            PIN q(5:0) XLXN_19(5:0)
        END BLOCK
        BEGIN BLOCK XLXI_73 Reg_File_Dual
            PIN addra(5:0) XLXN_20(5:0)
            PIN dina(63:0) wdata(63:0)
            PIN wea wena
            PIN clka clk
            PIN addrb(5:0) XLXN_18(5:0)
            PIN clkb clk
            PIN doutb(63:0) r0data(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_74 Reg_File_Dual
            PIN addra(5:0) XLXN_20(5:0)
            PIN dina(63:0) wdata(63:0)
            PIN wea wena
            PIN clka clk
            PIN addrb(5:0) XLXN_19(5:0)
            PIN clkb clk
            PIN doutb(63:0) r1data(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_68 busmerge4_2
            PIN da(1:0) W_ID(1:0)
            PIN db(3:0) waddr(3:0)
            PIN q(5:0) XLXN_20(5:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH clk
            WIRE 1472 1488 1536 1488
            WIRE 1536 1488 1536 1712
            WIRE 1536 1712 1616 1712
            WIRE 1536 1488 1616 1488
            WIRE 1536 944 1536 1168
            WIRE 1536 1168 1536 1488
            WIRE 1536 1168 1616 1168
            WIRE 1536 944 1616 944
        END BRANCH
        BEGIN BRANCH wdata(63:0)
            WIRE 1472 1104 1568 1104
            WIRE 1568 1104 1568 1328
            WIRE 1568 1328 1616 1328
            WIRE 1568 784 1616 784
            WIRE 1568 784 1568 1104
        END BRANCH
        BEGIN BRANCH r0data(63:0)
            WIRE 1904 976 1984 976
        END BRANCH
        IOMARKER 1984 976 r0data(63:0) R0 28
        BEGIN BRANCH r1data(63:0)
            WIRE 1904 1520 1984 1520
        END BRANCH
        IOMARKER 1984 1520 r1data(63:0) R0 28
        BEGIN BRANCH wena
            WIRE 1472 1360 1584 1360
            WIRE 1584 1360 1616 1360
            WIRE 1584 816 1616 816
            WIRE 1584 816 1584 1360
        END BRANCH
        IOMARKER 1472 1360 wena R180 28
        IOMARKER 1472 1488 clk R180 28
        IOMARKER 1472 1104 wdata(63:0) R180 28
        BEGIN BRANCH r1addr(3:0)
            WIRE 560 784 688 784
        END BRANCH
        IOMARKER 560 784 r1addr(3:0) R180 28
        BEGIN BRANCH r0addr(3:0)
            WIRE 560 592 688 592
        END BRANCH
        IOMARKER 560 592 r0addr(3:0) R180 28
        IOMARKER 560 976 waddr(3:0) R180 28
        BEGIN BRANCH waddr(3:0)
            WIRE 560 976 688 976
        END BRANCH
        BEGIN INSTANCE XLXI_66 688 624 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_67 688 816 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_73 1616 704 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_74 1616 1248 R0
        END INSTANCE
        BEGIN BRANCH R_ID(1:0)
            WIRE 560 864 656 864
            WIRE 656 528 688 528
            WIRE 656 528 656 720
            WIRE 656 720 688 720
            WIRE 656 720 656 864
        END BRANCH
        BEGIN INSTANCE XLXI_68 688 1008 R0
        END INSTANCE
        IOMARKER 560 864 R_ID(1:0) R180 28
        BEGIN BRANCH W_ID(1:0)
            WIRE 560 1040 656 1040
            WIRE 656 912 688 912
            WIRE 656 912 656 1040
        END BRANCH
        IOMARKER 560 1040 W_ID(1:0) R180 28
        BEGIN BRANCH XLXN_18(5:0)
            WIRE 1072 528 1344 528
            WIRE 1344 528 1344 976
            WIRE 1344 976 1616 976
        END BRANCH
        BEGIN BRANCH XLXN_19(5:0)
            WIRE 1072 720 1280 720
            WIRE 1280 720 1280 1520
            WIRE 1280 1520 1616 1520
        END BRANCH
        BEGIN BRANCH XLXN_20(5:0)
            WIRE 1072 912 1328 912
            WIRE 1328 912 1488 912
            WIRE 1488 912 1488 1296
            WIRE 1488 1296 1616 1296
            WIRE 1328 752 1328 912
            WIRE 1328 752 1616 752
        END BRANCH
    END SHEET
END SCHEMATIC
