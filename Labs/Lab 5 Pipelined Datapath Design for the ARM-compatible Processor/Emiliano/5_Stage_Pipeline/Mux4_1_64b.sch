VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL S(1:0)
        SIGNAL O(63:0)
        SIGNAL D0(63:0)
        SIGNAL D1(63:0)
        SIGNAL D2(63:0)
        SIGNAL D3(63:0)
        SIGNAL D2(15:0)
        SIGNAL D3(15:0)
        SIGNAL D0(15:0)
        SIGNAL D1(15:0)
        SIGNAL D2(31:16)
        SIGNAL D3(31:16)
        SIGNAL D0(31:16)
        SIGNAL D1(31:16)
        SIGNAL D2(47:32)
        SIGNAL D3(47:32)
        SIGNAL D0(47:32)
        SIGNAL D1(47:32)
        SIGNAL D0(63:48)
        SIGNAL O(31:16)
        SIGNAL D1(63:48)
        SIGNAL D2(63:48)
        SIGNAL D3(63:48)
        SIGNAL O(63:48)
        SIGNAL O(15:0)
        SIGNAL O(47:32)
        PORT Input S(1:0)
        PORT Output O(63:0)
        PORT Input D0(63:0)
        PORT Input D1(63:0)
        PORT Input D2(63:0)
        PORT Input D3(63:0)
        BEGIN BLOCKDEF Mux4_1_16b
            TIMESTAMP 2026 2 12 11 5 38
            RECTANGLE N 64 -320 320 0 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 Mux4_1_16b
            PIN D2(15:0) D2(15:0)
            PIN D3(15:0) D3(15:0)
            PIN D0(15:0) D0(15:0)
            PIN D1(15:0) D1(15:0)
            PIN S(1:0) S(1:0)
            PIN O(15:0) O(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 Mux4_1_16b
            PIN D2(15:0) D2(31:16)
            PIN D3(15:0) D3(31:16)
            PIN D0(15:0) D0(31:16)
            PIN D1(15:0) D1(31:16)
            PIN S(1:0) S(1:0)
            PIN O(15:0) O(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_3 Mux4_1_16b
            PIN D2(15:0) D2(47:32)
            PIN D3(15:0) D3(47:32)
            PIN D0(15:0) D0(47:32)
            PIN D1(15:0) D1(47:32)
            PIN S(1:0) S(1:0)
            PIN O(15:0) O(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_4 Mux4_1_16b
            PIN D2(15:0) D2(63:48)
            PIN D3(15:0) D3(63:48)
            PIN D0(15:0) D0(63:48)
            PIN D1(15:0) D1(63:48)
            PIN S(1:0) S(1:0)
            PIN O(15:0) O(63:48)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 608 1296 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 608 1696 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 608 896 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 608 2096 R0
        END INSTANCE
        BEGIN BRANCH S(1:0)
            WIRE 400 864 592 864
            WIRE 592 864 608 864
            WIRE 592 864 592 1264
            WIRE 592 1264 592 1664
            WIRE 592 1664 592 2064
            WIRE 592 2064 608 2064
            WIRE 592 1664 608 1664
            WIRE 592 1264 608 1264
        END BRANCH
        IOMARKER 400 864 S(1:0) R180 28
        IOMARKER 960 400 O(63:0) R0 28
        BEGIN BRANCH O(63:0)
            WIRE 880 400 960 400
        END BRANCH
        BEGIN BRANCH D0(63:0)
            WIRE 640 400 720 400
        END BRANCH
        BEGIN BRANCH D1(63:0)
            WIRE 640 320 720 320
        END BRANCH
        BEGIN BRANCH D2(63:0)
            WIRE 640 240 720 240
        END BRANCH
        BEGIN BRANCH D3(63:0)
            WIRE 640 160 720 160
        END BRANCH
        IOMARKER 640 160 D3(63:0) R180 28
        IOMARKER 640 240 D2(63:0) R180 28
        IOMARKER 640 320 D1(63:0) R180 28
        IOMARKER 640 400 D0(63:0) R180 28
        BEGIN BRANCH D2(15:0)
            WIRE 512 608 608 608
            BEGIN DISPLAY 512 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(15:0)
            WIRE 512 672 608 672
            BEGIN DISPLAY 512 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(15:0)
            WIRE 512 736 608 736
            BEGIN DISPLAY 512 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(15:0)
            WIRE 512 800 608 800
            BEGIN DISPLAY 512 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(31:16)
            WIRE 512 1008 608 1008
            BEGIN DISPLAY 512 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(31:16)
            WIRE 512 1072 608 1072
            BEGIN DISPLAY 512 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(31:16)
            WIRE 512 1136 608 1136
            BEGIN DISPLAY 512 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(31:16)
            WIRE 512 1200 608 1200
            BEGIN DISPLAY 512 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(47:32)
            WIRE 512 1408 608 1408
            BEGIN DISPLAY 512 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(47:32)
            WIRE 512 1472 608 1472
            BEGIN DISPLAY 512 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(47:32)
            WIRE 512 1536 608 1536
            BEGIN DISPLAY 512 1536 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(47:32)
            WIRE 512 1600 608 1600
            BEGIN DISPLAY 512 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(63:48)
            WIRE 512 1808 608 1808
            BEGIN DISPLAY 512 1808 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(63:48)
            WIRE 512 1872 608 1872
            BEGIN DISPLAY 512 1872 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(63:48)
            WIRE 512 1936 608 1936
            BEGIN DISPLAY 512 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(63:48)
            WIRE 512 2000 608 2000
            BEGIN DISPLAY 512 2000 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(31:16)
            WIRE 992 1008 1088 1008
            BEGIN DISPLAY 1088 1008 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(63:48)
            WIRE 992 1808 1088 1808
            BEGIN DISPLAY 1088 1808 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(15:0)
            WIRE 992 608 1088 608
            BEGIN DISPLAY 1088 608 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(47:32)
            WIRE 992 1408 1088 1408
            BEGIN DISPLAY 1088 1408 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
