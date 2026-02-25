VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL D0(0)
        SIGNAL D1(0)
        SIGNAL D0(1)
        SIGNAL D1(1)
        SIGNAL O(0)
        SIGNAL O(2)
        SIGNAL D0(2)
        SIGNAL D1(2)
        SIGNAL O(1)
        SIGNAL D0(2:0)
        SIGNAL S
        SIGNAL O(2:0)
        SIGNAL D1(2:0)
        PORT Input D0(2:0)
        PORT Input S
        PORT Output O(2:0)
        PORT Input D1(2:0)
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 m2_1
            PIN D0 D0(2)
            PIN D1 D1(2)
            PIN S0 S
            PIN O O(2)
        END BLOCK
        BEGIN BLOCK XLXI_1 m2_1
            PIN D0 D0(0)
            PIN D1 D1(0)
            PIN S0 S
            PIN O O(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 m2_1
            PIN D0 D0(1)
            PIN D1 D1(1)
            PIN S0 S
            PIN O O(1)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 480 928 R0
        BEGIN BRANCH D0(0)
            WIRE 416 768 432 768
            WIRE 432 768 480 768
            BEGIN DISPLAY 432 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(0)
            WIRE 416 832 448 832
            WIRE 448 832 480 832
            BEGIN DISPLAY 448 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_2 960 928 R0
        BEGIN BRANCH D0(1)
            WIRE 896 768 928 768
            WIRE 928 768 960 768
            BEGIN DISPLAY 928 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(1)
            WIRE 896 832 912 832
            WIRE 912 832 960 832
            BEGIN DISPLAY 912 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_3 1440 928 R0
        BEGIN BRANCH O(0)
            WIRE 800 800 816 800
            WIRE 816 800 848 800
            BEGIN DISPLAY 816 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(2)
            WIRE 1760 800 1792 800
            WIRE 1792 800 1808 800
            BEGIN DISPLAY 1792 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(2)
            WIRE 1376 768 1392 768
            WIRE 1392 768 1440 768
            BEGIN DISPLAY 1392 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(2)
            WIRE 1376 832 1392 832
            WIRE 1392 832 1440 832
            BEGIN DISPLAY 1392 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(1)
            WIRE 1280 800 1296 800
            WIRE 1296 800 1328 800
            BEGIN DISPLAY 1296 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(2:0)
            WIRE 480 480 560 480
        END BRANCH
        BEGIN BRANCH D1(2:0)
            WIRE 480 560 560 560
        END BRANCH
        BEGIN BRANCH S
            WIRE 416 912 480 912
            WIRE 480 912 960 912
            WIRE 960 912 1440 912
            WIRE 480 896 480 912
            WIRE 960 896 960 912
            WIRE 1440 896 1440 912
        END BRANCH
        IOMARKER 480 480 D0(2:0) R180 28
        IOMARKER 480 560 D1(2:0) R180 28
        BEGIN BRANCH O(2:0)
            WIRE 640 560 720 560
        END BRANCH
        IOMARKER 720 560 O(2:0) R0 28
        IOMARKER 416 912 S R180 28
    END SHEET
END SCHEMATIC
