VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CLR
        SIGNAL CLK
        SIGNAL CE
        SIGNAL IF_TID(1:0)
        SIGNAL ID_TID(1:0)
        SIGNAL IF_Ins(31:0)
        SIGNAL ID_Ins(31:0)
        PORT Input CLR
        PORT Input CLK
        PORT Input CE
        PORT Input IF_TID(1:0)
        PORT Output ID_TID(1:0)
        PORT Input IF_Ins(31:0)
        PORT Output ID_Ins(31:0)
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
        BEGIN BLOCKDEF dff2
            TIMESTAMP 2026 2 18 2 43 29
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCK XLXI_179 dff32
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(31:0) IF_Ins(31:0)
            PIN Q(31:0) ID_Ins(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_180 dff2
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(1:0) IF_TID(1:0)
            PIN Q(1:0) ID_TID(1:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_179 1408 1504 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_180 1408 1840 R0
        END INSTANCE
        BEGIN BRANCH CLR
            WIRE 1328 1808 1392 1808
            WIRE 1392 1808 1408 1808
            WIRE 1392 1472 1408 1472
            WIRE 1392 1472 1392 1808
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1328 1744 1376 1744
            WIRE 1376 1744 1408 1744
            WIRE 1376 1408 1408 1408
            WIRE 1376 1408 1376 1744
        END BRANCH
        BEGIN BRANCH CE
            WIRE 1328 1680 1360 1680
            WIRE 1360 1680 1408 1680
            WIRE 1360 1344 1408 1344
            WIRE 1360 1344 1360 1680
        END BRANCH
        BEGIN BRANCH IF_TID(1:0)
            WIRE 1328 1616 1408 1616
        END BRANCH
        BEGIN BRANCH ID_TID(1:0)
            WIRE 1792 1616 1872 1616
        END BRANCH
        BEGIN BRANCH IF_Ins(31:0)
            WIRE 1328 1280 1408 1280
        END BRANCH
        BEGIN BRANCH ID_Ins(31:0)
            WIRE 1792 1280 1872 1280
        END BRANCH
        IOMARKER 1328 1616 IF_TID(1:0) R180 28
        IOMARKER 1328 1680 CE R180 28
        IOMARKER 1328 1744 CLK R180 28
        IOMARKER 1328 1808 CLR R180 28
        IOMARKER 1872 1616 ID_TID(1:0) R0 28
        IOMARKER 1328 1280 IF_Ins(31:0) R180 28
        IOMARKER 1872 1280 ID_Ins(31:0) R0 28
    END SHEET
END SCHEMATIC
