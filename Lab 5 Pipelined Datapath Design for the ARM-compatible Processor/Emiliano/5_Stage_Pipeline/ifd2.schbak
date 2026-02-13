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
        SIGNAL Q(0)
        SIGNAL clk
        SIGNAL D(1:0)
        SIGNAL Q(1:0)
        PORT Input clk
        PORT Input D(1:0)
        PORT Output Q(1:0)
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_10 fd
            PIN C clk
            PIN D D(1)
            PIN Q Q(1)
        END BLOCK
        BEGIN BLOCK XLXI_11 fd
            PIN C clk
            PIN D D(0)
            PIN Q Q(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_10 1200 896 R0
        INSTANCE XLXI_11 1200 1152 R0
        BEGIN BRANCH D(1)
            WIRE 1120 640 1200 640
            BEGIN DISPLAY 1120 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(0)
            WIRE 1120 896 1200 896
            BEGIN DISPLAY 1120 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(1)
            WIRE 1584 640 1664 640
            BEGIN DISPLAY 1664 640 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(0)
            WIRE 1584 896 1664 896
            BEGIN DISPLAY 1664 896 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1120 1024 1184 1024
            WIRE 1184 1024 1200 1024
            WIRE 1184 768 1200 768
            WIRE 1184 768 1184 1024
        END BRANCH
        BEGIN BRANCH D(1:0)
            WIRE 1280 480 1360 480
        END BRANCH
        BEGIN BRANCH Q(1:0)
            WIRE 1440 480 1520 480
        END BRANCH
        IOMARKER 1280 480 D(1:0) R180 28
        IOMARKER 1520 480 Q(1:0) R0 28
        IOMARKER 1120 1024 clk R180 28
    END SHEET
END SCHEMATIC
