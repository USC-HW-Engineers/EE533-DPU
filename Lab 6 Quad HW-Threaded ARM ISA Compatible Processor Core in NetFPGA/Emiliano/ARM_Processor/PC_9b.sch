VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL T3
        SIGNAL XLXN_4
        SIGNAL T5
        SIGNAL XLXN_6
        SIGNAL T6
        SIGNAL XLXN_8
        SIGNAL T4
        SIGNAL XLXN_10
        SIGNAL T7
        SIGNAL XLXN_12
        SIGNAL T8
        SIGNAL XLXN_14
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL CE
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL C
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL CLR
        SIGNAL XLXN_25
        SIGNAL T2
        SIGNAL XLXN_27
        SIGNAL T_ID(0)
        SIGNAL T_ID(1)
        SIGNAL Q(2)
        SIGNAL Q(3)
        SIGNAL Q(4)
        SIGNAL Q(5)
        SIGNAL Q(6)
        SIGNAL Q(7)
        SIGNAL Q(8)
        SIGNAL Q(8:2)
        SIGNAL XLXN_40
        SIGNAL T_ID(1:0)
        PORT Input CE
        PORT Input C
        PORT Input CLR
        PORT Output Q(8:2)
        PORT Output T_ID(1:0)
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
        BEGIN BLOCKDEF and3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -176 144 -176 
            LINE N 144 -80 64 -80 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 64 -64 64 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF ftce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 384 -256 320 -256 
            LINE N 0 -256 64 -256 
            LINE N 0 -32 64 -32 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and5
            TIMESTAMP 2000 1 1 10 10 10
            ARC N 96 -240 192 -144 144 -144 144 -240 
            LINE N 144 -144 64 -144 
            LINE N 64 -240 144 -240 
            LINE N 64 -64 64 -320 
            LINE N 256 -192 192 -192 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK I_36_15 and2
            PIN I0 Q(4)
            PIN I1 T4
            PIN O T5
        END BLOCK
        BEGIN BLOCK I_36_4 and2
            PIN I0 T_ID(1)
            PIN I1 T_ID(0)
            PIN O T2
        END BLOCK
        BEGIN BLOCK I_36_3 and3
            PIN I0 Q(2)
            PIN I1 T_ID(1)
            PIN I2 T_ID(0)
            PIN O T3
        END BLOCK
        BEGIN BLOCK I_36_19 and3
            PIN I0 Q(5)
            PIN I1 Q(4)
            PIN I2 T4
            PIN O T6
        END BLOCK
        BEGIN BLOCK I_Q1 ftce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN T T_ID(0)
            PIN Q T_ID(1)
        END BLOCK
        BEGIN BLOCK I_Q0 ftce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN T XLXN_1
            PIN Q T_ID(0)
        END BLOCK
        BEGIN BLOCK I_Q3 ftce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN T T3
            PIN Q Q(3)
        END BLOCK
        BEGIN BLOCK I_Q2 ftce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN T T2
            PIN Q Q(2)
        END BLOCK
        BEGIN BLOCK I_Q7 ftce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN T T7
            PIN Q Q(7)
        END BLOCK
        BEGIN BLOCK I_Q6 ftce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN T T6
            PIN Q Q(6)
        END BLOCK
        BEGIN BLOCK I_Q5 ftce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN T T5
            PIN Q Q(5)
        END BLOCK
        BEGIN BLOCK I_Q4 ftce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN T T4
            PIN Q Q(4)
        END BLOCK
        BEGIN BLOCK I_Q8 ftce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN T T8
            PIN Q Q(8)
        END BLOCK
        BEGIN BLOCK I_36_9 vcc
            PIN P XLXN_1
        END BLOCK
        BEGIN BLOCK I_36_10 and4
            PIN I0 Q(3)
            PIN I1 Q(2)
            PIN I2 T_ID(1)
            PIN I3 T_ID(0)
            PIN O T4
        END BLOCK
        BEGIN BLOCK I_36_21 and4
            PIN I0 Q(6)
            PIN I1 Q(5)
            PIN I2 Q(4)
            PIN I3 T4
            PIN O T7
        END BLOCK
        BEGIN BLOCK I_36_14 and5
            PIN I0 Q(7)
            PIN I1 Q(6)
            PIN I2 Q(5)
            PIN I3 Q(4)
            PIN I4 T4
            PIN O T8
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 7040
        INSTANCE I_36_15 2096 4096 R0
        INSTANCE I_36_4 2096 2144 R0
        INSTANCE I_36_3 2096 2816 R0
        INSTANCE I_36_19 2096 4768 R0
        INSTANCE I_Q1 912 2144 R0
        INSTANCE I_Q0 912 1568 R0
        INSTANCE I_Q3 912 3392 R0
        INSTANCE I_Q2 912 2752 R0
        INSTANCE I_Q7 912 6048 R0
        INSTANCE I_Q6 912 5344 R0
        INSTANCE I_Q5 912 4704 R0
        INSTANCE I_Q4 912 4096 R0
        INSTANCE I_Q8 3248 1312 R0
        INSTANCE I_36_9 464 1312 R0
        INSTANCE I_36_10 2096 3520 R0
        INSTANCE I_36_21 2096 5472 R0
        INSTANCE I_36_14 2096 6336 R0
        BEGIN BRANCH XLXN_1
            WIRE 528 1312 912 1312
        END BRANCH
        BEGIN BRANCH T3
            WIRE 720 2848 720 3136
            WIRE 720 3136 912 3136
            WIRE 720 2848 2448 2848
            WIRE 2352 2688 2384 2688
            WIRE 2384 2688 2448 2688
            WIRE 2448 2688 2448 2848
            BEGIN DISPLAY 2384 2688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T5
            WIRE 720 4160 720 4448
            WIRE 720 4448 912 4448
            WIRE 720 4160 2448 4160
            WIRE 2352 4000 2384 4000
            WIRE 2384 4000 2448 4000
            WIRE 2448 4000 2448 4160
            BEGIN DISPLAY 2384 4000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T6
            WIRE 720 4800 720 5088
            WIRE 720 5088 912 5088
            WIRE 720 4800 2448 4800
            WIRE 2352 4640 2384 4640
            WIRE 2384 4640 2448 4640
            WIRE 2448 4640 2448 4800
            BEGIN DISPLAY 2384 4640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T4
            WIRE 720 3552 720 3840
            WIRE 720 3840 912 3840
            WIRE 720 3552 1456 3552
            WIRE 1456 3552 1456 3968
            WIRE 1456 3968 1456 4576
            WIRE 1456 4576 1456 5216
            WIRE 1456 5216 1456 6016
            WIRE 1456 6016 2096 6016
            WIRE 1456 5216 2096 5216
            WIRE 1456 4576 2096 4576
            WIRE 1456 3968 2096 3968
            WIRE 1456 3552 2448 3552
            WIRE 2352 3360 2384 3360
            WIRE 2384 3360 2448 3360
            WIRE 2448 3360 2448 3552
            BEGIN DISPLAY 2384 3360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T7
            WIRE 720 5504 720 5792
            WIRE 720 5792 912 5792
            WIRE 720 5504 2448 5504
            WIRE 2352 5312 2384 5312
            WIRE 2384 5312 2448 5312
            WIRE 2448 5312 2448 5504
            BEGIN DISPLAY 2384 5312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T8
            WIRE 2352 6144 2384 6144
            WIRE 2384 6144 2736 6144
            WIRE 2736 864 2736 1056
            WIRE 2736 1056 2736 6144
            WIRE 2736 1056 3248 1056
            WIRE 2736 864 3792 864
            WIRE 3792 864 3792 1184
            WIRE 3792 1184 3792 1792
            WIRE 3792 1792 3792 2432
            WIRE 3792 2432 3792 3232
            WIRE 3792 3232 4432 3232
            WIRE 3792 2432 4432 2432
            WIRE 3792 1792 4432 1792
            WIRE 3792 1184 4432 1184
            BEGIN DISPLAY 2384 6144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 112 6432 144 6432
            WIRE 144 6432 656 6432
            WIRE 656 6432 2992 6432
            WIRE 2992 6432 4880 6432
            WIRE 656 1376 656 1952
            WIRE 656 1952 656 2560
            WIRE 656 2560 656 3200
            WIRE 656 3200 656 3904
            WIRE 656 3904 656 4512
            WIRE 656 4512 656 5152
            WIRE 656 5152 656 5856
            WIRE 656 5856 656 6432
            WIRE 656 5856 912 5856
            WIRE 656 5152 912 5152
            WIRE 656 4512 912 4512
            WIRE 656 3904 912 3904
            WIRE 656 3200 912 3200
            WIRE 656 2560 912 2560
            WIRE 656 1952 912 1952
            WIRE 656 1376 912 1376
            WIRE 2992 1120 2992 1728
            WIRE 2992 1728 2992 2368
            WIRE 2992 2368 2992 3072
            WIRE 2992 3072 2992 3904
            WIRE 2992 3904 2992 4512
            WIRE 2992 4512 2992 5152
            WIRE 2992 5152 2992 5856
            WIRE 2992 5856 2992 6432
            WIRE 2992 5856 3248 5856
            WIRE 2992 5152 3248 5152
            WIRE 2992 4512 3248 4512
            WIRE 2992 3904 3248 3904
            WIRE 2992 3072 3248 3072
            WIRE 2992 2368 3248 2368
            WIRE 2992 1728 3248 1728
            WIRE 2992 1120 3248 1120
            BEGIN DISPLAY 144 6432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C
            WIRE 112 6496 144 6496
            WIRE 144 6496 592 6496
            WIRE 592 6496 2928 6496
            WIRE 592 1440 592 2016
            WIRE 592 2016 592 2624
            WIRE 592 2624 592 3264
            WIRE 592 3264 592 3968
            WIRE 592 3968 592 4576
            WIRE 592 4576 592 5216
            WIRE 592 5216 592 5920
            WIRE 592 5920 592 6496
            WIRE 592 5920 912 5920
            WIRE 592 5216 912 5216
            WIRE 592 4576 912 4576
            WIRE 592 3968 912 3968
            WIRE 592 3264 912 3264
            WIRE 592 2624 912 2624
            WIRE 592 2016 912 2016
            WIRE 592 1440 912 1440
            WIRE 2928 1184 2928 1792
            WIRE 2928 1792 2928 2432
            WIRE 2928 2432 2928 3136
            WIRE 2928 3136 2928 3968
            WIRE 2928 3968 2928 4576
            WIRE 2928 4576 2928 5216
            WIRE 2928 5216 2928 5920
            WIRE 2928 5920 2928 6496
            WIRE 2928 5920 3248 5920
            WIRE 2928 5216 3248 5216
            WIRE 2928 4576 3248 4576
            WIRE 2928 3968 3248 3968
            WIRE 2928 3136 3248 3136
            WIRE 2928 2432 3248 2432
            WIRE 2928 1792 3248 1792
            WIRE 2928 1184 3248 1184
            BEGIN DISPLAY 144 6496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLR
            WIRE 112 6560 144 6560
            WIRE 144 6560 528 6560
            WIRE 528 6560 2864 6560
            WIRE 528 1536 528 2112
            WIRE 528 2112 528 2720
            WIRE 528 2720 528 3360
            WIRE 528 3360 528 4064
            WIRE 528 4064 528 4672
            WIRE 528 4672 528 5312
            WIRE 528 5312 528 6016
            WIRE 528 6016 528 6560
            WIRE 528 6016 912 6016
            WIRE 528 5312 912 5312
            WIRE 528 4672 912 4672
            WIRE 528 4064 912 4064
            WIRE 528 3360 912 3360
            WIRE 528 2720 912 2720
            WIRE 528 2112 912 2112
            WIRE 528 1536 912 1536
            WIRE 2864 1280 2864 1888
            WIRE 2864 1888 2864 2528
            WIRE 2864 2528 2864 3232
            WIRE 2864 3232 2864 4064
            WIRE 2864 4064 2864 4672
            WIRE 2864 4672 2864 5312
            WIRE 2864 5312 2864 6016
            WIRE 2864 6016 2864 6560
            WIRE 2864 6016 3248 6016
            WIRE 2864 5312 3248 5312
            WIRE 2864 4672 3248 4672
            WIRE 2864 4064 3248 4064
            WIRE 2864 3232 3248 3232
            WIRE 2864 2528 3248 2528
            WIRE 2864 1888 3248 1888
            WIRE 2864 1280 3248 1280
            BEGIN DISPLAY 144 6560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T2
            WIRE 720 2208 720 2496
            WIRE 720 2496 912 2496
            WIRE 720 2208 2448 2208
            WIRE 2352 2048 2384 2048
            WIRE 2384 2048 2448 2048
            WIRE 2448 2048 2448 2208
            BEGIN DISPLAY 2384 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T_ID(0)
            WIRE 720 1632 1520 1632
            WIRE 1520 1632 1520 2016
            WIRE 1520 2016 1520 2624
            WIRE 1520 2624 1520 3264
            WIRE 1520 3264 2096 3264
            WIRE 1520 2624 2096 2624
            WIRE 1520 2016 2096 2016
            WIRE 720 1632 720 1888
            WIRE 720 1888 912 1888
            WIRE 1296 1312 1520 1312
            WIRE 1520 1312 1520 1632
            WIRE 1520 1312 2336 1312
            WIRE 2336 1312 2528 1312
            BEGIN DISPLAY 2336 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T_ID(1)
            WIRE 1296 1888 1584 1888
            WIRE 1584 1888 1584 2080
            WIRE 1584 2080 1584 2688
            WIRE 1584 2688 1584 3328
            WIRE 1584 3328 2096 3328
            WIRE 1584 2688 2096 2688
            WIRE 1584 2080 2096 2080
            WIRE 1584 1888 2336 1888
            WIRE 2336 1888 2528 1888
            BEGIN DISPLAY 2336 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(2)
            WIRE 1296 2496 1648 2496
            WIRE 1648 2496 1648 2752
            WIRE 1648 2752 1648 3392
            WIRE 1648 3392 2096 3392
            WIRE 1648 2752 2096 2752
            WIRE 1648 2496 2544 2496
            WIRE 2544 2496 2624 2496
            BEGIN DISPLAY 2544 2496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 2496 2624 2496
        BEGIN BRANCH Q(3)
            WIRE 1296 3136 1712 3136
            WIRE 1712 3136 1712 3456
            WIRE 1712 3456 2096 3456
            WIRE 1712 3136 2544 3136
            WIRE 2544 3136 2624 3136
            BEGIN DISPLAY 2544 3136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 3136 2624 3136
        BEGIN BRANCH Q(4)
            WIRE 1296 3840 1520 3840
            WIRE 1520 3840 1520 4032
            WIRE 1520 4032 1520 4640
            WIRE 1520 4640 1520 5280
            WIRE 1520 5280 1520 6080
            WIRE 1520 6080 2096 6080
            WIRE 1520 5280 2096 5280
            WIRE 1520 4640 2096 4640
            WIRE 1520 4032 2096 4032
            WIRE 1520 3840 2544 3840
            WIRE 2544 3840 2624 3840
            BEGIN DISPLAY 2544 3840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 3840 2624 3840
        BEGIN BRANCH Q(5)
            WIRE 1296 4448 1584 4448
            WIRE 1584 4448 1584 4704
            WIRE 1584 4704 1584 5344
            WIRE 1584 5344 1584 6144
            WIRE 1584 6144 2096 6144
            WIRE 1584 5344 2096 5344
            WIRE 1584 4704 2096 4704
            WIRE 1584 4448 2544 4448
            WIRE 2544 4448 2624 4448
            BEGIN DISPLAY 2544 4448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 4448 2624 4448
        BEGIN BRANCH Q(6)
            WIRE 1296 5088 1648 5088
            WIRE 1648 5088 1648 5408
            WIRE 1648 5408 1648 6208
            WIRE 1648 6208 2096 6208
            WIRE 1648 5408 2096 5408
            WIRE 1648 5088 2544 5088
            WIRE 2544 5088 2624 5088
            BEGIN DISPLAY 2544 5088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 5088 2624 5088
        BEGIN BRANCH Q(7)
            WIRE 1296 5792 1712 5792
            WIRE 1712 5792 1712 6272
            WIRE 1712 6272 2096 6272
            WIRE 1712 5792 2544 5792
            WIRE 2544 5792 2624 5792
            BEGIN DISPLAY 2544 5792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 5792 2624 5792
        BEGIN BRANCH Q(8)
            WIRE 3632 1056 3856 1056
            WIRE 3856 1056 3856 1248
            WIRE 3856 1248 3856 1856
            WIRE 3856 1856 3856 2496
            WIRE 3856 2496 3856 3296
            WIRE 3856 3296 4432 3296
            WIRE 3856 2496 4432 2496
            WIRE 3856 1856 4432 1856
            WIRE 3856 1248 4432 1248
            WIRE 3856 1056 4880 1056
            WIRE 4880 1056 4960 1056
            BEGIN DISPLAY 4880 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4976 1056 4960 1056
        BEGIN BRANCH Q(8:2)
            WIRE 2640 768 2640 1312
            WIRE 2640 1312 2640 1888
            WIRE 2640 1888 2640 2496
            WIRE 2640 2496 2640 3136
            WIRE 2640 3136 2640 3840
            WIRE 2640 3840 2640 4448
            WIRE 2640 4448 2640 5088
            WIRE 2640 5088 2640 5792
            WIRE 2640 768 4976 768
            WIRE 4976 768 4976 1056
            WIRE 4976 1056 4976 1664
            WIRE 4976 1664 4976 2304
            WIRE 4976 2304 4976 3008
            WIRE 4976 3008 4976 3840
            WIRE 4976 3840 4976 4448
            WIRE 4976 4448 4976 5088
            WIRE 4976 5088 4976 5792
            WIRE 4976 768 5072 768
            WIRE 5072 768 5296 768
            BEGIN DISPLAY 5072 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T_ID(1:0)
            WIRE 2544 688 5296 688
            WIRE 2544 688 2544 1312
            WIRE 2544 1312 2544 1888
            WIRE 2544 1888 2544 1936
        END BRANCH
        BUSTAP 2544 1312 2528 1312
        BUSTAP 2544 1888 2528 1888
        IOMARKER 112 6432 CE R180 28
        IOMARKER 112 6496 C R180 28
        IOMARKER 112 6560 CLR R180 28
        IOMARKER 5296 768 Q(8:2) R0 28
        IOMARKER 5296 688 T_ID(1:0) R0 28
    END SHEET
END SCHEMATIC
