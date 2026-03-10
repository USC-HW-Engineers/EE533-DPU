VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_7
        SIGNAL XLXN_13
        SIGNAL XLXN_15
        SIGNAL XLXN_17
        SIGNAL XLXN_22
        SIGNAL XLXN_24
        SIGNAL XLXN_28
        SIGNAL XLXN_33
        SIGNAL XLXN_35
        SIGNAL XLXN_45
        SIGNAL XLXN_46
        SIGNAL XLXN_48
        SIGNAL XLXN_49
        SIGNAL XLXN_50
        SIGNAL XLXN_51
        SIGNAL XLXN_54
        SIGNAL XLXN_56
        SIGNAL XLXN_59
        SIGNAL XLXN_61
        SIGNAL XLXN_66
        SIGNAL XLXN_68
        SIGNAL XLXN_71
        SIGNAL XLXN_73
        SIGNAL XLXN_76
        SIGNAL XLXN_79
        SIGNAL XLXN_84
        SIGNAL XLXN_86
        SIGNAL XLXN_89
        SIGNAL XLXN_91
        SIGNAL XLXN_94
        SIGNAL XLXN_97
        SIGNAL Q(0)
        SIGNAL Q(1)
        SIGNAL Q(2)
        SIGNAL Q(3)
        SIGNAL XLXN_102
        SIGNAL T2
        SIGNAL XLXN_104
        SIGNAL T3
        SIGNAL Q(4)
        SIGNAL XLXN_107
        SIGNAL XLXN_52
        SIGNAL XLXN_109
        SIGNAL XLXN_55
        SIGNAL Q(5)
        SIGNAL XLXN_112
        SIGNAL XLXN_58
        SIGNAL Q(6)
        SIGNAL XLXN_1
        SIGNAL D(0)
        SIGNAL D(1)
        SIGNAL D(2)
        SIGNAL D(3)
        SIGNAL D(4)
        SIGNAL D(5)
        SIGNAL D(6)
        SIGNAL Q(7)
        SIGNAL XLXN_127
        SIGNAL XLXN_128
        SIGNAL XLXN_131
        SIGNAL XLXN_132
        SIGNAL XLXN_133
        SIGNAL Q(8)
        SIGNAL Q(8:0)
        SIGNAL D(7)
        SIGNAL D(8:0)
        SIGNAL L
        SIGNAL CLK
        SIGNAL CLR
        SIGNAL XLXN_160
        SIGNAL XLXN_161
        SIGNAL CE
        SIGNAL D(8)
        SIGNAL XLXN_168
        SIGNAL XLXN_169
        SIGNAL XLXN_170
        SIGNAL XLXN_171
        PORT Output Q(8:0)
        PORT Input D(8:0)
        PORT Input L
        PORT Input CLK
        PORT Input CLR
        PORT Input CE
        BEGIN BLOCKDEF ftclex
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -192 64 -192 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -32 64 -32 
            LINE N 384 -256 320 -256 
            LINE N 0 -320 64 -320 
            LINE N 0 -384 64 -384 
            LINE N 0 -128 64 -128 
            RECTANGLE N 64 -448 320 -64 
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
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCK I_Q6 ftclex
            PIN C CLK
            PIN CE XLXN_169
            PIN CLR CLR
            PIN D D(6)
            PIN L L
            PIN T XLXN_55
            PIN Q Q(6)
        END BLOCK
        BEGIN BLOCK I_Q5 ftclex
            PIN C CLK
            PIN CE XLXN_169
            PIN CLR CLR
            PIN D D(5)
            PIN L L
            PIN T XLXN_52
            PIN Q Q(5)
        END BLOCK
        BEGIN BLOCK I_Q4 ftclex
            PIN C CLK
            PIN CE XLXN_169
            PIN CLR CLR
            PIN D D(4)
            PIN L L
            PIN T XLXN_58
            PIN Q Q(4)
        END BLOCK
        BEGIN BLOCK I_Q3 ftclex
            PIN C CLK
            PIN CE XLXN_169
            PIN CLR CLR
            PIN D D(3)
            PIN L L
            PIN T T3
            PIN Q Q(3)
        END BLOCK
        BEGIN BLOCK I_Q2 ftclex
            PIN C CLK
            PIN CE XLXN_169
            PIN CLR CLR
            PIN D D(2)
            PIN L L
            PIN T T2
            PIN Q Q(2)
        END BLOCK
        BEGIN BLOCK I_Q1 ftclex
            PIN C CLK
            PIN CE XLXN_169
            PIN CLR CLR
            PIN D D(1)
            PIN L L
            PIN T Q(0)
            PIN Q Q(1)
        END BLOCK
        BEGIN BLOCK I_Q0 ftclex
            PIN C CLK
            PIN CE XLXN_169
            PIN CLR CLR
            PIN D D(0)
            PIN L L
            PIN T XLXN_1
            PIN Q Q(0)
        END BLOCK
        BEGIN BLOCK I_36_18 and3
            PIN I0 Q(2)
            PIN I1 Q(1)
            PIN I2 Q(0)
            PIN O T3
        END BLOCK
        BEGIN BLOCK I_36_17 and4
            PIN I0 Q(3)
            PIN I1 Q(2)
            PIN I2 Q(1)
            PIN I3 Q(0)
            PIN O XLXN_58
        END BLOCK
        BEGIN BLOCK I_36_19 and2
            PIN I0 Q(1)
            PIN I1 Q(0)
            PIN O T2
        END BLOCK
        BEGIN BLOCK XLXI_32 and2
            PIN I0 Q(4)
            PIN I1 XLXN_58
            PIN O XLXN_52
        END BLOCK
        BEGIN BLOCK XLXI_35 and3
            PIN I0 Q(5)
            PIN I1 Q(4)
            PIN I2 XLXN_58
            PIN O XLXN_55
        END BLOCK
        BEGIN BLOCK XLXI_36 and4
            PIN I0 Q(6)
            PIN I1 Q(5)
            PIN I2 Q(4)
            PIN I3 XLXN_58
            PIN O XLXN_133
        END BLOCK
        BEGIN BLOCK I_36_31 vcc
            PIN P XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_79 and2
            PIN I0 Q(7)
            PIN I1 XLXN_133
            PIN O XLXN_132
        END BLOCK
        BEGIN BLOCK XLXI_80 ftclex
            PIN C CLK
            PIN CE XLXN_169
            PIN CLR CLR
            PIN D D(7)
            PIN L L
            PIN T XLXN_133
            PIN Q Q(7)
        END BLOCK
        BEGIN BLOCK I_36_68 or2
            PIN I0 CE
            PIN I1 L
            PIN O XLXN_169
        END BLOCK
        BEGIN BLOCK XLXI_83 ftclex
            PIN C CLK
            PIN CE XLXN_169
            PIN CLR CLR
            PIN D D(8)
            PIN L L
            PIN T XLXN_132
            PIN Q Q(8)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7609 5382
        ATTR LengthUnitName "CM"
        ATTR GridsPerUnit "4"
        INSTANCE I_Q6 1520 4880 R0
        INSTANCE I_Q5 1520 4144 R0
        INSTANCE I_Q4 1520 3504 R0
        INSTANCE I_Q3 1520 2640 R0
        INSTANCE I_Q2 1520 1872 R0
        INSTANCE I_Q1 1520 1232 R0
        INSTANCE I_Q0 1520 656 R0
        BEGIN BRANCH Q(0)
            WIRE 1392 720 2128 720
            WIRE 2128 720 2128 1104
            WIRE 2128 1104 2128 1712
            WIRE 2128 1712 2128 2512
            WIRE 2128 2512 2704 2512
            WIRE 2128 1712 2704 1712
            WIRE 2128 1104 2704 1104
            WIRE 1392 720 1392 976
            WIRE 1392 976 1520 976
            WIRE 1904 400 2128 400
            WIRE 2128 400 2128 720
            WIRE 2128 400 3504 400
            WIRE 3504 400 3584 400
            BEGIN DISPLAY 3504 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(1)
            WIRE 1904 976 2192 976
            WIRE 2192 976 2192 1168
            WIRE 2192 1168 2192 1776
            WIRE 2192 1776 2192 2576
            WIRE 2192 2576 2704 2576
            WIRE 2192 1776 2704 1776
            WIRE 2192 1168 2704 1168
            WIRE 2192 976 3504 976
            WIRE 3504 976 3584 976
            BEGIN DISPLAY 3504 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(2)
            WIRE 1904 1616 2256 1616
            WIRE 2256 1616 2256 1840
            WIRE 2256 1840 2256 2640
            WIRE 2256 2640 2704 2640
            WIRE 2256 1840 2704 1840
            WIRE 2256 1616 3504 1616
            WIRE 3504 1616 3584 1616
            BEGIN DISPLAY 3504 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(3)
            WIRE 1904 2384 2320 2384
            WIRE 2320 2384 2320 2704
            WIRE 2320 2704 2704 2704
            WIRE 2320 2384 3504 2384
            WIRE 3504 2384 3584 2384
            BEGIN DISPLAY 3504 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE I_36_18 2704 1904 R0
        INSTANCE I_36_17 2704 2768 R0
        INSTANCE I_36_19 2704 1232 R0
        BEGIN BRANCH T2
            WIRE 1456 1360 1456 1616
            WIRE 1456 1616 1520 1616
            WIRE 1456 1360 3056 1360
            WIRE 2960 1136 2992 1136
            WIRE 2992 1136 3056 1136
            WIRE 3056 1136 3056 1360
            BEGIN DISPLAY 2992 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T3
            WIRE 1392 2128 3056 2128
            WIRE 1392 2128 1392 2384
            WIRE 1392 2384 1520 2384
            WIRE 2960 1776 2992 1776
            WIRE 2992 1776 3056 1776
            WIRE 3056 1776 3056 2128
            BEGIN DISPLAY 2992 1776 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(4)
            WIRE 1904 3248 2192 3248
            WIRE 2192 3248 2192 3440
            WIRE 2192 3440 2192 4048
            WIRE 2192 4048 2192 4848
            WIRE 2192 4848 2704 4848
            WIRE 2192 4048 2704 4048
            WIRE 2192 3440 2704 3440
            WIRE 2192 3248 3504 3248
            WIRE 3504 3248 3584 3248
            BEGIN DISPLAY 3504 3248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_32 2704 3504 R0
        INSTANCE XLXI_35 2704 4176 R0
        INSTANCE XLXI_36 2704 5040 R0
        BEGIN BRANCH XLXN_52
            WIRE 1488 3536 1488 3888
            WIRE 1488 3888 1520 3888
            WIRE 1488 3536 2976 3536
            WIRE 2960 3408 2976 3408
            WIRE 2976 3408 2976 3536
        END BRANCH
        BEGIN BRANCH XLXN_55
            WIRE 1488 4224 1488 4624
            WIRE 1488 4624 1520 4624
            WIRE 1488 4224 2976 4224
            WIRE 2960 4048 2976 4048
            WIRE 2976 4048 2976 4224
        END BRANCH
        BEGIN BRANCH Q(5)
            WIRE 1904 3888 2256 3888
            WIRE 2256 3888 2256 4112
            WIRE 2256 4112 2704 4112
            WIRE 2256 4112 2256 4912
            WIRE 2256 4912 2704 4912
            WIRE 2256 3888 3504 3888
            WIRE 3504 3888 3584 3888
            BEGIN DISPLAY 3504 3888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_58
            WIRE 1488 2880 1488 3248
            WIRE 1488 3248 1520 3248
            WIRE 1488 2880 2128 2880
            WIRE 2128 2880 2128 3376
            WIRE 2128 3376 2704 3376
            WIRE 2128 3376 2128 3984
            WIRE 2128 3984 2128 4784
            WIRE 2128 4784 2704 4784
            WIRE 2128 3984 2704 3984
            WIRE 2128 2880 2976 2880
            WIRE 2960 2608 2976 2608
            WIRE 2976 2608 2976 2880
        END BRANCH
        BEGIN BRANCH Q(6)
            WIRE 1904 4624 2320 4624
            WIRE 2320 4624 2320 4976
            WIRE 2320 4976 2704 4976
            WIRE 2320 4624 3472 4624
            WIRE 3472 4624 3584 4624
            BEGIN DISPLAY 3472 4624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE I_36_31 1072 400 R0
        BEGIN BRANCH XLXN_1
            WIRE 1136 400 1520 400
        END BRANCH
        BUSTAP 528 272 544 272
        BEGIN BRANCH D(0)
            WIRE 544 272 560 272
            WIRE 560 272 1520 272
            BEGIN DISPLAY 560 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 528 848 544 848
        BEGIN BRANCH D(1)
            WIRE 544 848 560 848
            WIRE 560 848 1520 848
            BEGIN DISPLAY 560 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 528 1488 544 1488
        BEGIN BRANCH D(2)
            WIRE 544 1488 560 1488
            WIRE 560 1488 1520 1488
            BEGIN DISPLAY 560 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 528 2256 544 2256
        BEGIN BRANCH D(3)
            WIRE 544 2256 560 2256
            WIRE 560 2256 1520 2256
            BEGIN DISPLAY 560 2256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 528 3120 544 3120
        BEGIN BRANCH D(4)
            WIRE 544 3120 560 3120
            WIRE 560 3120 1520 3120
            BEGIN DISPLAY 560 3120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 528 3760 544 3760
        BEGIN BRANCH D(5)
            WIRE 544 3760 560 3760
            WIRE 560 3760 1520 3760
            BEGIN DISPLAY 560 3760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 528 4496 544 4496
        BEGIN BRANCH D(6)
            WIRE 544 4496 560 4496
            WIRE 560 4496 1520 4496
            BEGIN DISPLAY 560 4496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3600 400 3584 400
        BUSTAP 3600 976 3584 976
        BUSTAP 3600 1616 3584 1616
        BUSTAP 3600 2384 3584 2384
        BUSTAP 3600 3248 3584 3248
        BUSTAP 3600 3888 3584 3888
        BUSTAP 3600 4624 3584 4624
        BEGIN BRANCH Q(7)
            WIRE 5488 384 5760 384
            WIRE 5760 384 5760 576
            WIRE 5760 576 6272 576
            WIRE 5760 384 7072 384
            WIRE 7072 384 7152 384
            BEGIN DISPLAY 7072 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_79 6272 640 R0
        BEGIN BRANCH XLXN_132
            WIRE 5040 672 5040 960
            WIRE 5040 960 5088 960
            WIRE 5040 672 6544 672
            WIRE 6528 544 6544 544
            WIRE 6544 544 6544 672
        END BRANCH
        BEGIN BRANCH Q(8)
            WIRE 5472 960 7088 960
            WIRE 7088 960 7152 960
            BEGIN DISPLAY 7088 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 7168 384 7152 384
        BUSTAP 7168 960 7152 960
        BEGIN BRANCH Q(8:0)
            WIRE 3600 48 7168 48
            WIRE 7168 48 7440 48
            WIRE 7168 48 7168 1024
            WIRE 3600 48 3600 4672
        END BRANCH
        IOMARKER 7440 48 Q(8:0) R0 28
        BUSTAP 4096 256 4112 256
        BEGIN BRANCH D(7)
            WIRE 4112 256 4128 256
            WIRE 4128 256 5104 256
            BEGIN DISPLAY 4128 256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 320 5056 D(8:0) R180 28
        BEGIN BRANCH D(8:0)
            WIRE 320 5056 528 5056
            WIRE 528 5056 4096 5056
            WIRE 528 192 528 5056
            WIRE 4096 224 4096 832
            WIRE 4096 832 4096 5056
        END BRANCH
        BEGIN BRANCH L
            WIRE 320 5088 640 5088
            WIRE 640 5088 1312 5088
            WIRE 1312 5088 4976 5088
            WIRE 640 4880 800 4880
            WIRE 640 4880 640 5088
            WIRE 1312 336 1520 336
            WIRE 1312 336 1312 912
            WIRE 1312 912 1520 912
            WIRE 1312 912 1312 1552
            WIRE 1312 1552 1520 1552
            WIRE 1312 1552 1312 2320
            WIRE 1312 2320 1520 2320
            WIRE 1312 2320 1312 3184
            WIRE 1312 3184 1520 3184
            WIRE 1312 3184 1312 3824
            WIRE 1312 3824 1312 4560
            WIRE 1312 4560 1520 4560
            WIRE 1312 4560 1312 5088
            WIRE 1312 3824 1520 3824
            WIRE 4976 320 4976 896
            WIRE 4976 896 5088 896
            WIRE 4976 896 4976 5088
            WIRE 4976 320 5104 320
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 320 5152 1248 5152
            WIRE 1248 5152 4912 5152
            WIRE 1248 528 1520 528
            WIRE 1248 528 1248 1104
            WIRE 1248 1104 1520 1104
            WIRE 1248 1104 1248 1744
            WIRE 1248 1744 1520 1744
            WIRE 1248 1744 1248 2512
            WIRE 1248 2512 1520 2512
            WIRE 1248 2512 1248 3376
            WIRE 1248 3376 1248 4016
            WIRE 1248 4016 1248 4752
            WIRE 1248 4752 1520 4752
            WIRE 1248 4752 1248 5152
            WIRE 1248 4016 1520 4016
            WIRE 1248 3376 1520 3376
            WIRE 4912 512 4912 1088
            WIRE 4912 1088 5088 1088
            WIRE 4912 1088 4912 5152
            WIRE 4912 512 5104 512
        END BRANCH
        BEGIN BRANCH CLR
            WIRE 320 5184 1216 5184
            WIRE 1216 5184 4880 5184
            WIRE 1216 624 1520 624
            WIRE 1216 624 1216 1200
            WIRE 1216 1200 1520 1200
            WIRE 1216 1200 1216 1840
            WIRE 1216 1840 1520 1840
            WIRE 1216 1840 1216 2608
            WIRE 1216 2608 1520 2608
            WIRE 1216 2608 1216 3472
            WIRE 1216 3472 1520 3472
            WIRE 1216 3472 1216 4112
            WIRE 1216 4112 1216 4848
            WIRE 1216 4848 1520 4848
            WIRE 1216 4848 1216 5184
            WIRE 1216 4112 1520 4112
            WIRE 4880 608 5104 608
            WIRE 4880 608 4880 1184
            WIRE 4880 1184 5088 1184
            WIRE 4880 1184 4880 5184
        END BRANCH
        IOMARKER 320 5088 L R180 28
        IOMARKER 320 5152 CLK R180 28
        IOMARKER 320 5184 CLR R180 28
        INSTANCE I_36_68 800 5008 R0
        BEGIN BRANCH CE
            WIRE 320 5120 784 5120
            WIRE 784 4944 800 4944
            WIRE 784 4944 784 5120
        END BRANCH
        IOMARKER 320 5120 CE R180 28
        BEGIN BRANCH D(8)
            WIRE 4112 832 4176 832
            WIRE 4176 832 5088 832
            BEGIN DISPLAY 4176 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4096 832 4112 832
        INSTANCE XLXI_80 5104 640 R0
        BEGIN BRANCH XLXN_133
            WIRE 2960 4880 4592 4880
            WIRE 4592 112 4592 4880
            WIRE 4592 112 5008 112
            WIRE 5008 112 5680 112
            WIRE 5680 112 5680 512
            WIRE 5680 512 6272 512
            WIRE 5008 112 5008 384
            WIRE 5008 384 5104 384
        END BRANCH
        INSTANCE XLXI_83 5088 1216 R0
        BEGIN BRANCH XLXN_169
            WIRE 1056 4912 1280 4912
            WIRE 1280 4912 1280 5024
            WIRE 1280 5024 4944 5024
            WIRE 1280 464 1520 464
            WIRE 1280 464 1280 1040
            WIRE 1280 1040 1520 1040
            WIRE 1280 1040 1280 1680
            WIRE 1280 1680 1520 1680
            WIRE 1280 1680 1280 2448
            WIRE 1280 2448 1520 2448
            WIRE 1280 2448 1280 3312
            WIRE 1280 3312 1520 3312
            WIRE 1280 3312 1280 3952
            WIRE 1280 3952 1280 4688
            WIRE 1280 4688 1520 4688
            WIRE 1280 4688 1280 4912
            WIRE 1280 3952 1520 3952
            WIRE 4944 448 4944 1024
            WIRE 4944 1024 5088 1024
            WIRE 4944 1024 4944 5024
            WIRE 4944 448 5104 448
        END BRANCH
    END SHEET
END SCHEMATIC
