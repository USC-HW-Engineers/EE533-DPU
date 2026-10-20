VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL M_R2(63:0)
        SIGNAL EX_R2(63:0)
        SIGNAL CLK
        SIGNAL CE
        SIGNAL CLR
        SIGNAL EX_B
        SIGNAL M_B
        SIGNAL EX_MemW
        SIGNAL M_MemW
        SIGNAL EX_MemR
        SIGNAL M_MemR
        SIGNAL EX_M2Reg
        SIGNAL M_M2Reg
        SIGNAL EX_RegW
        SIGNAL M_RegW
        SIGNAL EX_Addr(3:0)
        SIGNAL M_Addr(3:0)
        SIGNAL EX_ALU(63:0)
        SIGNAL M_ALU(63:0)
        SIGNAL EX_ID(1:0)
        SIGNAL M_ID(1:0)
        PORT Output M_R2(63:0)
        PORT Input EX_R2(63:0)
        PORT Input CLK
        PORT Input CE
        PORT Input CLR
        PORT Input EX_B
        PORT Output M_B
        PORT Input EX_MemW
        PORT Output M_MemW
        PORT Input EX_MemR
        PORT Output M_MemR
        PORT Input EX_M2Reg
        PORT Output M_M2Reg
        PORT Input EX_RegW
        PORT Output M_RegW
        PORT Input EX_Addr(3:0)
        PORT Output M_Addr(3:0)
        PORT Input EX_ALU(63:0)
        PORT Output M_ALU(63:0)
        PORT Input EX_ID(1:0)
        PORT Output M_ID(1:0)
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
        BEGIN BLOCK XLXI_15 dff64
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(63:0) EX_R2(63:0)
            PIN Q(63:0) M_R2(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_28 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D EX_B
            PIN Q M_B
        END BLOCK
        BEGIN BLOCK XLXI_29 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D EX_MemW
            PIN Q M_MemW
        END BLOCK
        BEGIN BLOCK XLXI_30 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D EX_MemR
            PIN Q M_MemR
        END BLOCK
        BEGIN BLOCK XLXI_39 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D EX_M2Reg
            PIN Q M_M2Reg
        END BLOCK
        BEGIN BLOCK XLXI_59 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D EX_RegW
            PIN Q M_RegW
        END BLOCK
        BEGIN BLOCK XLXI_14 dff64
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(63:0) EX_ALU(63:0)
            PIN Q(63:0) M_ALU(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_83 dff4
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(3:0) EX_Addr(3:0)
            PIN Q(3:0) M_Addr(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_84 dff2
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(1:0) EX_ID(1:0)
            PIN Q(1:0) M_ID(1:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 5440
        BEGIN BRANCH M_R2(63:0)
            WIRE 1856 3520 1936 3520
        END BRANCH
        BEGIN BRANCH EX_R2(63:0)
            WIRE 1392 3520 1472 3520
        END BRANCH
        BEGIN INSTANCE XLXI_15 1472 3744 R0
        END INSTANCE
        BEGIN BRANCH CLK
            WIRE 1392 4672 1440 4672
            WIRE 1440 4672 1472 4672
            WIRE 1440 1248 1472 1248
            WIRE 1440 1248 1440 1600
            WIRE 1440 1600 1440 1952
            WIRE 1440 1952 1440 2304
            WIRE 1440 2304 1440 2656
            WIRE 1440 2656 1472 2656
            WIRE 1440 2656 1440 3328
            WIRE 1440 3328 1440 3648
            WIRE 1440 3648 1472 3648
            WIRE 1440 3648 1440 4320
            WIRE 1440 4320 1472 4320
            WIRE 1440 4320 1440 4672
            WIRE 1440 3328 1472 3328
            WIRE 1440 2304 1472 2304
            WIRE 1440 1952 1472 1952
            WIRE 1440 1600 1472 1600
        END BRANCH
        BEGIN BRANCH CE
            WIRE 1392 4608 1424 4608
            WIRE 1424 4608 1472 4608
            WIRE 1424 1184 1472 1184
            WIRE 1424 1184 1424 1536
            WIRE 1424 1536 1424 1888
            WIRE 1424 1888 1424 2240
            WIRE 1424 2240 1424 2592
            WIRE 1424 2592 1472 2592
            WIRE 1424 2592 1424 3264
            WIRE 1424 3264 1424 3584
            WIRE 1424 3584 1472 3584
            WIRE 1424 3584 1424 4256
            WIRE 1424 4256 1472 4256
            WIRE 1424 4256 1424 4608
            WIRE 1424 3264 1472 3264
            WIRE 1424 2240 1472 2240
            WIRE 1424 1888 1472 1888
            WIRE 1424 1536 1472 1536
        END BRANCH
        BEGIN BRANCH CLR
            WIRE 1392 4736 1456 4736
            WIRE 1456 4736 1472 4736
            WIRE 1456 1344 1472 1344
            WIRE 1456 1344 1456 1696
            WIRE 1456 1696 1456 2048
            WIRE 1456 2048 1456 2400
            WIRE 1456 2400 1456 2752
            WIRE 1456 2752 1472 2752
            WIRE 1456 2752 1456 3392
            WIRE 1456 3392 1456 3712
            WIRE 1456 3712 1472 3712
            WIRE 1456 3712 1456 4384
            WIRE 1456 4384 1472 4384
            WIRE 1456 4384 1456 4736
            WIRE 1456 3392 1472 3392
            WIRE 1456 2400 1472 2400
            WIRE 1456 2048 1472 2048
            WIRE 1456 1696 1472 1696
        END BRANCH
        INSTANCE XLXI_28 1472 2784 R0
        BEGIN BRANCH EX_B
            WIRE 1392 2528 1408 2528
            WIRE 1408 2528 1472 2528
        END BRANCH
        BEGIN BRANCH M_B
            WIRE 1856 2528 1920 2528
            WIRE 1920 2528 1936 2528
        END BRANCH
        INSTANCE XLXI_29 1472 2432 R0
        BEGIN BRANCH EX_MemW
            WIRE 1392 2176 1472 2176
        END BRANCH
        BEGIN BRANCH M_MemW
            WIRE 1856 2176 1936 2176
        END BRANCH
        INSTANCE XLXI_30 1472 2080 R0
        BEGIN BRANCH EX_MemR
            WIRE 1392 1824 1472 1824
        END BRANCH
        BEGIN BRANCH M_MemR
            WIRE 1856 1824 1936 1824
        END BRANCH
        INSTANCE XLXI_39 1472 1728 R0
        BEGIN BRANCH EX_M2Reg
            WIRE 1392 1472 1472 1472
        END BRANCH
        BEGIN BRANCH M_M2Reg
            WIRE 1856 1472 1936 1472
        END BRANCH
        INSTANCE XLXI_59 1472 1376 R0
        BEGIN BRANCH EX_RegW
            WIRE 1392 1120 1472 1120
        END BRANCH
        BEGIN BRANCH M_RegW
            WIRE 1856 1120 1936 1120
        END BRANCH
        IOMARKER 1392 3520 EX_R2(63:0) R180 28
        IOMARKER 1936 3520 M_R2(63:0) R0 28
        IOMARKER 1936 2528 M_B R0 28
        IOMARKER 1392 2528 EX_B R180 28
        IOMARKER 1392 2176 EX_MemW R180 28
        IOMARKER 1936 2176 M_MemW R0 28
        IOMARKER 1392 1824 EX_MemR R180 28
        IOMARKER 1936 1824 M_MemR R0 28
        IOMARKER 1392 1472 EX_M2Reg R180 28
        IOMARKER 1936 1472 M_M2Reg R0 28
        IOMARKER 1392 1120 EX_RegW R180 28
        IOMARKER 1936 1120 M_RegW R0 28
        IOMARKER 1392 4608 CE R180 28
        IOMARKER 1392 4672 CLK R180 28
        BEGIN BRANCH EX_Addr(3:0)
            WIRE 1392 4192 1472 4192
        END BRANCH
        BEGIN BRANCH M_Addr(3:0)
            WIRE 1856 4192 1936 4192
        END BRANCH
        IOMARKER 1392 4192 EX_Addr(3:0) R180 28
        IOMARKER 1936 4192 M_Addr(3:0) R0 28
        BEGIN INSTANCE XLXI_14 1472 3424 R0
        END INSTANCE
        BEGIN BRANCH EX_ALU(63:0)
            WIRE 1392 3200 1472 3200
        END BRANCH
        BEGIN BRANCH M_ALU(63:0)
            WIRE 1856 3200 1936 3200
        END BRANCH
        IOMARKER 1392 3200 EX_ALU(63:0) R180 28
        IOMARKER 1936 3200 M_ALU(63:0) R0 28
        BEGIN INSTANCE XLXI_83 1472 4416 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_84 1472 4768 R0
        END INSTANCE
        BEGIN BRANCH EX_ID(1:0)
            WIRE 1392 4544 1472 4544
        END BRANCH
        BEGIN BRANCH M_ID(1:0)
            WIRE 1856 4544 1936 4544
        END BRANCH
        IOMARKER 1392 4736 CLR R180 28
        IOMARKER 1392 4544 EX_ID(1:0) R180 28
        IOMARKER 1936 4544 M_ID(1:0) R0 28
    END SHEET
END SCHEMATIC
