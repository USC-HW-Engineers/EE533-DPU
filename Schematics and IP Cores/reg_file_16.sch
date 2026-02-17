VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CLR
        SIGNAL C
        SIGNAL CE
        SIGNAL Q(0)
        SIGNAL Q(1)
        SIGNAL Q(2)
        SIGNAL Q(3)
        SIGNAL Q(4)
        SIGNAL Q(5)
        SIGNAL Q(6)
        SIGNAL Q(7)
        SIGNAL Q(8)
        SIGNAL Q(9)
        SIGNAL Q(10)
        SIGNAL Q(11)
        SIGNAL Q(12)
        SIGNAL Q(13)
        SIGNAL Q(14)
        SIGNAL Q(15)
        SIGNAL Q(15:0)
        SIGNAL D(0)
        SIGNAL D(1)
        SIGNAL D(2)
        SIGNAL D(3)
        SIGNAL D(4)
        SIGNAL D(5)
        SIGNAL D(6)
        SIGNAL D(7)
        SIGNAL D(8)
        SIGNAL D(9)
        SIGNAL D(10)
        SIGNAL D(11)
        SIGNAL D(12)
        SIGNAL D(13)
        SIGNAL D(14)
        SIGNAL D(15)
        SIGNAL D(15:0)
        PORT Input CLR
        PORT Input C
        PORT Input CE
        PORT Output Q(15:0)
        PORT Input D(15:0)
        BEGIN BLOCKDEF fdce_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -256 64 -256 
            RECTANGLE N 64 -304 320 -80 
            LINE N 192 -80 192 -32 
            LINE N 192 -32 64 -32 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            LINE N 0 -192 64 -192 
        END BLOCKDEF
        BEGIN BLOCK XLXI_23 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(0)
            PIN Q Q(0)
        END BLOCK
        BEGIN BLOCK XLXI_24 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(1)
            PIN Q Q(1)
        END BLOCK
        BEGIN BLOCK XLXI_25 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(2)
            PIN Q Q(2)
        END BLOCK
        BEGIN BLOCK XLXI_26 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(3)
            PIN Q Q(3)
        END BLOCK
        BEGIN BLOCK XLXI_27 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(4)
            PIN Q Q(4)
        END BLOCK
        BEGIN BLOCK XLXI_28 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(5)
            PIN Q Q(5)
        END BLOCK
        BEGIN BLOCK XLXI_29 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(6)
            PIN Q Q(6)
        END BLOCK
        BEGIN BLOCK XLXI_30 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(7)
            PIN Q Q(7)
        END BLOCK
        BEGIN BLOCK XLXI_39 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(8)
            PIN Q Q(8)
        END BLOCK
        BEGIN BLOCK XLXI_40 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(9)
            PIN Q Q(9)
        END BLOCK
        BEGIN BLOCK XLXI_41 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(10)
            PIN Q Q(10)
        END BLOCK
        BEGIN BLOCK XLXI_42 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(11)
            PIN Q Q(11)
        END BLOCK
        BEGIN BLOCK XLXI_43 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(12)
            PIN Q Q(12)
        END BLOCK
        BEGIN BLOCK XLXI_44 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(13)
            PIN Q Q(13)
        END BLOCK
        BEGIN BLOCK XLXI_45 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(14)
            PIN Q Q(14)
        END BLOCK
        BEGIN BLOCK XLXI_46 fdce_1
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(15)
            PIN Q Q(15)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN BRANCH CLR
            WIRE 464 3440 496 3440
            WIRE 496 3440 1488 3440
            WIRE 1488 3440 3504 3440
            WIRE 1488 496 1488 880
            WIRE 1488 880 1488 1264
            WIRE 1488 1264 1488 1648
            WIRE 1488 1648 1488 2032
            WIRE 1488 2032 1488 2416
            WIRE 1488 2416 1488 2800
            WIRE 1488 2800 1488 3184
            WIRE 1488 3184 1488 3440
            WIRE 1488 3184 1616 3184
            WIRE 1488 2800 1616 2800
            WIRE 1488 2416 1616 2416
            WIRE 1488 2032 1616 2032
            WIRE 1488 1648 1616 1648
            WIRE 1488 1264 1616 1264
            WIRE 1488 880 1616 880
            WIRE 1488 496 1616 496
            WIRE 3504 496 3504 880
            WIRE 3504 880 3504 1264
            WIRE 3504 1264 3504 1648
            WIRE 3504 1648 3504 2032
            WIRE 3504 2032 3504 2416
            WIRE 3504 2416 3504 2800
            WIRE 3504 2800 3504 3184
            WIRE 3504 3184 3504 3440
            WIRE 3504 3184 3632 3184
            WIRE 3504 2800 3632 2800
            WIRE 3504 2416 3632 2416
            WIRE 3504 2032 3632 2032
            WIRE 3504 1648 3632 1648
            WIRE 3504 1264 3632 1264
            WIRE 3504 880 3632 880
            WIRE 3504 496 3632 496
            BEGIN DISPLAY 496 3440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C
            WIRE 464 3376 496 3376
            WIRE 496 3376 1424 3376
            WIRE 1424 3376 3440 3376
            WIRE 1424 400 1424 784
            WIRE 1424 784 1424 1168
            WIRE 1424 1168 1424 1552
            WIRE 1424 1552 1424 1936
            WIRE 1424 1936 1424 2320
            WIRE 1424 2320 1424 2704
            WIRE 1424 2704 1424 3088
            WIRE 1424 3088 1424 3376
            WIRE 1424 3088 1616 3088
            WIRE 1424 2704 1616 2704
            WIRE 1424 2320 1616 2320
            WIRE 1424 1936 1616 1936
            WIRE 1424 1552 1616 1552
            WIRE 1424 1168 1616 1168
            WIRE 1424 784 1616 784
            WIRE 1424 400 1616 400
            WIRE 3440 400 3440 784
            WIRE 3440 784 3440 1168
            WIRE 3440 1168 3440 1552
            WIRE 3440 1552 3440 1936
            WIRE 3440 1936 3440 2320
            WIRE 3440 2320 3440 2704
            WIRE 3440 2704 3440 3088
            WIRE 3440 3088 3440 3376
            WIRE 3440 3088 3632 3088
            WIRE 3440 2704 3632 2704
            WIRE 3440 2320 3632 2320
            WIRE 3440 1936 3632 1936
            WIRE 3440 1552 3632 1552
            WIRE 3440 1168 3632 1168
            WIRE 3440 784 3632 784
            WIRE 3440 400 3632 400
            BEGIN DISPLAY 496 3376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 464 3312 496 3312
            WIRE 496 3312 1360 3312
            WIRE 1360 3312 3376 3312
            WIRE 1360 336 1360 720
            WIRE 1360 720 1360 1104
            WIRE 1360 1104 1360 1488
            WIRE 1360 1488 1360 1872
            WIRE 1360 1872 1360 2256
            WIRE 1360 2256 1360 2640
            WIRE 1360 2640 1360 3024
            WIRE 1360 3024 1360 3312
            WIRE 1360 3024 1616 3024
            WIRE 1360 2640 1616 2640
            WIRE 1360 2256 1616 2256
            WIRE 1360 1872 1616 1872
            WIRE 1360 1488 1616 1488
            WIRE 1360 1104 1616 1104
            WIRE 1360 720 1616 720
            WIRE 1360 336 1616 336
            WIRE 3376 336 3376 720
            WIRE 3376 720 3376 1104
            WIRE 3376 1104 3376 1488
            WIRE 3376 1488 3376 1872
            WIRE 3376 1872 3376 2256
            WIRE 3376 2256 3376 2640
            WIRE 3376 2640 3376 3024
            WIRE 3376 3024 3376 3312
            WIRE 3376 3024 3632 3024
            WIRE 3376 2640 3632 2640
            WIRE 3376 2256 3632 2256
            WIRE 3376 1872 3632 1872
            WIRE 3376 1488 3632 1488
            WIRE 3376 1104 3632 1104
            WIRE 3376 720 3632 720
            WIRE 3376 336 3632 336
            BEGIN DISPLAY 496 3312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(0)
            WIRE 2000 272 2512 272
            WIRE 2512 272 2624 272
            BEGIN DISPLAY 2512 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 272 2624 272
        BEGIN BRANCH Q(1)
            WIRE 2000 656 2512 656
            WIRE 2512 656 2624 656
            BEGIN DISPLAY 2512 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 656 2624 656
        BEGIN BRANCH Q(2)
            WIRE 2000 1040 2512 1040
            WIRE 2512 1040 2624 1040
            BEGIN DISPLAY 2512 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 1040 2624 1040
        BEGIN BRANCH Q(3)
            WIRE 2000 1424 2512 1424
            WIRE 2512 1424 2624 1424
            BEGIN DISPLAY 2512 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 1424 2624 1424
        BEGIN BRANCH Q(4)
            WIRE 2000 1808 2512 1808
            WIRE 2512 1808 2624 1808
            BEGIN DISPLAY 2512 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 1808 2624 1808
        BEGIN BRANCH Q(5)
            WIRE 2000 2192 2512 2192
            WIRE 2512 2192 2624 2192
            BEGIN DISPLAY 2512 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 2192 2624 2192
        BEGIN BRANCH Q(6)
            WIRE 2000 2576 2512 2576
            WIRE 2512 2576 2624 2576
            BEGIN DISPLAY 2512 2576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 2576 2624 2576
        BEGIN BRANCH Q(7)
            WIRE 2000 2960 2512 2960
            WIRE 2512 2960 2624 2960
            BEGIN DISPLAY 2512 2960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 2960 2624 2960
        BEGIN BRANCH Q(8)
            WIRE 4016 272 4032 272
            WIRE 4032 272 4528 272
            WIRE 4528 272 4640 272
            BEGIN DISPLAY 4528 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4656 272 4640 272
        BEGIN BRANCH Q(9)
            WIRE 4016 656 4032 656
            WIRE 4032 656 4528 656
            WIRE 4528 656 4640 656
            BEGIN DISPLAY 4528 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4656 656 4640 656
        BEGIN BRANCH Q(10)
            WIRE 4016 1040 4032 1040
            WIRE 4032 1040 4528 1040
            WIRE 4528 1040 4640 1040
            BEGIN DISPLAY 4528 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4656 1040 4640 1040
        BEGIN BRANCH Q(11)
            WIRE 4016 1424 4032 1424
            WIRE 4032 1424 4528 1424
            WIRE 4528 1424 4640 1424
            BEGIN DISPLAY 4528 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4656 1424 4640 1424
        BEGIN BRANCH Q(12)
            WIRE 4016 1808 4032 1808
            WIRE 4032 1808 4528 1808
            WIRE 4528 1808 4640 1808
            BEGIN DISPLAY 4528 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4656 1808 4640 1808
        BEGIN BRANCH Q(13)
            WIRE 4016 2192 4032 2192
            WIRE 4032 2192 4528 2192
            WIRE 4528 2192 4640 2192
            BEGIN DISPLAY 4528 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4656 2192 4640 2192
        BEGIN BRANCH Q(14)
            WIRE 4016 2576 4032 2576
            WIRE 4032 2576 4528 2576
            WIRE 4528 2576 4640 2576
            BEGIN DISPLAY 4528 2576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4656 2576 4640 2576
        BEGIN BRANCH Q(15)
            WIRE 4016 2960 4032 2960
            WIRE 4032 2960 4528 2960
            WIRE 4528 2960 4640 2960
            WIRE 4640 2928 4640 2960
            BEGIN DISPLAY 4528 2960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4656 2928 4640 2928
        BEGIN BRANCH Q(15:0)
            WIRE 2640 112 2640 272
            WIRE 2640 272 2640 656
            WIRE 2640 656 2640 1040
            WIRE 2640 1040 2640 1424
            WIRE 2640 1424 2640 1808
            WIRE 2640 1808 2640 2192
            WIRE 2640 2192 2640 2576
            WIRE 2640 2576 2640 2960
            WIRE 2640 112 4656 112
            WIRE 4656 112 4656 272
            WIRE 4656 272 4656 656
            WIRE 4656 656 4656 1040
            WIRE 4656 1040 4656 1424
            WIRE 4656 1424 4656 1808
            WIRE 4656 1808 4656 2192
            WIRE 4656 2192 4656 2576
            WIRE 4656 2576 4656 2928
            WIRE 4656 2928 4656 2960
            WIRE 4656 2960 4944 2960
            WIRE 4944 2960 5168 2960
            BEGIN DISPLAY 4944 2960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 976 272 992 272
        BEGIN BRANCH D(0)
            WIRE 992 272 1008 272
            WIRE 1008 272 1616 272
            BEGIN DISPLAY 1008 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 976 656 992 656
        BEGIN BRANCH D(1)
            WIRE 992 656 1008 656
            WIRE 1008 656 1616 656
            BEGIN DISPLAY 1008 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 976 1040 992 1040
        BEGIN BRANCH D(2)
            WIRE 992 1040 1008 1040
            WIRE 1008 1040 1616 1040
            BEGIN DISPLAY 1008 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 976 1424 992 1424
        BEGIN BRANCH D(3)
            WIRE 992 1424 1008 1424
            WIRE 1008 1424 1616 1424
            BEGIN DISPLAY 1008 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 976 1808 992 1808
        BEGIN BRANCH D(4)
            WIRE 992 1808 1008 1808
            WIRE 1008 1808 1616 1808
            BEGIN DISPLAY 1008 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 976 2192 992 2192
        BEGIN BRANCH D(5)
            WIRE 992 2192 1008 2192
            WIRE 1008 2192 1616 2192
            BEGIN DISPLAY 1008 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 976 2576 992 2576
        BEGIN BRANCH D(6)
            WIRE 992 2576 1008 2576
            WIRE 1008 2576 1616 2576
            BEGIN DISPLAY 1008 2576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 976 2960 992 2960
        BEGIN BRANCH D(7)
            WIRE 992 2960 1008 2960
            WIRE 1008 2960 1616 2960
            BEGIN DISPLAY 1008 2960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 272 3008 272
        BEGIN BRANCH D(8)
            WIRE 3008 272 3024 272
            WIRE 3024 272 3632 272
            BEGIN DISPLAY 3024 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 656 3008 656
        BEGIN BRANCH D(9)
            WIRE 3008 656 3024 656
            WIRE 3024 656 3632 656
            BEGIN DISPLAY 3024 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 1040 3008 1040
        BEGIN BRANCH D(10)
            WIRE 3008 1040 3024 1040
            WIRE 3024 1040 3632 1040
            BEGIN DISPLAY 3024 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 1424 3008 1424
        BEGIN BRANCH D(11)
            WIRE 3008 1424 3024 1424
            WIRE 3024 1424 3632 1424
            BEGIN DISPLAY 3024 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 1808 3008 1808
        BEGIN BRANCH D(12)
            WIRE 3008 1808 3024 1808
            WIRE 3024 1808 3632 1808
            BEGIN DISPLAY 3024 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 2192 3008 2192
        BEGIN BRANCH D(13)
            WIRE 3008 2192 3024 2192
            WIRE 3024 2192 3632 2192
            BEGIN DISPLAY 3024 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 2576 3008 2576
        BEGIN BRANCH D(14)
            WIRE 3008 2576 3024 2576
            WIRE 3024 2576 3632 2576
            BEGIN DISPLAY 3024 2576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 2960 3008 2960
        BEGIN BRANCH D(15)
            WIRE 3008 2960 3024 2960
            WIRE 3024 2960 3632 2960
            BEGIN DISPLAY 3024 2960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(15:0)
            WIRE 464 3248 976 3248
            WIRE 976 3248 2992 3248
            WIRE 976 272 976 656
            WIRE 976 656 976 1040
            WIRE 976 1040 976 1424
            WIRE 976 1424 976 1808
            WIRE 976 1808 976 2192
            WIRE 976 2192 976 2576
            WIRE 976 2576 976 2960
            WIRE 976 2960 976 3248
            WIRE 2992 272 2992 656
            WIRE 2992 656 2992 1040
            WIRE 2992 1040 2992 1424
            WIRE 2992 1424 2992 1808
            WIRE 2992 1808 2992 2192
            WIRE 2992 2192 2992 2576
            WIRE 2992 2576 2992 2960
            WIRE 2992 2960 2992 3248
        END BRANCH
        IOMARKER 464 3440 CLR R180 28
        IOMARKER 464 3376 C R180 28
        IOMARKER 464 3312 CE R180 28
        IOMARKER 5168 2960 Q(15:0) R0 28
        IOMARKER 464 3248 D(15:0) R180 28
        INSTANCE XLXI_23 1616 528 R0
        INSTANCE XLXI_24 1616 912 R0
        INSTANCE XLXI_25 1616 1296 R0
        INSTANCE XLXI_26 1616 1680 R0
        INSTANCE XLXI_27 1616 2064 R0
        INSTANCE XLXI_28 1616 2448 R0
        INSTANCE XLXI_29 1616 2832 R0
        INSTANCE XLXI_30 1616 3216 R0
        INSTANCE XLXI_39 3632 528 R0
        INSTANCE XLXI_40 3632 912 R0
        INSTANCE XLXI_41 3632 1296 R0
        INSTANCE XLXI_42 3632 1680 R0
        INSTANCE XLXI_43 3632 2064 R0
        INSTANCE XLXI_44 3632 2448 R0
        INSTANCE XLXI_45 3632 2832 R0
        INSTANCE XLXI_46 3632 3216 R0
    END SHEET
END SCHEMATIC
