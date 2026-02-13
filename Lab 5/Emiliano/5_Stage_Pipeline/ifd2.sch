VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL D(1)
        SIGNAL D(0)
        SIGNAL Q(1)
        SIGNAL CLK
        SIGNAL D(1:0)
        SIGNAL Q(1:0)
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_4
        SIGNAL Q(0)
        SIGNAL CE
        SIGNAL CLR
        PORT Input CLK
        PORT Input D(1:0)
        PORT Output Q(1:0)
        PORT Input CE
        PORT Input CLR
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
            WIRE 1120 640 1200 640
            BEGIN DISPLAY 1120 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(0)
            WIRE 1120 944 1200 944
            BEGIN DISPLAY 1120 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(1)
            WIRE 1584 640 1664 640
            BEGIN DISPLAY 1664 640 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(1:0)
            WIRE 1280 480 1360 480
        END BRANCH
        BEGIN BRANCH Q(1:0)
            WIRE 1440 480 1520 480
        END BRANCH
        IOMARKER 1280 480 D(1:0) R180 28
        IOMARKER 1520 480 Q(1:0) R0 28
        BEGIN BRANCH CLK
            WIRE 1104 1072 1168 1072
            WIRE 1168 1072 1200 1072
            WIRE 1168 768 1168 1072
            WIRE 1168 768 1200 768
        END BRANCH
        IOMARKER 1104 1072 CLK R180 28
        BEGIN BRANCH Q(0)
            WIRE 1584 944 1648 944
            BEGIN DISPLAY 1648 944 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_12 1200 896 R0
        INSTANCE XLXI_13 1200 1200 R0
        BEGIN BRANCH CE
            WIRE 1120 704 1152 704
            WIRE 1152 704 1200 704
            WIRE 1152 704 1152 1008
            WIRE 1152 1008 1200 1008
        END BRANCH
        BEGIN BRANCH CLR
            WIRE 1120 1168 1184 1168
            WIRE 1184 1168 1200 1168
            WIRE 1184 864 1200 864
            WIRE 1184 864 1184 1168
        END BRANCH
        IOMARKER 1120 704 CE R180 28
        IOMARKER 1120 1168 CLR R180 28
    END SHEET
END SCHEMATIC
