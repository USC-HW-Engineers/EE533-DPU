VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL D(63:0)
        SIGNAL Q(63:0)
        SIGNAL CLK
        SIGNAL D(31:16)
        SIGNAL Q(31:16)
        SIGNAL CE
        SIGNAL Q(63:48)
        SIGNAL D(63:48)
        SIGNAL D(47:32)
        SIGNAL Q(47:32)
        SIGNAL D(15:0)
        SIGNAL Q(15:0)
        SIGNAL CLR
        PORT Input D(63:0)
        PORT Output Q(63:0)
        PORT Input CLK
        PORT Input CE
        PORT Input CLR
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_34 fd16ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D(15:0) D(63:48)
            PIN Q(15:0) Q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_41 fd16ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D(15:0) D(47:32)
            PIN Q(15:0) Q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_44 fd16ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D(15:0) D(31:16)
            PIN Q(15:0) Q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_45 fd16ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D(15:0) D(15:0)
            PIN Q(15:0) Q(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH D(63:0)
            WIRE 1536 688 1616 688
        END BRANCH
        BEGIN BRANCH Q(63:0)
            WIRE 1696 688 1776 688
        END BRANCH
        BEGIN BRANCH D(31:16)
            WIRE 1376 1184 1392 1184
            WIRE 1392 1184 1456 1184
            BEGIN DISPLAY 1392 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(31:16)
            WIRE 1840 1184 1872 1184
            WIRE 1872 1184 1920 1184
            BEGIN DISPLAY 1872 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1536 688 D(63:0) R180 28
        IOMARKER 1776 688 Q(63:0) R0 28
        IOMARKER 1280 1312 CLK R180 28
        BEGIN BRANCH CLK
            WIRE 1280 1312 1392 1312
            WIRE 1392 1312 1392 1600
            WIRE 1392 1600 1392 1936
            WIRE 1392 1936 1456 1936
            WIRE 1392 1600 1456 1600
            WIRE 1392 1312 1456 1312
            WIRE 1392 1008 1392 1312
            WIRE 1392 1008 1456 1008
        END BRANCH
        BEGIN BRANCH CE
            WIRE 1280 944 1360 944
            WIRE 1360 944 1456 944
            WIRE 1360 944 1360 1248
            WIRE 1360 1248 1456 1248
            WIRE 1360 1248 1360 1536
            WIRE 1360 1536 1360 1872
            WIRE 1360 1872 1456 1872
            WIRE 1360 1536 1456 1536
        END BRANCH
        BEGIN BRANCH Q(63:48)
            WIRE 1840 1808 1872 1808
            WIRE 1872 1808 1920 1808
            BEGIN DISPLAY 1872 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(63:48)
            WIRE 1376 1808 1392 1808
            WIRE 1392 1808 1456 1808
            BEGIN DISPLAY 1392 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_34 1456 2064 R0
        BEGIN BRANCH D(47:32)
            WIRE 1376 1472 1408 1472
            WIRE 1408 1472 1456 1472
            BEGIN DISPLAY 1408 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(47:32)
            WIRE 1840 1472 1872 1472
            WIRE 1872 1472 1920 1472
            BEGIN DISPLAY 1872 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_41 1456 1728 R0
        BEGIN BRANCH D(15:0)
            WIRE 1376 880 1408 880
            WIRE 1408 880 1456 880
            BEGIN DISPLAY 1408 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(15:0)
            WIRE 1840 880 1872 880
            WIRE 1872 880 1920 880
            BEGIN DISPLAY 1872 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1280 944 CE R180 28
        INSTANCE XLXI_44 1456 1440 R0
        INSTANCE XLXI_45 1456 1136 R0
        BEGIN BRANCH CLR
            WIRE 1360 2032 1440 2032
            WIRE 1440 2032 1456 2032
            WIRE 1440 1104 1456 1104
            WIRE 1440 1104 1440 1408
            WIRE 1440 1408 1456 1408
            WIRE 1440 1408 1440 1696
            WIRE 1440 1696 1456 1696
            WIRE 1440 1696 1440 2032
        END BRANCH
        IOMARKER 1360 2032 CLR R180 28
    END SHEET
END SCHEMATIC
