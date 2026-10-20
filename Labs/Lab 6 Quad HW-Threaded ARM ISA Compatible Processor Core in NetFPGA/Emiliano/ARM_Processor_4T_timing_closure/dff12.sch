VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL D(7:4)
        SIGNAL D(3:0)
        SIGNAL Q(7:4)
        SIGNAL CLK
        SIGNAL Q(3:0)
        SIGNAL CE
        SIGNAL CLR
        SIGNAL D(11:8)
        SIGNAL Q(11:8)
        SIGNAL D(11:0)
        SIGNAL Q(11:0)
        PORT Input CLK
        PORT Input CE
        PORT Input CLR
        PORT Input D(11:0)
        PORT Output Q(11:0)
        BEGIN BLOCKDEF dff4
            TIMESTAMP 2026 2 18 23 59 5
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCK XLXI_17 dff4
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(3:0) D(11:8)
            PIN Q(3:0) Q(11:8)
        END BLOCK
        BEGIN BLOCK XLXI_18 dff4
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(3:0) D(7:4)
            PIN Q(3:0) Q(7:4)
        END BLOCK
        BEGIN BLOCK XLXI_19 dff4
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(3:0) D(3:0)
            PIN Q(3:0) Q(3:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH D(7:4)
            WIRE 1328 1408 1408 1408
            BEGIN DISPLAY 1328 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(3:0)
            WIRE 1328 1712 1408 1712
            BEGIN DISPLAY 1328 1712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(7:4)
            WIRE 1792 1408 1872 1408
            BEGIN DISPLAY 1872 1408 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1312 1840 1376 1840
            WIRE 1376 1840 1408 1840
            WIRE 1376 1216 1408 1216
            WIRE 1376 1216 1376 1536
            WIRE 1376 1536 1376 1840
            WIRE 1376 1536 1408 1536
        END BRANCH
        BEGIN BRANCH Q(3:0)
            WIRE 1792 1712 1856 1712
            BEGIN DISPLAY 1856 1712 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 1312 1776 1360 1776
            WIRE 1360 1776 1408 1776
            WIRE 1360 1152 1408 1152
            WIRE 1360 1152 1360 1472
            WIRE 1360 1472 1408 1472
            WIRE 1360 1472 1360 1776
        END BRANCH
        BEGIN BRANCH D(11:8)
            WIRE 1328 1088 1408 1088
            BEGIN DISPLAY 1328 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(11:8)
            WIRE 1792 1088 1872 1088
            BEGIN DISPLAY 1872 1088 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 1312 1840 CLK R180 28
        BEGIN INSTANCE XLXI_17 1408 1312 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_18 1408 1632 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_19 1408 1936 R0
        END INSTANCE
        BEGIN BRANCH CLR
            WIRE 1328 1904 1344 1904
            WIRE 1344 1904 1392 1904
            WIRE 1392 1904 1408 1904
            WIRE 1392 1280 1408 1280
            WIRE 1392 1280 1392 1600
            WIRE 1392 1600 1408 1600
            WIRE 1392 1600 1392 1904
        END BRANCH
        IOMARKER 1328 1904 CLR R180 28
        IOMARKER 1312 1776 CE R180 28
        BEGIN BRANCH D(11:0)
            WIRE 1472 928 1552 928
        END BRANCH
        BEGIN BRANCH Q(11:0)
            WIRE 1632 928 1712 928
        END BRANCH
        IOMARKER 1472 928 D(11:0) R180 28
        IOMARKER 1712 928 Q(11:0) R0 28
    END SHEET
END SCHEMATIC
