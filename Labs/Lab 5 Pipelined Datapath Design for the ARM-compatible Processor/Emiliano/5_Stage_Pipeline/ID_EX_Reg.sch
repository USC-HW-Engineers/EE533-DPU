VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CLK
        SIGNAL ID_R1(63:0)
        SIGNAL CLR
        SIGNAL CE
        SIGNAL ID_R2(63:0)
        SIGNAL ID_WRE
        SIGNAL ID_WME
        SIGNAL EX_WME
        SIGNAL EX_WRE
        SIGNAL EX_R1(63:0)
        SIGNAL EX_R2(63:0)
        SIGNAL ID_REG1(1:0)
        SIGNAL EX_REG1(1:0)
        PORT Input CLK
        PORT Input ID_R1(63:0)
        PORT Input CLR
        PORT Input CE
        PORT Input ID_R2(63:0)
        PORT Input ID_WRE
        PORT Input ID_WME
        PORT Output EX_WME
        PORT Output EX_WRE
        PORT Output EX_R1(63:0)
        PORT Output EX_R2(63:0)
        PORT Input ID_REG1(1:0)
        PORT Output EX_REG1(1:0)
        BEGIN BLOCKDEF ifd64
            TIMESTAMP 2026 2 13 4 28 24
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF ifd2
            TIMESTAMP 2026 2 13 4 43 18
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
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
        BEGIN BLOCK XLXI_7 ifd64
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(63:0) ID_R2(63:0)
            PIN Q(63:0) EX_R2(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 ifd64
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(63:0) ID_R1(63:0)
            PIN Q(63:0) EX_R1(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 ifd2
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(1:0) ID_REG1(1:0)
            PIN Q(1:0) EX_REG1(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D ID_WME
            PIN Q EX_WME
        END BLOCK
        BEGIN BLOCK XLXI_13 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D ID_WRE
            PIN Q EX_WRE
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH CLK
            WIRE 1264 640 1312 640
            WIRE 1312 640 1344 640
            WIRE 1312 640 1312 992
            WIRE 1312 992 1312 1312
            WIRE 1312 1312 1312 1632
            WIRE 1312 1632 1360 1632
            WIRE 1312 1632 1312 1984
            WIRE 1312 1984 1360 1984
            WIRE 1312 1312 1360 1312
            WIRE 1312 992 1344 992
        END BRANCH
        BEGIN INSTANCE XLXI_7 1360 1728 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1360 1408 R0
        END INSTANCE
        BEGIN BRANCH ID_R1(63:0)
            WIRE 1280 1184 1360 1184
        END BRANCH
        BEGIN INSTANCE XLXI_10 1360 2080 R0
        END INSTANCE
        INSTANCE XLXI_12 1344 768 R0
        INSTANCE XLXI_13 1344 1120 R0
        BEGIN BRANCH CLR
            WIRE 1264 736 1296 736
            WIRE 1296 736 1344 736
            WIRE 1296 736 1296 1088
            WIRE 1296 1088 1296 1376
            WIRE 1296 1376 1296 1696
            WIRE 1296 1696 1296 2048
            WIRE 1296 2048 1360 2048
            WIRE 1296 1696 1360 1696
            WIRE 1296 1376 1360 1376
            WIRE 1296 1088 1344 1088
        END BRANCH
        BEGIN BRANCH CE
            WIRE 1264 576 1328 576
            WIRE 1328 576 1344 576
            WIRE 1328 576 1328 928
            WIRE 1328 928 1344 928
            WIRE 1328 928 1328 1248
            WIRE 1328 1248 1328 1568
            WIRE 1328 1568 1328 1920
            WIRE 1328 1920 1360 1920
            WIRE 1328 1568 1360 1568
            WIRE 1328 1248 1360 1248
        END BRANCH
        BEGIN BRANCH ID_WRE
            WIRE 1264 864 1344 864
        END BRANCH
        BEGIN BRANCH ID_WME
            WIRE 1264 512 1344 512
        END BRANCH
        BEGIN BRANCH EX_WME
            WIRE 1728 512 1808 512
        END BRANCH
        BEGIN BRANCH EX_WRE
            WIRE 1728 864 1808 864
        END BRANCH
        BEGIN BRANCH EX_R1(63:0)
            WIRE 1744 1184 1824 1184
        END BRANCH
        BEGIN BRANCH EX_R2(63:0)
            WIRE 1744 1504 1824 1504
        END BRANCH
        IOMARKER 1264 512 ID_WME R180 28
        IOMARKER 1264 576 CE R180 28
        IOMARKER 1264 640 CLK R180 28
        IOMARKER 1264 736 CLR R180 28
        IOMARKER 1264 864 ID_WRE R180 28
        IOMARKER 1808 512 EX_WME R0 28
        IOMARKER 1808 864 EX_WRE R0 28
        IOMARKER 1280 1184 ID_R1(63:0) R180 28
        IOMARKER 1824 1184 EX_R1(63:0) R0 28
        BEGIN BRANCH ID_R2(63:0)
            WIRE 1280 1504 1360 1504
        END BRANCH
        IOMARKER 1280 1504 ID_R2(63:0) R180 28
        IOMARKER 1824 1504 EX_R2(63:0) R0 28
        BEGIN BRANCH ID_REG1(1:0)
            WIRE 1280 1856 1360 1856
        END BRANCH
        BEGIN BRANCH EX_REG1(1:0)
            WIRE 1744 1856 1824 1856
        END BRANCH
        IOMARKER 1280 1856 ID_REG1(1:0) R180 28
        IOMARKER 1824 1856 EX_REG1(1:0) R0 28
    END SHEET
END SCHEMATIC
