VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL D0(0)
        SIGNAL D1(0)
        SIGNAL D2(0)
        SIGNAL D3(0)
        SIGNAL E
        SIGNAL O(0)
        SIGNAL D0(1)
        SIGNAL D1(1)
        SIGNAL D2(1)
        SIGNAL D3(1)
        SIGNAL D0(2)
        SIGNAL D1(2)
        SIGNAL D2(2)
        SIGNAL D3(2)
        SIGNAL D0(3)
        SIGNAL D1(3)
        SIGNAL D2(3)
        SIGNAL D3(3)
        SIGNAL D0(6)
        SIGNAL D1(6)
        SIGNAL D2(6)
        SIGNAL D3(6)
        SIGNAL D0(5)
        SIGNAL D1(5)
        SIGNAL D2(5)
        SIGNAL D3(5)
        SIGNAL D0(4)
        SIGNAL D1(4)
        SIGNAL D2(4)
        SIGNAL D3(4)
        SIGNAL O(1)
        SIGNAL O(3)
        SIGNAL O(2)
        SIGNAL S(1)
        SIGNAL S(0)
        SIGNAL O(4)
        SIGNAL O(5)
        SIGNAL O(6)
        SIGNAL O(6:0)
        SIGNAL D2(6:0)
        SIGNAL D3(6:0)
        SIGNAL D0(6:0)
        SIGNAL D1(6:0)
        SIGNAL S(1:0)
        PORT Output O(6:0)
        PORT Input D2(6:0)
        PORT Input D3(6:0)
        PORT Input D0(6:0)
        PORT Input D1(6:0)
        PORT Input S(1:0)
        BEGIN BLOCKDEF m4_1e
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -416 96 -416 
            LINE N 0 -352 96 -352 
            LINE N 0 -288 96 -288 
            LINE N 0 -224 96 -224 
            LINE N 0 -32 96 -32 
            LINE N 320 -320 256 -320 
            LINE N 0 -160 96 -160 
            LINE N 0 -96 96 -96 
            LINE N 176 -96 96 -96 
            LINE N 176 -208 176 -96 
            LINE N 224 -32 96 -32 
            LINE N 224 -216 224 -32 
            LINE N 256 -224 96 -192 
            LINE N 256 -416 256 -224 
            LINE N 96 -448 256 -416 
            LINE N 96 -192 96 -448 
            LINE N 128 -160 96 -160 
            LINE N 128 -200 128 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_20 m4_1e
            PIN D0 D0(4)
            PIN D1 D1(4)
            PIN D2 D2(4)
            PIN D3 D3(4)
            PIN E E
            PIN S0 S(0)
            PIN S1 S(1)
            PIN O O(4)
        END BLOCK
        BEGIN BLOCK XLXI_21 m4_1e
            PIN D0 D0(5)
            PIN D1 D1(5)
            PIN D2 D2(5)
            PIN D3 D3(5)
            PIN E E
            PIN S0 S(0)
            PIN S1 S(1)
            PIN O O(5)
        END BLOCK
        BEGIN BLOCK XLXI_22 m4_1e
            PIN D0 D0(6)
            PIN D1 D1(6)
            PIN D2 D2(6)
            PIN D3 D3(6)
            PIN E E
            PIN S0 S(0)
            PIN S1 S(1)
            PIN O O(6)
        END BLOCK
        BEGIN BLOCK XLXI_2 m4_1e
            PIN D0 D0(0)
            PIN D1 D1(0)
            PIN D2 D2(0)
            PIN D3 D3(0)
            PIN E E
            PIN S0 S(0)
            PIN S1 S(1)
            PIN O O(0)
        END BLOCK
        BEGIN BLOCK XLXI_3 m4_1e
            PIN D0 D0(1)
            PIN D1 D1(1)
            PIN D2 D2(1)
            PIN D3 D3(1)
            PIN E E
            PIN S0 S(0)
            PIN S1 S(1)
            PIN O O(1)
        END BLOCK
        BEGIN BLOCK XLXI_10 m4_1e
            PIN D0 D0(2)
            PIN D1 D1(2)
            PIN D2 D2(2)
            PIN D3 D3(2)
            PIN E E
            PIN S0 S(0)
            PIN S1 S(1)
            PIN O O(2)
        END BLOCK
        BEGIN BLOCK XLXI_11 m4_1e
            PIN D0 D0(3)
            PIN D1 D1(3)
            PIN D2 D2(3)
            PIN D3 D3(3)
            PIN E E
            PIN S0 S(0)
            PIN S1 S(1)
            PIN O O(3)
        END BLOCK
        BEGIN BLOCK XLXI_88 vcc
            PIN P E
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_20 1408 1088 R0
        INSTANCE XLXI_21 1408 1568 R0
        INSTANCE XLXI_22 1408 2048 R0
        INSTANCE XLXI_2 848 1088 R0
        INSTANCE XLXI_3 848 1568 R0
        INSTANCE XLXI_10 848 2048 R0
        INSTANCE XLXI_11 848 2528 R0
        BEGIN BRANCH D0(0)
            WIRE 768 672 784 672
            WIRE 784 672 848 672
            BEGIN DISPLAY 784 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(0)
            WIRE 768 736 784 736
            WIRE 784 736 848 736
            BEGIN DISPLAY 784 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(0)
            WIRE 768 800 800 800
            WIRE 800 800 848 800
            BEGIN DISPLAY 800 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(0)
            WIRE 768 864 800 864
            WIRE 800 864 848 864
            BEGIN DISPLAY 800 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH E
            WIRE 656 1056 752 1056
            WIRE 752 1056 784 1056
            WIRE 784 1056 848 1056
            WIRE 752 1056 752 1536
            WIRE 752 1536 768 1536
            WIRE 768 1536 848 1536
            WIRE 752 1536 752 2016
            WIRE 752 2016 752 2496
            WIRE 752 2496 848 2496
            WIRE 752 2016 768 2016
            WIRE 768 2016 848 2016
            BEGIN DISPLAY 784 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(0)
            WIRE 1168 768 1200 768
            WIRE 1200 768 1248 768
            BEGIN DISPLAY 1200 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(1)
            WIRE 768 1152 800 1152
            WIRE 800 1152 848 1152
            BEGIN DISPLAY 800 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(1)
            WIRE 768 1216 784 1216
            WIRE 784 1216 848 1216
            BEGIN DISPLAY 784 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(1)
            WIRE 768 1280 816 1280
            WIRE 816 1280 848 1280
            BEGIN DISPLAY 816 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(1)
            WIRE 768 1344 800 1344
            WIRE 800 1344 848 1344
            BEGIN DISPLAY 800 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(2)
            WIRE 768 1632 800 1632
            WIRE 800 1632 848 1632
            BEGIN DISPLAY 800 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(2)
            WIRE 768 1696 800 1696
            WIRE 800 1696 848 1696
            BEGIN DISPLAY 800 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(2)
            WIRE 768 1760 800 1760
            WIRE 800 1760 848 1760
            BEGIN DISPLAY 800 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(2)
            WIRE 768 1824 816 1824
            WIRE 816 1824 848 1824
            BEGIN DISPLAY 816 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(3)
            WIRE 768 2112 800 2112
            WIRE 800 2112 848 2112
            BEGIN DISPLAY 800 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(3)
            WIRE 768 2176 784 2176
            WIRE 784 2176 848 2176
            BEGIN DISPLAY 784 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(3)
            WIRE 768 2240 816 2240
            WIRE 816 2240 848 2240
            BEGIN DISPLAY 816 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(3)
            WIRE 768 2304 800 2304
            WIRE 800 2304 848 2304
            BEGIN DISPLAY 800 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(6)
            WIRE 1328 1632 1344 1632
            WIRE 1344 1632 1408 1632
            BEGIN DISPLAY 1344 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(6)
            WIRE 1328 1696 1344 1696
            WIRE 1344 1696 1408 1696
            BEGIN DISPLAY 1344 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(6)
            WIRE 1328 1760 1344 1760
            WIRE 1344 1760 1408 1760
            BEGIN DISPLAY 1344 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(6)
            WIRE 1328 1824 1344 1824
            WIRE 1344 1824 1408 1824
            BEGIN DISPLAY 1344 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(5)
            WIRE 1328 1152 1344 1152
            WIRE 1344 1152 1408 1152
            BEGIN DISPLAY 1344 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(5)
            WIRE 1328 1216 1344 1216
            WIRE 1344 1216 1408 1216
            BEGIN DISPLAY 1344 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(5)
            WIRE 1328 1280 1344 1280
            WIRE 1344 1280 1408 1280
            BEGIN DISPLAY 1344 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(5)
            WIRE 1328 1344 1360 1344
            WIRE 1360 1344 1408 1344
            BEGIN DISPLAY 1360 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(4)
            WIRE 1328 672 1344 672
            WIRE 1344 672 1408 672
            BEGIN DISPLAY 1344 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(4)
            WIRE 1328 736 1360 736
            WIRE 1360 736 1408 736
            BEGIN DISPLAY 1360 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(4)
            WIRE 1328 800 1360 800
            WIRE 1360 800 1408 800
            BEGIN DISPLAY 1360 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(4)
            WIRE 1328 864 1360 864
            WIRE 1360 864 1408 864
            BEGIN DISPLAY 1360 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(1)
            WIRE 1168 1248 1200 1248
            WIRE 1200 1248 1248 1248
            BEGIN DISPLAY 1200 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(3)
            WIRE 1168 2208 1200 2208
            WIRE 1200 2208 1248 2208
            BEGIN DISPLAY 1200 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(2)
            WIRE 1168 1728 1200 1728
            WIRE 1200 1728 1248 1728
            BEGIN DISPLAY 1200 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_88 592 1056 R0
        BEGIN BRANCH S(1)
            WIRE 736 992 736 1472
            WIRE 736 1472 848 1472
            WIRE 736 1472 736 1952
            WIRE 736 1952 736 2432
            WIRE 736 2432 848 2432
            WIRE 736 1952 848 1952
            WIRE 736 992 800 992
            WIRE 800 992 848 992
            BEGIN DISPLAY 800 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 720 928 720 1408
            WIRE 720 1408 848 1408
            WIRE 720 1408 720 1888
            WIRE 720 1888 720 2368
            WIRE 720 2368 848 2368
            WIRE 720 1888 848 1888
            WIRE 720 928 736 928
            WIRE 736 928 768 928
            WIRE 768 928 848 928
            BEGIN DISPLAY 736 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 1392 992 1408 992
            WIRE 1392 992 1392 1008
            WIRE 1392 1008 1392 1472
            WIRE 1392 1472 1408 1472
            WIRE 1392 1472 1392 1952
            WIRE 1392 1952 1408 1952
            WIRE 1392 1952 1392 2432
            WIRE 1392 2432 1408 2432
            BEGIN DISPLAY 1392 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 1376 928 1376 1408
            WIRE 1376 1408 1408 1408
            WIRE 1376 1408 1376 1888
            WIRE 1376 1888 1408 1888
            WIRE 1376 1888 1376 2368
            WIRE 1376 2368 1408 2368
            WIRE 1376 928 1392 928
            WIRE 1392 928 1408 928
            BEGIN DISPLAY 1392 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH E
            WIRE 1312 1056 1360 1056
            WIRE 1360 1056 1408 1056
            WIRE 1312 1056 1312 1536
            WIRE 1312 1536 1312 1552
            WIRE 1312 1552 1312 2016
            WIRE 1312 2016 1312 2496
            WIRE 1312 2496 1408 2496
            WIRE 1312 2016 1328 2016
            WIRE 1328 2016 1408 2016
            WIRE 1312 1536 1328 1536
            WIRE 1328 1536 1408 1536
            BEGIN DISPLAY 1360 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(4)
            WIRE 1728 768 1760 768
            WIRE 1760 768 1808 768
            BEGIN DISPLAY 1760 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(5)
            WIRE 1728 1248 1760 1248
            WIRE 1760 1248 1808 1248
            BEGIN DISPLAY 1760 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(6)
            WIRE 1728 1728 1760 1728
            WIRE 1760 1728 1808 1728
            BEGIN DISPLAY 1760 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(6:0)
            WIRE 1152 208 1232 208
        END BRANCH
        IOMARKER 1232 208 O(6:0) R0 28
        BEGIN BRANCH D2(6:0)
            WIRE 1008 288 1088 288
        END BRANCH
        BEGIN BRANCH D3(6:0)
            WIRE 1008 208 1088 208
        END BRANCH
        BEGIN BRANCH D0(6:0)
            WIRE 1008 448 1088 448
        END BRANCH
        BEGIN BRANCH D1(6:0)
            WIRE 1008 368 1088 368
        END BRANCH
        IOMARKER 1008 288 D2(6:0) R180 28
        IOMARKER 1008 208 D3(6:0) R180 28
        IOMARKER 1008 448 D0(6:0) R180 28
        IOMARKER 1008 368 D1(6:0) R180 28
        BEGIN BRANCH S(1:0)
            WIRE 1008 528 1088 528
        END BRANCH
        IOMARKER 1008 528 S(1:0) R180 28
    END SHEET
END SCHEMATIC
