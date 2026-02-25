VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL wena
        SIGNAL wdata(63:0)
        SIGNAL r1data(63:0)
        SIGNAL r0data(63:0)
        SIGNAL waddr(1:0)
        SIGNAL r0addr(1:0)
        SIGNAL r1addr(1:0)
        SIGNAL waddr(0)
        SIGNAL waddr(1)
        SIGNAL XLXN_34(63:0)
        SIGNAL XLXN_35(63:0)
        SIGNAL XLXN_38(63:0)
        SIGNAL XLXN_39(63:0)
        SIGNAL XLXN_1
        SIGNAL clk
        PORT Input wena
        PORT Input wdata(63:0)
        PORT Output r1data(63:0)
        PORT Output r0data(63:0)
        PORT Input waddr(1:0)
        PORT Input r0addr(1:0)
        PORT Input r1addr(1:0)
        PORT Input clk
        BEGIN BLOCKDEF d2_4e
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 0 -320 64 -320 
            LINE N 384 -128 320 -128 
            LINE N 384 -192 320 -192 
            LINE N 384 -256 320 -256 
            LINE N 384 -320 320 -320 
        END BLOCKDEF
        BEGIN BLOCKDEF Mux4_1_64b
            TIMESTAMP 2026 2 18 2 38 18
            RECTANGLE N 64 -320 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -300 384 -276 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF reg_file_64
            TIMESTAMP 2026 2 18 2 33 56
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -32 0 -32 
            LINE N 64 -96 0 -96 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
        END BLOCKDEF
        BEGIN BLOCK XLXI_16 d2_4e
            PIN A0 waddr(0)
            PIN A1 waddr(1)
            PIN E wena
            PIN D0 XLXN_1
            PIN D1 XLXN_2
            PIN D2 XLXN_3
            PIN D3 XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_48 Mux4_1_64b
            PIN D0(63:0) XLXN_34(63:0)
            PIN D1(63:0) XLXN_35(63:0)
            PIN D2(63:0) XLXN_38(63:0)
            PIN D3(63:0) XLXN_39(63:0)
            PIN O(63:0) r0data(63:0)
            PIN S(1:0) r0addr(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_49 Mux4_1_64b
            PIN D0(63:0) XLXN_34(63:0)
            PIN D1(63:0) XLXN_35(63:0)
            PIN D2(63:0) XLXN_38(63:0)
            PIN D3(63:0) XLXN_39(63:0)
            PIN O(63:0) r1data(63:0)
            PIN S(1:0) r1addr(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_66 reg_file_64
            PIN CE XLXN_1
            PIN clk clk
            PIN D(63:0) wdata(63:0)
            PIN Q(63:0) XLXN_34(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_67 reg_file_64
            PIN CE XLXN_2
            PIN clk clk
            PIN D(63:0) wdata(63:0)
            PIN Q(63:0) XLXN_35(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_68 reg_file_64
            PIN CE XLXN_3
            PIN clk clk
            PIN D(63:0) wdata(63:0)
            PIN Q(63:0) XLXN_38(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_69 reg_file_64
            PIN CE XLXN_4
            PIN clk clk
            PIN D(63:0) wdata(63:0)
            PIN Q(63:0) XLXN_39(63:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_16 224 1120 R0
        BEGIN BRANCH XLXN_2
            WIRE 608 864 752 864
            WIRE 752 784 752 864
            WIRE 752 784 1216 784
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 608 928 624 928
            WIRE 624 928 864 928
            WIRE 864 928 864 976
            WIRE 864 976 1216 976
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 608 992 736 992
            WIRE 736 992 736 1168
            WIRE 736 1168 1216 1168
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1184 528 1200 528
            WIRE 1200 528 1216 528
            WIRE 1184 528 1184 720
            WIRE 1184 720 1216 720
            WIRE 1184 720 1184 912
            WIRE 1184 912 1216 912
            WIRE 1184 912 1184 1104
            WIRE 1184 1104 1216 1104
            BEGIN DISPLAY 1200 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wdata(63:0)
            WIRE 1152 464 1216 464
            WIRE 1152 464 1152 656
            WIRE 1152 656 1216 656
            WIRE 1152 656 1152 848
            WIRE 1152 848 1216 848
            WIRE 1152 848 1152 1040
            WIRE 1152 1040 1216 1040
            BEGIN DISPLAY 1152 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r1data(63:0)
            WIRE 1440 240 1520 240
        END BRANCH
        BEGIN BRANCH r0data(63:0)
            WIRE 1440 160 1520 160
        END BRANCH
        IOMARKER 1520 240 r1data(63:0) R0 28
        IOMARKER 1520 160 r0data(63:0) R0 28
        BEGIN BRANCH waddr(1:0)
            WIRE 480 240 560 240
        END BRANCH
        IOMARKER 480 240 waddr(1:0) R180 28
        BEGIN BRANCH r0addr(1:0)
            WIRE 2080 160 2160 160
        END BRANCH
        BEGIN BRANCH r1addr(1:0)
            WIRE 2080 240 2160 240
        END BRANCH
        BEGIN BRANCH wena
            WIRE 800 240 880 240
        END BRANCH
        IOMARKER 800 240 wena R180 28
        BEGIN BRANCH waddr(0)
            WIRE 144 800 176 800
            WIRE 176 800 224 800
            BEGIN DISPLAY 176 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH waddr(1)
            WIRE 144 864 176 864
            WIRE 176 864 224 864
            BEGIN DISPLAY 176 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wena
            WIRE 144 992 192 992
            WIRE 192 992 224 992
            BEGIN DISPLAY 192 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r1addr(1:0)
            WIRE 1888 1184 1968 1184
            BEGIN DISPLAY 1888 1184 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_48 1968 704 R0
        END INSTANCE
        BEGIN BRANCH r0data(63:0)
            WIRE 2352 416 2416 416
            WIRE 2416 416 2432 416
            BEGIN DISPLAY 2416 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r0addr(1:0)
            WIRE 1888 672 1952 672
            WIRE 1952 672 1968 672
            BEGIN DISPLAY 1952 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_49 1968 1216 R0
        END INSTANCE
        BEGIN BRANCH r1data(63:0)
            WIRE 2352 928 2416 928
            WIRE 2416 928 2432 928
            BEGIN DISPLAY 2416 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2080 160 r0addr(1:0) R180 28
        IOMARKER 2080 240 r1addr(1:0) R180 28
        BEGIN BRANCH XLXN_34(63:0)
            WIRE 1600 464 1776 464
            WIRE 1776 464 1776 608
            WIRE 1776 608 1776 1120
            WIRE 1776 1120 1968 1120
            WIRE 1776 608 1968 608
        END BRANCH
        BEGIN BRANCH XLXN_35(63:0)
            WIRE 1600 656 1760 656
            WIRE 1760 656 1760 1056
            WIRE 1760 1056 1968 1056
            WIRE 1760 544 1968 544
            WIRE 1760 544 1760 656
        END BRANCH
        BEGIN BRANCH XLXN_38(63:0)
            WIRE 1600 848 1744 848
            WIRE 1744 848 1744 992
            WIRE 1744 992 1968 992
            WIRE 1744 480 1744 848
            WIRE 1744 480 1968 480
        END BRANCH
        BEGIN BRANCH XLXN_39(63:0)
            WIRE 1600 1040 1728 1040
            WIRE 1728 416 1968 416
            WIRE 1728 416 1728 928
            WIRE 1728 928 1728 1040
            WIRE 1728 928 1968 928
        END BRANCH
        BEGIN BRANCH XLXN_1
            WIRE 608 800 736 800
            WIRE 736 592 736 800
            WIRE 736 592 1216 592
        END BRANCH
        BEGIN BRANCH clk
            WIRE 800 160 880 160
        END BRANCH
        IOMARKER 800 160 clk R180 28
        BEGIN BRANCH wdata(63:0)
            WIRE 1280 240 1360 240
        END BRANCH
        IOMARKER 1280 240 wdata(63:0) R180 28
        BEGIN INSTANCE XLXI_66 1216 624 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_67 1216 816 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_68 1216 1008 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_69 1216 1200 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
