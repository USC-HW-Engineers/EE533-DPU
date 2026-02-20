VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CLK
        SIGNAL CE
        SIGNAL CLR
        SIGNAL M_B
        SIGNAL WB_B
        SIGNAL M_RegW
        SIGNAL WB_RegW
        SIGNAL M_ALU(63:0)
        SIGNAL WB_ALU(63:0)
        SIGNAL M_Addr(3:0)
        SIGNAL WB_Addr(3:0)
        SIGNAL M_M2Reg
        SIGNAL WB_M2Reg
        SIGNAL M_Data(63:0)
        SIGNAL WB_Data(63:0)
        PORT Input CLK
        PORT Input CE
        PORT Input CLR
        PORT Input M_B
        PORT Output WB_B
        PORT Input M_RegW
        PORT Output WB_RegW
        PORT Input M_ALU(63:0)
        PORT Output WB_ALU(63:0)
        PORT Input M_Addr(3:0)
        PORT Output WB_Addr(3:0)
        PORT Input M_M2Reg
        PORT Output WB_M2Reg
        PORT Input M_Data(63:0)
        PORT Output WB_Data(63:0)
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
        BEGIN BLOCK XLXI_28 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D M_B
            PIN Q WB_B
        END BLOCK
        BEGIN BLOCK XLXI_59 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D M_RegW
            PIN Q WB_RegW
        END BLOCK
        BEGIN BLOCK XLXI_80 dff64
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(63:0) M_ALU(63:0)
            PIN Q(63:0) WB_ALU(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_39 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D M_M2Reg
            PIN Q WB_M2Reg
        END BLOCK
        BEGIN BLOCK XLXI_82 dff64
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(63:0) M_Data(63:0)
            PIN Q(63:0) WB_Data(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_84 dff4
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(3:0) M_Addr(3:0)
            PIN Q(3:0) WB_Addr(3:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 5440
        BEGIN BRANCH CLK
            WIRE 1328 4368 1376 4368
            WIRE 1376 944 1408 944
            WIRE 1376 944 1376 1280
            WIRE 1376 1280 1376 1296
            WIRE 1376 1296 1376 1648
            WIRE 1376 1648 1376 2000
            WIRE 1376 2000 1376 2352
            WIRE 1376 2352 1376 2688
            WIRE 1376 2688 1376 3024
            WIRE 1376 3024 1376 3344
            WIRE 1376 3344 1376 3360
            WIRE 1376 3360 1376 3696
            WIRE 1376 3696 1408 3696
            WIRE 1376 3696 1376 4016
            WIRE 1376 4016 1376 4032
            WIRE 1376 4032 1376 4368
            WIRE 1376 4016 1408 4016
            WIRE 1376 3360 1408 3360
            WIRE 1376 2352 1408 2352
            WIRE 1376 1280 1408 1280
        END BRANCH
        BEGIN BRANCH CE
            WIRE 1328 4304 1360 4304
            WIRE 1360 880 1408 880
            WIRE 1360 880 1360 1216
            WIRE 1360 1216 1360 1232
            WIRE 1360 1232 1360 1584
            WIRE 1360 1584 1360 1936
            WIRE 1360 1936 1360 2288
            WIRE 1360 2288 1360 2624
            WIRE 1360 2624 1360 2960
            WIRE 1360 2960 1360 3280
            WIRE 1360 3280 1360 3296
            WIRE 1360 3296 1360 3632
            WIRE 1360 3632 1408 3632
            WIRE 1360 3632 1360 3952
            WIRE 1360 3952 1360 3968
            WIRE 1360 3968 1360 4304
            WIRE 1360 3952 1408 3952
            WIRE 1360 3296 1408 3296
            WIRE 1360 2288 1408 2288
            WIRE 1360 1216 1408 1216
        END BRANCH
        BEGIN BRANCH CLR
            WIRE 1328 4464 1392 4464
            WIRE 1392 1040 1408 1040
            WIRE 1392 1040 1392 1376
            WIRE 1392 1376 1392 1392
            WIRE 1392 1392 1392 1744
            WIRE 1392 1744 1392 2096
            WIRE 1392 2096 1392 2448
            WIRE 1392 2448 1408 2448
            WIRE 1392 2448 1392 2560
            WIRE 1392 2560 1392 2784
            WIRE 1392 2784 1392 3088
            WIRE 1392 3088 1392 3408
            WIRE 1392 3408 1392 3424
            WIRE 1392 3424 1392 3760
            WIRE 1392 3760 1408 3760
            WIRE 1392 3760 1392 4080
            WIRE 1392 4080 1392 4096
            WIRE 1392 4096 1392 4464
            WIRE 1392 4080 1408 4080
            WIRE 1392 3424 1408 3424
            WIRE 1392 1376 1408 1376
        END BRANCH
        INSTANCE XLXI_28 1408 2480 R0
        BEGIN BRANCH M_B
            WIRE 1328 2224 1344 2224
            WIRE 1344 2224 1408 2224
        END BRANCH
        BEGIN BRANCH WB_B
            WIRE 1792 2224 1856 2224
            WIRE 1856 2224 1872 2224
        END BRANCH
        INSTANCE XLXI_59 1408 1072 R0
        BEGIN BRANCH M_RegW
            WIRE 1328 816 1408 816
        END BRANCH
        BEGIN BRANCH WB_RegW
            WIRE 1792 816 1872 816
        END BRANCH
        BEGIN INSTANCE XLXI_80 1408 3792 R0
        END INSTANCE
        BEGIN BRANCH M_ALU(63:0)
            WIRE 1328 3568 1408 3568
        END BRANCH
        BEGIN BRANCH WB_ALU(63:0)
            WIRE 1792 3568 1872 3568
        END BRANCH
        BEGIN BRANCH M_Addr(3:0)
            WIRE 1328 3888 1408 3888
        END BRANCH
        BEGIN BRANCH WB_Addr(3:0)
            WIRE 1792 3888 1872 3888
        END BRANCH
        IOMARKER 1872 2224 WB_B R0 28
        IOMARKER 1328 2224 M_B R180 28
        IOMARKER 1328 816 M_RegW R180 28
        IOMARKER 1872 816 WB_RegW R0 28
        IOMARKER 1328 4304 CE R180 28
        IOMARKER 1328 4368 CLK R180 28
        IOMARKER 1328 4464 CLR R180 28
        IOMARKER 1328 3888 M_Addr(3:0) R180 28
        IOMARKER 1872 3888 WB_Addr(3:0) R0 28
        IOMARKER 1328 3568 M_ALU(63:0) R180 28
        IOMARKER 1872 3568 WB_ALU(63:0) R0 28
        INSTANCE XLXI_39 1408 1408 R0
        BEGIN BRANCH M_M2Reg
            WIRE 1328 1152 1408 1152
        END BRANCH
        BEGIN BRANCH WB_M2Reg
            WIRE 1792 1152 1872 1152
        END BRANCH
        IOMARKER 1328 1152 M_M2Reg R180 28
        IOMARKER 1872 1152 WB_M2Reg R0 28
        BEGIN INSTANCE XLXI_82 1408 3456 R0
        END INSTANCE
        BEGIN BRANCH M_Data(63:0)
            WIRE 1328 3232 1408 3232
        END BRANCH
        BEGIN BRANCH WB_Data(63:0)
            WIRE 1792 3232 1872 3232
        END BRANCH
        IOMARKER 1328 3232 M_Data(63:0) R180 28
        IOMARKER 1872 3232 WB_Data(63:0) R0 28
        BEGIN INSTANCE XLXI_84 1408 4112 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
