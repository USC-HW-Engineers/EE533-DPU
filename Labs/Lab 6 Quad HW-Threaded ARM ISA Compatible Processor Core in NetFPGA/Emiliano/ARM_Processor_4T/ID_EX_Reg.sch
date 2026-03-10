VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL ID_R1(63:0)
        SIGNAL EX_R1(63:0)
        SIGNAL EX_R2(63:0)
        SIGNAL ID_R2(63:0)
        SIGNAL ID_Addr(3:0)
        SIGNAL EX_Addr(3:0)
        SIGNAL ID_ALUC(3:0)
        SIGNAL EX_ALUC(3:0)
        SIGNAL CLK
        SIGNAL CE
        SIGNAL ID_B
        SIGNAL EX_B
        SIGNAL ID_MemW
        SIGNAL EX_MemW
        SIGNAL ID_MemR
        SIGNAL EX_MemR
        SIGNAL ID_M2Reg
        SIGNAL EX_M2Reg
        SIGNAL ID_RegW
        SIGNAL EX_RegW
        SIGNAL EX_ALUSrc
        SIGNAL ID_ALUD(11:0)
        SIGNAL EX_ALUD(11:0)
        SIGNAL ID_BT(1:0)
        SIGNAL EX_BT(1:0)
        SIGNAL CLR
        SIGNAL ID_ALUSrc
        SIGNAL ID_TID(1:0)
        SIGNAL EX_TID(1:0)
        PORT Input ID_R1(63:0)
        PORT Output EX_R1(63:0)
        PORT Output EX_R2(63:0)
        PORT Input ID_R2(63:0)
        PORT Input ID_Addr(3:0)
        PORT Output EX_Addr(3:0)
        PORT Input ID_ALUC(3:0)
        PORT Output EX_ALUC(3:0)
        PORT Input CLK
        PORT Input CE
        PORT Input ID_B
        PORT Output EX_B
        PORT Input ID_MemW
        PORT Output EX_MemW
        PORT Input ID_MemR
        PORT Output EX_MemR
        PORT Input ID_M2Reg
        PORT Output EX_M2Reg
        PORT Input ID_RegW
        PORT Output EX_RegW
        PORT Output EX_ALUSrc
        PORT Input ID_ALUD(11:0)
        PORT Output EX_ALUD(11:0)
        PORT Input ID_BT(1:0)
        PORT Output EX_BT(1:0)
        PORT Input CLR
        PORT Input ID_ALUSrc
        PORT Input ID_TID(1:0)
        PORT Output EX_TID(1:0)
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
        BEGIN BLOCKDEF dff12
            TIMESTAMP 2026 2 20 6 55 32
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
            PIN D(63:0) ID_R2(63:0)
            PIN Q(63:0) EX_R2(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_65 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D ID_ALUSrc
            PIN Q EX_ALUSrc
        END BLOCK
        BEGIN BLOCK XLXI_28 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D ID_B
            PIN Q EX_B
        END BLOCK
        BEGIN BLOCK XLXI_29 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D ID_MemW
            PIN Q EX_MemW
        END BLOCK
        BEGIN BLOCK XLXI_30 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D ID_MemR
            PIN Q EX_MemR
        END BLOCK
        BEGIN BLOCK XLXI_39 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D ID_M2Reg
            PIN Q EX_M2Reg
        END BLOCK
        BEGIN BLOCK XLXI_59 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D ID_RegW
            PIN Q EX_RegW
        END BLOCK
        BEGIN BLOCK XLXI_79 dff4
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(3:0) ID_ALUC(3:0)
            PIN Q(3:0) EX_ALUC(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_80 dff64
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(63:0) ID_R1(63:0)
            PIN Q(63:0) EX_R1(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_81 dff4
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(3:0) ID_Addr(3:0)
            PIN Q(3:0) EX_Addr(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_82 dff12
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(11:0) ID_ALUD(11:0)
            PIN Q(11:0) EX_ALUD(11:0)
        END BLOCK
        BEGIN BLOCK XLXI_83 dff2
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(1:0) ID_BT(1:0)
            PIN Q(1:0) EX_BT(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_84 dff2
            PIN CE CE
            PIN CLK CLK
            PIN CLR CLR
            PIN D(1:0) ID_TID(1:0)
            PIN Q(1:0) EX_TID(1:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 5440
        BEGIN BRANCH ID_R1(63:0)
            WIRE 1296 2768 1376 2768
        END BRANCH
        BEGIN BRANCH EX_R1(63:0)
            WIRE 1760 2768 1840 2768
        END BRANCH
        BEGIN BRANCH EX_R2(63:0)
            WIRE 1760 3088 1840 3088
        END BRANCH
        BEGIN BRANCH ID_R2(63:0)
            WIRE 1296 3088 1376 3088
        END BRANCH
        BEGIN BRANCH ID_Addr(3:0)
            WIRE 1296 3440 1376 3440
        END BRANCH
        BEGIN BRANCH EX_Addr(3:0)
            WIRE 1760 3440 1840 3440
        END BRANCH
        BEGIN INSTANCE XLXI_15 1376 3312 R0
        END INSTANCE
        BEGIN BRANCH ID_ALUC(3:0)
            WIRE 1296 3776 1376 3776
        END BRANCH
        BEGIN BRANCH EX_ALUC(3:0)
            WIRE 1760 3776 1840 3776
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1280 4576 1344 4576
            WIRE 1344 4576 1376 4576
            WIRE 1344 464 1376 464
            WIRE 1344 464 1344 816
            WIRE 1344 816 1376 816
            WIRE 1344 816 1344 1168
            WIRE 1344 1168 1344 1520
            WIRE 1344 1520 1344 1872
            WIRE 1344 1872 1344 2224
            WIRE 1344 2224 1344 2560
            WIRE 1344 2560 1344 2896
            WIRE 1344 2896 1344 3216
            WIRE 1344 3216 1344 3568
            WIRE 1344 3568 1344 3904
            WIRE 1344 3904 1376 3904
            WIRE 1344 3904 1344 4240
            WIRE 1344 4240 1376 4240
            WIRE 1344 4240 1344 4576
            WIRE 1344 3568 1376 3568
            WIRE 1344 3216 1376 3216
            WIRE 1344 2896 1376 2896
            WIRE 1344 2560 1376 2560
            WIRE 1344 2224 1376 2224
            WIRE 1344 1872 1376 1872
            WIRE 1344 1520 1376 1520
            WIRE 1344 1168 1376 1168
        END BRANCH
        BEGIN BRANCH CE
            WIRE 1280 4512 1328 4512
            WIRE 1328 4512 1376 4512
            WIRE 1328 400 1376 400
            WIRE 1328 400 1328 752
            WIRE 1328 752 1376 752
            WIRE 1328 752 1328 1104
            WIRE 1328 1104 1328 1456
            WIRE 1328 1456 1328 1808
            WIRE 1328 1808 1328 2160
            WIRE 1328 2160 1328 2496
            WIRE 1328 2496 1328 2832
            WIRE 1328 2832 1328 3152
            WIRE 1328 3152 1328 3504
            WIRE 1328 3504 1328 3840
            WIRE 1328 3840 1376 3840
            WIRE 1328 3840 1328 4176
            WIRE 1328 4176 1376 4176
            WIRE 1328 4176 1328 4512
            WIRE 1328 3504 1376 3504
            WIRE 1328 3152 1376 3152
            WIRE 1328 2832 1376 2832
            WIRE 1328 2496 1376 2496
            WIRE 1328 2160 1376 2160
            WIRE 1328 1808 1376 1808
            WIRE 1328 1456 1376 1456
            WIRE 1328 1104 1376 1104
        END BRANCH
        INSTANCE XLXI_65 1376 2688 R0
        INSTANCE XLXI_28 1376 2352 R0
        BEGIN BRANCH ID_B
            WIRE 1296 2096 1312 2096
            WIRE 1312 2096 1376 2096
        END BRANCH
        BEGIN BRANCH EX_B
            WIRE 1760 2096 1824 2096
            WIRE 1824 2096 1840 2096
        END BRANCH
        INSTANCE XLXI_29 1376 2000 R0
        BEGIN BRANCH ID_MemW
            WIRE 1296 1744 1376 1744
        END BRANCH
        BEGIN BRANCH EX_MemW
            WIRE 1760 1744 1840 1744
        END BRANCH
        INSTANCE XLXI_30 1376 1648 R0
        BEGIN BRANCH ID_MemR
            WIRE 1296 1392 1376 1392
        END BRANCH
        BEGIN BRANCH EX_MemR
            WIRE 1760 1392 1840 1392
        END BRANCH
        INSTANCE XLXI_39 1376 1296 R0
        BEGIN BRANCH ID_M2Reg
            WIRE 1296 1040 1376 1040
        END BRANCH
        BEGIN BRANCH EX_M2Reg
            WIRE 1760 1040 1840 1040
        END BRANCH
        INSTANCE XLXI_59 1376 944 R0
        BEGIN BRANCH ID_RegW
            WIRE 1296 688 1376 688
        END BRANCH
        BEGIN BRANCH EX_RegW
            WIRE 1760 688 1840 688
        END BRANCH
        BEGIN BRANCH EX_ALUSrc
            WIRE 1760 2432 1824 2432
            WIRE 1824 2432 1840 2432
        END BRANCH
        BEGIN INSTANCE XLXI_79 1376 4000 R0
        END INSTANCE
        BEGIN BRANCH ID_ALUD(11:0)
            WIRE 1296 4112 1376 4112
        END BRANCH
        BEGIN BRANCH EX_ALUD(11:0)
            WIRE 1760 4112 1840 4112
        END BRANCH
        BEGIN INSTANCE XLXI_80 1376 2992 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_81 1376 3664 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_82 1376 4336 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_83 1376 560 R0
        END INSTANCE
        BEGIN BRANCH ID_BT(1:0)
            WIRE 1296 336 1376 336
        END BRANCH
        BEGIN BRANCH EX_BT(1:0)
            WIRE 1760 336 1840 336
        END BRANCH
        IOMARKER 1296 2768 ID_R1(63:0) R180 28
        IOMARKER 1840 2768 EX_R1(63:0) R0 28
        IOMARKER 1296 3088 ID_R2(63:0) R180 28
        IOMARKER 1840 3088 EX_R2(63:0) R0 28
        IOMARKER 1296 3440 ID_Addr(3:0) R180 28
        IOMARKER 1840 3440 EX_Addr(3:0) R0 28
        IOMARKER 1296 3776 ID_ALUC(3:0) R180 28
        IOMARKER 1840 3776 EX_ALUC(3:0) R0 28
        IOMARKER 1840 2096 EX_B R0 28
        IOMARKER 1296 2096 ID_B R180 28
        IOMARKER 1296 1744 ID_MemW R180 28
        IOMARKER 1840 1744 EX_MemW R0 28
        IOMARKER 1296 1392 ID_MemR R180 28
        IOMARKER 1840 1392 EX_MemR R0 28
        IOMARKER 1296 1040 ID_M2Reg R180 28
        IOMARKER 1840 1040 EX_M2Reg R0 28
        IOMARKER 1296 688 ID_RegW R180 28
        IOMARKER 1840 688 EX_RegW R0 28
        IOMARKER 1296 2432 ID_ALUSrc R180 28
        IOMARKER 1840 2432 EX_ALUSrc R0 28
        IOMARKER 1296 4112 ID_ALUD(11:0) R180 28
        IOMARKER 1840 4112 EX_ALUD(11:0) R0 28
        IOMARKER 1296 336 ID_BT(1:0) R180 28
        IOMARKER 1840 336 EX_BT(1:0) R0 28
        BEGIN BRANCH CLR
            WIRE 1280 4640 1360 4640
            WIRE 1360 4640 1376 4640
            WIRE 1360 528 1376 528
            WIRE 1360 528 1360 912
            WIRE 1360 912 1376 912
            WIRE 1360 912 1360 1264
            WIRE 1360 1264 1376 1264
            WIRE 1360 1264 1360 1616
            WIRE 1360 1616 1376 1616
            WIRE 1360 1616 1360 1968
            WIRE 1360 1968 1376 1968
            WIRE 1360 1968 1360 2320
            WIRE 1360 2320 1376 2320
            WIRE 1360 2320 1360 2656
            WIRE 1360 2656 1376 2656
            WIRE 1360 2656 1360 2960
            WIRE 1360 2960 1360 3280
            WIRE 1360 3280 1376 3280
            WIRE 1360 3280 1360 3632
            WIRE 1360 3632 1376 3632
            WIRE 1360 3632 1360 3968
            WIRE 1360 3968 1360 4304
            WIRE 1360 4304 1376 4304
            WIRE 1360 4304 1360 4640
            WIRE 1360 3968 1376 3968
            WIRE 1360 2960 1376 2960
        END BRANCH
        BEGIN BRANCH ID_ALUSrc
            WIRE 1296 2432 1376 2432
        END BRANCH
        BEGIN INSTANCE XLXI_84 1376 4672 R0
        END INSTANCE
        BEGIN BRANCH ID_TID(1:0)
            WIRE 1296 4448 1376 4448
        END BRANCH
        BEGIN BRANCH EX_TID(1:0)
            WIRE 1760 4448 1840 4448
        END BRANCH
        IOMARKER 1296 4448 ID_TID(1:0) R180 28
        IOMARKER 1840 4448 EX_TID(1:0) R0 28
        IOMARKER 1280 4512 CE R180 28
        IOMARKER 1280 4576 CLK R180 28
        IOMARKER 1280 4640 CLR R180 28
    END SHEET
END SCHEMATIC
