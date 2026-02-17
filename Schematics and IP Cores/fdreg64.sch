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
        SIGNAL D(31:16)
        SIGNAL Q(31:16)
        SIGNAL CE
        SIGNAL Q(63:48)
        SIGNAL D(47:32)
        SIGNAL Q(47:32)
        SIGNAL D(15:0)
        SIGNAL Q(15:0)
        SIGNAL XLXN_29
        SIGNAL D(63:48)
        SIGNAL clk
        PORT Input D(63:0)
        PORT Output Q(63:0)
        PORT Input CE
        PORT Input clk
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF fdreg16
            TIMESTAMP 2026 2 13 6 49 29
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -160 0 -160 
            LINE N 64 -32 0 -32 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCK XLXI_46 gnd
            PIN G XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_47 fdreg16
            PIN C clk
            PIN CE CE
            PIN CLR XLXN_29
            PIN D(15:0) D(15:0)
            PIN Q(15:0) Q(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_48 fdreg16
            PIN C clk
            PIN CE CE
            PIN CLR XLXN_29
            PIN D(15:0) D(31:16)
            PIN Q(15:0) Q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_49 fdreg16
            PIN C clk
            PIN CE CE
            PIN CLR XLXN_29
            PIN D(15:0) D(47:32)
            PIN Q(15:0) Q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_50 fdreg16
            PIN C clk
            PIN CE CE
            PIN CLR XLXN_29
            PIN D(15:0) D(63:48)
            PIN Q(15:0) Q(63:48)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH D(63:0)
            WIRE 1520 560 1600 560
        END BRANCH
        BEGIN BRANCH Q(63:0)
            WIRE 1680 560 1760 560
        END BRANCH
        BEGIN BRANCH D(31:16)
            WIRE 1360 1056 1376 1056
            WIRE 1376 1056 1440 1056
            BEGIN DISPLAY 1376 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(31:16)
            WIRE 1824 1056 1856 1056
            WIRE 1856 1056 1904 1056
            BEGIN DISPLAY 1856 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 1264 816 1344 816
            WIRE 1344 816 1440 816
            WIRE 1344 816 1344 1120
            WIRE 1344 1120 1440 1120
            WIRE 1344 1120 1344 1408
            WIRE 1344 1408 1344 1744
            WIRE 1344 1744 1440 1744
            WIRE 1344 1408 1440 1408
        END BRANCH
        BEGIN BRANCH Q(63:48)
            WIRE 1824 1680 1856 1680
            WIRE 1856 1680 1904 1680
            BEGIN DISPLAY 1856 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(47:32)
            WIRE 1360 1344 1392 1344
            WIRE 1392 1344 1440 1344
            BEGIN DISPLAY 1392 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(47:32)
            WIRE 1824 1344 1856 1344
            WIRE 1856 1344 1904 1344
            BEGIN DISPLAY 1856 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(15:0)
            WIRE 1360 752 1392 752
            WIRE 1392 752 1440 752
            BEGIN DISPLAY 1392 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(15:0)
            WIRE 1824 752 1856 752
            WIRE 1856 752 1904 752
            BEGIN DISPLAY 1856 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1344 1872 1424 1872
            WIRE 1424 1872 1440 1872
            WIRE 1344 1872 1344 1904
            WIRE 1424 944 1440 944
            WIRE 1424 944 1424 1248
            WIRE 1424 1248 1424 1280
            WIRE 1424 1280 1424 1536
            WIRE 1424 1536 1424 1568
            WIRE 1424 1568 1424 1872
            WIRE 1424 1536 1440 1536
            WIRE 1424 1248 1440 1248
        END BRANCH
        INSTANCE XLXI_46 1280 2032 R0
        IOMARKER 1520 560 D(63:0) R180 28
        IOMARKER 1760 560 Q(63:0) R0 28
        IOMARKER 1264 1184 clk R180 28
        IOMARKER 1264 816 CE R180 28
        BEGIN INSTANCE XLXI_47 1440 976 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_48 1440 1280 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_49 1440 1568 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_50 1440 1904 R0
        END INSTANCE
        BEGIN BRANCH D(63:48)
            WIRE 1360 1680 1392 1680
            WIRE 1392 1680 1440 1680
            BEGIN DISPLAY 1392 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1264 1184 1408 1184
            WIRE 1408 1184 1440 1184
            WIRE 1408 1184 1408 1472
            WIRE 1408 1472 1440 1472
            WIRE 1408 1472 1408 1808
            WIRE 1408 1808 1440 1808
            WIRE 1408 880 1440 880
            WIRE 1408 880 1408 1184
        END BRANCH
    END SHEET
END SCHEMATIC
