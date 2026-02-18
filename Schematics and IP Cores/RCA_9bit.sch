VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL A(0)
        SIGNAL B(0)
        SIGNAL Cin
        SIGNAL A(1)
        SIGNAL B(1)
        SIGNAL A(2)
        SIGNAL B(2)
        SIGNAL XLXN_54
        SIGNAL A(8:0)
        SIGNAL B(8:0)
        SIGNAL S(8:0)
        SIGNAL A(3)
        SIGNAL B(3)
        SIGNAL C3
        SIGNAL XLXN_39
        SIGNAL XLXN_40
        SIGNAL A(4)
        SIGNAL B(4)
        SIGNAL A(5)
        SIGNAL B(5)
        SIGNAL A(6)
        SIGNAL B(6)
        SIGNAL XLXN_51
        SIGNAL A(7)
        SIGNAL B(7)
        SIGNAL S(7)
        SIGNAL XLXN_55
        SIGNAL Cout
        SIGNAL A(8)
        SIGNAL B(8)
        SIGNAL S(0)
        SIGNAL S(8)
        SIGNAL S(1)
        SIGNAL S(2)
        SIGNAL S(3)
        SIGNAL S(4)
        SIGNAL S(5)
        SIGNAL S(6)
        PORT Input Cin
        PORT Input A(8:0)
        PORT Input B(8:0)
        PORT Output S(8:0)
        PORT Output Cout
        BEGIN BLOCKDEF FA_1b
            TIMESTAMP 2026 2 18 2 25 3
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_16 FA_1b
            PIN A A(0)
            PIN B B(0)
            PIN C Cin
            PIN S S(0)
            PIN CO XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_25 FA_1b
            PIN A A(1)
            PIN B B(1)
            PIN C XLXN_4
            PIN S S(1)
            PIN CO XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_26 FA_1b
            PIN A A(2)
            PIN B B(2)
            PIN C XLXN_5
            PIN S S(2)
            PIN CO XLXN_54
        END BLOCK
        BEGIN BLOCK XLXI_27 FA_1b
            PIN A A(3)
            PIN B B(3)
            PIN C XLXN_54
            PIN S S(3)
            PIN CO C3
        END BLOCK
        BEGIN BLOCK XLXI_28 FA_1b
            PIN A A(5)
            PIN B B(5)
            PIN C XLXN_39
            PIN S S(5)
            PIN CO XLXN_40
        END BLOCK
        BEGIN BLOCK XLXI_29 FA_1b
            PIN A A(6)
            PIN B B(6)
            PIN C XLXN_40
            PIN S S(6)
            PIN CO XLXN_51
        END BLOCK
        BEGIN BLOCK XLXI_30 FA_1b
            PIN A A(7)
            PIN B B(7)
            PIN C XLXN_51
            PIN S S(7)
            PIN CO XLXN_55
        END BLOCK
        BEGIN BLOCK XLXI_31 FA_1b
            PIN A A(8)
            PIN B B(8)
            PIN C XLXN_55
            PIN S S(8)
            PIN CO Cout
        END BLOCK
        BEGIN BLOCK XLXI_32 FA_1b
            PIN A A(4)
            PIN B B(4)
            PIN C C3
            PIN S S(4)
            PIN CO XLXN_39
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_4
            WIRE 1200 912 1376 912
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1760 912 1936 912
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 736 784 800 784
            WIRE 800 784 816 784
            BEGIN DISPLAY 800 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 736 848 800 848
            WIRE 800 848 816 848
            BEGIN DISPLAY 800 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 736 912 816 912
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 1296 784 1360 784
            WIRE 1360 784 1376 784
            BEGIN DISPLAY 1360 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 1296 848 1344 848
            WIRE 1344 848 1376 848
            BEGIN DISPLAY 1344 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 1856 784 1904 784
            WIRE 1904 784 1920 784
            WIRE 1920 784 1936 784
            BEGIN DISPLAY 1920 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 1856 848 1904 848
            WIRE 1904 848 1936 848
            BEGIN DISPLAY 1904 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_54
            WIRE 2320 912 2336 912
            WIRE 2336 912 2400 912
            WIRE 2400 912 2496 912
        END BRANCH
        IOMARKER 736 912 Cin R180 28
        BEGIN BRANCH A(8:0)
            WIRE 800 400 880 400
        END BRANCH
        BEGIN BRANCH B(8:0)
            WIRE 800 480 880 480
        END BRANCH
        BEGIN BRANCH S(8:0)
            WIRE 1040 400 1120 400
        END BRANCH
        IOMARKER 800 400 A(8:0) R180 28
        IOMARKER 800 480 B(8:0) R180 28
        IOMARKER 1120 400 S(8:0) R0 28
        BEGIN BRANCH A(3)
            WIRE 2416 784 2480 784
            WIRE 2480 784 2496 784
            BEGIN DISPLAY 2480 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 2416 848 2464 848
            WIRE 2464 848 2496 848
            BEGIN DISPLAY 2464 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C3
            WIRE 2880 912 2912 912
            WIRE 2912 912 2976 912
            BEGIN DISPLAY 2912 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_39
            WIRE 1200 1376 1376 1376
        END BRANCH
        BEGIN BRANCH XLXN_40
            WIRE 1760 1376 1936 1376
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 736 1248 800 1248
            WIRE 800 1248 816 1248
            BEGIN DISPLAY 800 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(4)
            WIRE 736 1312 800 1312
            WIRE 800 1312 816 1312
            BEGIN DISPLAY 800 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C3
            WIRE 736 1376 768 1376
            WIRE 768 1376 816 1376
            BEGIN DISPLAY 768 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 1296 1312 1344 1312
            WIRE 1344 1312 1376 1312
            BEGIN DISPLAY 1344 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 1856 1248 1904 1248
            WIRE 1904 1248 1920 1248
            WIRE 1920 1248 1936 1248
            BEGIN DISPLAY 1920 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 1856 1312 1904 1312
            WIRE 1904 1312 1936 1312
            BEGIN DISPLAY 1904 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_51
            WIRE 2320 1376 2336 1376
            WIRE 2336 1376 2400 1376
            WIRE 2400 1376 2496 1376
        END BRANCH
        BEGIN BRANCH A(7)
            WIRE 2416 1248 2480 1248
            WIRE 2480 1248 2496 1248
            BEGIN DISPLAY 2480 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7)
            WIRE 2416 1312 2464 1312
            WIRE 2464 1312 2496 1312
            BEGIN DISPLAY 2464 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 2880 1248 2912 1248
            WIRE 2912 1184 2944 1184
            WIRE 2944 1184 2976 1184
            WIRE 2912 1184 2912 1248
            BEGIN DISPLAY 2944 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_55
            WIRE 2880 1376 2896 1376
            WIRE 2896 1376 2944 1376
            WIRE 2944 1376 2960 1376
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 3344 1376 3360 1376
        END BRANCH
        BEGIN BRANCH A(8)
            WIRE 2928 1248 2944 1248
            WIRE 2944 1248 2960 1248
            BEGIN DISPLAY 2928 1248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(8)
            WIRE 2928 1312 2944 1312
            WIRE 2944 1312 2960 1312
            BEGIN DISPLAY 2928 1312 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 3360 1376 Cout R0 28
        BEGIN INSTANCE XLXI_16 816 944 R0
        END INSTANCE
        BEGIN BRANCH S(0)
            WIRE 1200 784 1232 784
            WIRE 1232 784 1280 784
            BEGIN DISPLAY 1232 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_25 1376 944 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_26 1936 944 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_27 2496 944 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_28 1376 1408 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_29 1936 1408 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_30 2496 1408 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_31 2960 1408 R0
        END INSTANCE
        BEGIN BRANCH S(8)
            WIRE 3344 1248 3376 1248
            BEGIN DISPLAY 3376 1248 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 1760 784 1776 784
            WIRE 1776 784 1840 784
            BEGIN DISPLAY 1776 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 2320 784 2368 784
            WIRE 2368 784 2400 784
            BEGIN DISPLAY 2368 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 2880 784 2944 784
            WIRE 2944 784 2976 784
            BEGIN DISPLAY 2944 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 1296 1248 1344 1248
            WIRE 1344 1248 1360 1248
            WIRE 1360 1248 1376 1248
            BEGIN DISPLAY 1360 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_32 816 1408 R0
        END INSTANCE
        BEGIN BRANCH S(4)
            WIRE 1200 1248 1232 1248
            WIRE 1232 1248 1280 1248
            BEGIN DISPLAY 1232 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 1760 1248 1776 1248
            WIRE 1776 1248 1840 1248
            BEGIN DISPLAY 1776 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 2320 1248 2368 1248
            WIRE 2368 1248 2400 1248
            BEGIN DISPLAY 2368 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
