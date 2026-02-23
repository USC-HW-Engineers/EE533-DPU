VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_7
        SIGNAL CLR
        SIGNAL CLK
        SIGNAL XLXN_12
        SIGNAL D(6:0)
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL L
        SIGNAL vdd
        SIGNAL ID(0)
        SIGNAL ID(1)
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL ID(1:0)
        SIGNAL Q(6:0)
        SIGNAL XLXN_47(6:0)
        SIGNAL XLXN_48(6:0)
        SIGNAL XLXN_49(6:0)
        SIGNAL XLXN_50(6:0)
        PORT Input CLR
        PORT Input CLK
        PORT Input D(6:0)
        PORT Input L
        PORT Input ID(1:0)
        PORT Output Q(6:0)
        BEGIN BLOCKDEF PCL_7b
            TIMESTAMP 2026 2 21 20 23 22
            RECTANGLE N 64 -320 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -224 0 -224 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -300 384 -276 
        END BLOCKDEF
        BEGIN BLOCKDEF d2_4e
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 0 -320 64 -320 
            LINE N 384 -128 320 -128 
            LINE N 384 -192 320 -192 
            LINE N 384 -256 320 -256 
            LINE N 384 -320 320 -320 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF Mux4_1_7b
            TIMESTAMP 2026 2 21 20 20 8
            RECTANGLE N 64 -320 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -300 384 -276 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
        END BLOCKDEF
        BEGIN BLOCK XLXI_189 PCL_7b
            PIN CE XLXN_15
            PIN CLK CLK
            PIN CLR CLR
            PIN D(6:0) D(6:0)
            PIN L XLXN_7
            PIN Q(6:0) XLXN_47(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_190 PCL_7b
            PIN CE XLXN_32
            PIN CLK CLK
            PIN CLR CLR
            PIN D(6:0) D(6:0)
            PIN L XLXN_16
            PIN Q(6:0) XLXN_48(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_191 PCL_7b
            PIN CE XLXN_33
            PIN CLK CLK
            PIN CLR CLR
            PIN D(6:0) D(6:0)
            PIN L XLXN_17
            PIN Q(6:0) XLXN_49(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_192 PCL_7b
            PIN CE XLXN_12
            PIN CLK CLK
            PIN CLR CLR
            PIN D(6:0) D(6:0)
            PIN L XLXN_18
            PIN Q(6:0) XLXN_50(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_197 and2
            PIN I0 L
            PIN I1 XLXN_15
            PIN O XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_198 and2
            PIN I0 L
            PIN I1 XLXN_32
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_199 and2
            PIN I0 L
            PIN I1 XLXN_33
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_200 and2
            PIN I0 L
            PIN I1 XLXN_12
            PIN O XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_5 d2_4e
            PIN A0 ID(0)
            PIN A1 ID(1)
            PIN E vdd
            PIN D0 XLXN_15
            PIN D1 XLXN_32
            PIN D2 XLXN_33
            PIN D3 XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_6 vcc
            PIN P vdd
        END BLOCK
        BEGIN BLOCK XLXI_206 Mux4_1_7b
            PIN D0(6:0) XLXN_47(6:0)
            PIN D1(6:0) XLXN_48(6:0)
            PIN D2(6:0) XLXN_49(6:0)
            PIN D3(6:0) XLXN_50(6:0)
            PIN O(6:0) Q(6:0)
            PIN S(1:0) ID(1:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_190 1360 1344 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_191 1360 1760 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_189 1360 928 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_192 1360 2176 R0
        END INSTANCE
        BEGIN BRANCH XLXN_7
            WIRE 1264 704 1360 704
        END BRANCH
        BEGIN BRANCH CLR
            WIRE 640 896 1344 896
            WIRE 1344 896 1360 896
            WIRE 1344 896 1344 1312
            WIRE 1344 1312 1360 1312
            WIRE 1344 1312 1344 1728
            WIRE 1344 1728 1344 2144
            WIRE 1344 2144 1360 2144
            WIRE 1344 1728 1360 1728
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 640 832 1328 832
            WIRE 1328 832 1360 832
            WIRE 1328 832 1328 1248
            WIRE 1328 1248 1328 1664
            WIRE 1328 1664 1328 2080
            WIRE 1328 2080 1360 2080
            WIRE 1328 1664 1360 1664
            WIRE 1328 1248 1360 1248
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 784 1536 800 1536
            WIRE 800 1536 800 1920
            WIRE 800 1920 800 2016
            WIRE 800 2016 1360 2016
            WIRE 800 1920 1008 1920
        END BRANCH
        BEGIN BRANCH D(6:0)
            WIRE 640 640 1312 640
            WIRE 1312 640 1360 640
            WIRE 1312 640 1312 1056
            WIRE 1312 1056 1360 1056
            WIRE 1312 1056 1312 1472
            WIRE 1312 1472 1312 1888
            WIRE 1312 1888 1360 1888
            WIRE 1312 1472 1360 1472
        END BRANCH
        INSTANCE XLXI_197 1008 800 R0
        BEGIN BRANCH XLXN_16
            WIRE 1264 1120 1360 1120
        END BRANCH
        INSTANCE XLXI_198 1008 1216 R0
        BEGIN BRANCH XLXN_17
            WIRE 1264 1536 1360 1536
        END BRANCH
        INSTANCE XLXI_199 1008 1632 R0
        BEGIN BRANCH XLXN_18
            WIRE 1264 1952 1360 1952
        END BRANCH
        INSTANCE XLXI_200 1008 2048 R0
        BEGIN BRANCH L
            WIRE 640 736 992 736
            WIRE 992 736 1008 736
            WIRE 992 736 992 1152
            WIRE 992 1152 1008 1152
            WIRE 992 1152 992 1568
            WIRE 992 1568 1008 1568
            WIRE 992 1568 992 1984
            WIRE 992 1984 1008 1984
        END BRANCH
        INSTANCE XLXI_5 400 1664 R0
        INSTANCE XLXI_6 288 1520 R0
        BEGIN BRANCH vdd
            WIRE 352 1520 352 1536
            WIRE 352 1536 400 1536
        END BRANCH
        BEGIN BRANCH ID(0)
            WIRE 336 1344 368 1344
            WIRE 368 1344 400 1344
            BEGIN DISPLAY 368 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID(1)
            WIRE 336 1408 352 1408
            WIRE 352 1408 400 1408
            BEGIN DISPLAY 352 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 784 1344 800 1344
            WIRE 800 672 1008 672
            WIRE 800 672 800 768
            WIRE 800 768 800 1344
            WIRE 800 768 1360 768
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 784 1408 896 1408
            WIRE 896 1088 1008 1088
            WIRE 896 1088 896 1184
            WIRE 896 1184 896 1408
            WIRE 896 1184 1360 1184
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 784 1472 896 1472
            WIRE 896 1472 896 1504
            WIRE 896 1504 1008 1504
            WIRE 896 1504 896 1600
            WIRE 896 1600 1360 1600
        END BRANCH
        IOMARKER 640 736 L R180 28
        IOMARKER 640 640 D(6:0) R180 28
        BEGIN BRANCH ID(1:0)
            WIRE 640 784 720 784
        END BRANCH
        IOMARKER 640 784 ID(1:0) R180 28
        IOMARKER 640 832 CLK R180 28
        IOMARKER 640 896 CLR R180 28
        BEGIN INSTANCE XLXI_206 2048 1504 R0
        END INSTANCE
        BEGIN BRANCH ID(1:0)
            WIRE 2000 1472 2048 1472
            BEGIN DISPLAY 2000 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(6:0)
            WIRE 2432 1216 2480 1216
        END BRANCH
        IOMARKER 2480 1216 Q(6:0) R0 28
        BEGIN BRANCH XLXN_47(6:0)
            WIRE 1744 640 1888 640
            WIRE 1888 640 1888 1408
            WIRE 1888 1408 2048 1408
        END BRANCH
        BEGIN BRANCH XLXN_48(6:0)
            WIRE 1744 1056 1872 1056
            WIRE 1872 1056 1872 1344
            WIRE 1872 1344 2048 1344
        END BRANCH
        BEGIN BRANCH XLXN_49(6:0)
            WIRE 1744 1472 1856 1472
            WIRE 1856 1280 1856 1472
            WIRE 1856 1280 2048 1280
        END BRANCH
        BEGIN BRANCH XLXN_50(6:0)
            WIRE 1744 1888 1840 1888
            WIRE 1840 1216 1840 1888
            WIRE 1840 1216 2048 1216
        END BRANCH
    END SHEET
END SCHEMATIC
