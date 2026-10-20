VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL S
        SIGNAL O(63:0)
        SIGNAL D0(63:0)
        SIGNAL D0(15:0)
        SIGNAL D0(31:16)
        SIGNAL D1(31:16)
        SIGNAL D0(47:32)
        SIGNAL D1(47:32)
        SIGNAL D0(63:48)
        SIGNAL D1(63:48)
        SIGNAL D1(15:0)
        SIGNAL O(31:16)
        SIGNAL O(63:48)
        SIGNAL O(15:0)
        SIGNAL O(47:32)
        SIGNAL D1(63:0)
        PORT Input S
        PORT Output O(63:0)
        PORT Input D0(63:0)
        PORT Input D1(63:0)
        BEGIN BLOCKDEF Mux_2_1_16b
            TIMESTAMP 2026 2 19 2 2 58
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_5 Mux_2_1_16b
            PIN D0(15:0) D0(15:0)
            PIN D1(15:0) D1(15:0)
            PIN O(15:0) O(15:0)
            PIN S S
        END BLOCK
        BEGIN BLOCK XLXI_6 Mux_2_1_16b
            PIN D0(15:0) D0(31:16)
            PIN D1(15:0) D1(31:16)
            PIN O(15:0) O(31:16)
            PIN S S
        END BLOCK
        BEGIN BLOCK XLXI_7 Mux_2_1_16b
            PIN D0(15:0) D0(47:32)
            PIN D1(15:0) D1(47:32)
            PIN O(15:0) O(47:32)
            PIN S S
        END BLOCK
        BEGIN BLOCK XLXI_8 Mux_2_1_16b
            PIN D0(15:0) D0(63:48)
            PIN D1(15:0) D1(63:48)
            PIN O(15:0) O(63:48)
            PIN S S
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH S
            WIRE 640 1024 832 1024
            WIRE 832 1024 848 1024
            WIRE 832 1024 832 1424
            WIRE 832 1424 832 1824
            WIRE 832 1824 832 2224
            WIRE 832 2224 848 2224
            WIRE 832 1824 848 1824
            WIRE 832 1424 848 1424
        END BRANCH
        BEGIN BRANCH O(63:0)
            WIRE 1120 560 1200 560
        END BRANCH
        BEGIN BRANCH D0(63:0)
            WIRE 880 560 960 560
        END BRANCH
        BEGIN BRANCH D0(15:0)
            WIRE 752 896 848 896
            BEGIN DISPLAY 752 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(31:16)
            WIRE 752 1296 848 1296
            BEGIN DISPLAY 752 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(31:16)
            WIRE 752 1360 848 1360
            BEGIN DISPLAY 752 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(47:32)
            WIRE 752 1696 848 1696
            BEGIN DISPLAY 752 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(47:32)
            WIRE 752 1760 848 1760
            BEGIN DISPLAY 752 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(63:48)
            WIRE 752 2096 848 2096
            BEGIN DISPLAY 752 2096 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(63:48)
            WIRE 752 2160 848 2160
            BEGIN DISPLAY 752 2160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 640 1024 S R180 28
        IOMARKER 1200 560 O(63:0) R0 28
        IOMARKER 880 560 D0(63:0) R180 28
        BEGIN BRANCH D1(15:0)
            WIRE 752 960 848 960
            BEGIN DISPLAY 752 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_5 848 1056 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 848 1456 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 848 1856 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 848 2256 R0
        END INSTANCE
        BEGIN BRANCH O(31:16)
            WIRE 1232 1296 1328 1296
            BEGIN DISPLAY 1328 1296 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(63:48)
            WIRE 1232 2096 1328 2096
            BEGIN DISPLAY 1328 2096 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(15:0)
            WIRE 1232 896 1328 896
            BEGIN DISPLAY 1328 896 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(47:32)
            WIRE 1232 1696 1328 1696
            BEGIN DISPLAY 1328 1696 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(63:0)
            WIRE 880 640 960 640
        END BRANCH
        IOMARKER 880 640 D1(63:0) R180 28
    END SHEET
END SCHEMATIC
