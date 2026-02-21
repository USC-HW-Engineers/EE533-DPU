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
        SIGNAL EX_WRE
        SIGNAL WB_WRE
        SIGNAL WB_DOUT(63:0)
        SIGNAL EX_DOUT(63:0)
        SIGNAL EX_REG1(2:0)
        SIGNAL WB_REG1(2:0)
        PORT Input CLR
        PORT Input CLK
        PORT Input CE
        PORT Input EX_WRE
        PORT Output WB_WRE
        PORT Output WB_DOUT(63:0)
        PORT Input EX_DOUT(63:0)
        PORT Input EX_REG1(2:0)
        PORT Output WB_REG1(2:0)
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
        BEGIN BLOCKDEF dff64
            TIMESTAMP 2026 2 18 2 44 0
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF dff3
            TIMESTAMP 2026 2 18 6 33 12
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCK XLXI_12 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D EX_WRE
            PIN Q WB_WRE
        END BLOCK
        BEGIN BLOCK XLXI_51 dff64
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(63:0) EX_DOUT(63:0)
            PIN Q(63:0) WB_DOUT(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_52 dff3
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(2:0) EX_REG1(2:0)
            PIN Q(2:0) WB_REG1(2:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH CLR
            WIRE 1440 880 1488 880
            WIRE 1488 880 1488 1184
            WIRE 1488 1184 1504 1184
            WIRE 1488 1184 1488 1520
            WIRE 1488 1520 1504 1520
            WIRE 1488 880 1504 880
        END BRANCH
        INSTANCE XLXI_12 1504 912 R0
        BEGIN BRANCH CLK
            WIRE 1440 784 1472 784
            WIRE 1472 784 1504 784
            WIRE 1472 784 1472 1120
            WIRE 1472 1120 1472 1456
            WIRE 1472 1456 1504 1456
            WIRE 1472 1120 1504 1120
        END BRANCH
        BEGIN BRANCH CE
            WIRE 1440 720 1456 720
            WIRE 1456 720 1504 720
            WIRE 1456 720 1456 1056
            WIRE 1456 1056 1456 1392
            WIRE 1456 1392 1504 1392
            WIRE 1456 1056 1504 1056
        END BRANCH
        BEGIN BRANCH EX_WRE
            WIRE 1424 656 1504 656
        END BRANCH
        BEGIN BRANCH WB_WRE
            WIRE 1888 656 1968 656
        END BRANCH
        BEGIN BRANCH WB_DOUT(63:0)
            WIRE 1888 992 1968 992
        END BRANCH
        BEGIN BRANCH EX_DOUT(63:0)
            WIRE 1424 992 1504 992
        END BRANCH
        BEGIN BRANCH EX_REG1(2:0)
            WIRE 1424 1328 1504 1328
        END BRANCH
        BEGIN BRANCH WB_REG1(2:0)
            WIRE 1888 1328 1968 1328
        END BRANCH
        IOMARKER 1440 880 CLR R180 28
        IOMARKER 1440 784 CLK R180 28
        IOMARKER 1440 720 CE R180 28
        IOMARKER 1424 992 EX_DOUT(63:0) R180 28
        IOMARKER 1424 1328 EX_REG1(2:0) R180 28
        IOMARKER 1424 656 EX_WRE R180 28
        IOMARKER 1968 656 WB_WRE R0 28
        IOMARKER 1968 992 WB_DOUT(63:0) R0 28
        IOMARKER 1968 1328 WB_REG1(2:0) R0 28
        BEGIN INSTANCE XLXI_51 1504 1216 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_52 1504 1552 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
