VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_9
        SIGNAL D(1)
        SIGNAL D(0)
        SIGNAL Q(1)
        SIGNAL CLK
        SIGNAL Q(0)
        SIGNAL CE
        SIGNAL XLXN_17
        SIGNAL CLR
        SIGNAL D(2:0)
        SIGNAL Q(2:0)
        SIGNAL D(2)
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL Q(2)
        PORT Input CLK
        PORT Input CE
        PORT Input CLR
        PORT Input D(2:0)
        PORT Output Q(2:0)
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_14 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D D(2)
            PIN Q Q(2)
        END BLOCK
        BEGIN BLOCK XLXI_12 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D D(1)
            PIN Q Q(1)
        END BLOCK
        BEGIN BLOCK XLXI_13 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D D(0)
            PIN Q Q(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH D(1)
            WIRE 1216 896 1296 896
            BEGIN DISPLAY 1216 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(0)
            WIRE 1216 1200 1296 1200
            BEGIN DISPLAY 1216 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(1)
            WIRE 1680 896 1760 896
            BEGIN DISPLAY 1760 896 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1200 1328 1264 1328
            WIRE 1264 1328 1296 1328
            WIRE 1264 704 1296 704
            WIRE 1264 704 1264 1024
            WIRE 1264 1024 1264 1328
            WIRE 1264 1024 1296 1024
        END BRANCH
        BEGIN BRANCH Q(0)
            WIRE 1680 1200 1744 1200
            BEGIN DISPLAY 1744 1200 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_12 1296 1152 R0
        INSTANCE XLXI_13 1296 1456 R0
        BEGIN BRANCH CE
            WIRE 1216 960 1248 960
            WIRE 1248 960 1296 960
            WIRE 1248 960 1248 1264
            WIRE 1248 1264 1296 1264
            WIRE 1248 640 1296 640
            WIRE 1248 640 1248 960
        END BRANCH
        BEGIN BRANCH CLR
            WIRE 1216 1424 1280 1424
            WIRE 1280 1424 1296 1424
            WIRE 1280 800 1296 800
            WIRE 1280 800 1280 1120
            WIRE 1280 1120 1296 1120
            WIRE 1280 1120 1280 1424
        END BRANCH
        IOMARKER 1200 1328 CLK R180 28
        IOMARKER 1216 960 CE R180 28
        IOMARKER 1216 1424 CLR R180 28
        INSTANCE XLXI_14 1296 832 R0
        BEGIN BRANCH D(2:0)
            WIRE 1376 432 1456 432
        END BRANCH
        BEGIN BRANCH Q(2:0)
            WIRE 1536 432 1616 432
        END BRANCH
        IOMARKER 1376 432 D(2:0) R180 28
        IOMARKER 1616 432 Q(2:0) R0 28
        BEGIN BRANCH D(2)
            WIRE 1216 576 1296 576
            BEGIN DISPLAY 1216 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(2)
            WIRE 1680 576 1760 576
            BEGIN DISPLAY 1760 576 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
