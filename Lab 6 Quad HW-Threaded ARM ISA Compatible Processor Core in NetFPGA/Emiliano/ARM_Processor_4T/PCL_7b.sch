VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Q(0)
        SIGNAL Q(1)
        SIGNAL Q(2)
        SIGNAL Q(3)
        SIGNAL T2
        SIGNAL T3
        SIGNAL Q(4)
        SIGNAL XLXN_52
        SIGNAL XLXN_55
        SIGNAL Q(5)
        SIGNAL XLXN_58
        SIGNAL Q(6)
        SIGNAL XLXN_19
        SIGNAL D(0)
        SIGNAL D(1)
        SIGNAL D(2)
        SIGNAL D(3)
        SIGNAL D(4)
        SIGNAL D(5)
        SIGNAL D(6)
        SIGNAL Q(6:0)
        SIGNAL D(6:0)
        SIGNAL L
        SIGNAL CLK
        SIGNAL CLR
        SIGNAL CE
        SIGNAL XLXN_169
        PORT Output Q(6:0)
        PORT Input D(6:0)
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
            PIN T XLXN_19
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
        BEGIN BLOCK I_36_31 vcc
            PIN P XLXN_19
        END BLOCK
        BEGIN BLOCK I_36_68 or2
            PIN I0 CE
            PIN I1 L
            PIN O XLXN_169
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7609 5382
        ATTR LengthUnitName "CM"
        ATTR GridsPerUnit "4"
        INSTANCE I_Q6 1408 4992 R0
        INSTANCE I_Q5 1408 4256 R0
        INSTANCE I_Q4 1408 3616 R0
        INSTANCE I_Q3 1408 2752 R0
        INSTANCE I_Q2 1408 1984 R0
        INSTANCE I_Q1 1408 1344 R0
        INSTANCE I_Q0 1408 768 R0
        BEGIN BRANCH Q(0)
            WIRE 1280 832 2016 832
            WIRE 2016 832 2016 1216
            WIRE 2016 1216 2016 1824
            WIRE 2016 1824 2016 2624
            WIRE 2016 2624 2592 2624
            WIRE 2016 1824 2592 1824
            WIRE 2016 1216 2592 1216
            WIRE 1280 832 1280 1088
            WIRE 1280 1088 1408 1088
            WIRE 1792 512 2016 512
            WIRE 2016 512 2016 832
            WIRE 2016 512 3392 512
            WIRE 3392 512 3472 512
            BEGIN DISPLAY 3392 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(1)
            WIRE 1792 1088 2080 1088
            WIRE 2080 1088 2080 1280
            WIRE 2080 1280 2080 1888
            WIRE 2080 1888 2080 2688
            WIRE 2080 2688 2592 2688
            WIRE 2080 1888 2592 1888
            WIRE 2080 1280 2592 1280
            WIRE 2080 1088 3392 1088
            WIRE 3392 1088 3472 1088
            BEGIN DISPLAY 3392 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(2)
            WIRE 1792 1728 2144 1728
            WIRE 2144 1728 2144 1952
            WIRE 2144 1952 2144 2752
            WIRE 2144 2752 2592 2752
            WIRE 2144 1952 2592 1952
            WIRE 2144 1728 3392 1728
            WIRE 3392 1728 3472 1728
            BEGIN DISPLAY 3392 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(3)
            WIRE 1792 2496 2208 2496
            WIRE 2208 2496 2208 2816
            WIRE 2208 2816 2592 2816
            WIRE 2208 2496 3392 2496
            WIRE 3392 2496 3472 2496
            BEGIN DISPLAY 3392 2496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE I_36_18 2592 2016 R0
        INSTANCE I_36_17 2592 2880 R0
        INSTANCE I_36_19 2592 1344 R0
        BEGIN BRANCH T2
            WIRE 1344 1472 1344 1728
            WIRE 1344 1728 1408 1728
            WIRE 1344 1472 2944 1472
            WIRE 2848 1248 2880 1248
            WIRE 2880 1248 2944 1248
            WIRE 2944 1248 2944 1472
            BEGIN DISPLAY 2880 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T3
            WIRE 1280 2240 2944 2240
            WIRE 1280 2240 1280 2496
            WIRE 1280 2496 1408 2496
            WIRE 2848 1888 2880 1888
            WIRE 2880 1888 2944 1888
            WIRE 2944 1888 2944 2240
            BEGIN DISPLAY 2880 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(4)
            WIRE 1792 3360 2080 3360
            WIRE 2080 3360 2080 3552
            WIRE 2080 3552 2080 4160
            WIRE 2080 4160 2080 4960
            WIRE 2080 4960 2592 4960
            WIRE 2080 4160 2592 4160
            WIRE 2080 3552 2592 3552
            WIRE 2080 3360 3392 3360
            WIRE 3392 3360 3472 3360
            BEGIN DISPLAY 3392 3360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_32 2592 3616 R0
        INSTANCE XLXI_35 2592 4288 R0
        BEGIN BRANCH XLXN_52
            WIRE 1376 3648 1376 4000
            WIRE 1376 4000 1408 4000
            WIRE 1376 3648 2864 3648
            WIRE 2848 3520 2864 3520
            WIRE 2864 3520 2864 3648
        END BRANCH
        BEGIN BRANCH XLXN_55
            WIRE 1376 4336 1376 4736
            WIRE 1376 4736 1408 4736
            WIRE 1376 4336 2864 4336
            WIRE 2848 4160 2864 4160
            WIRE 2864 4160 2864 4336
        END BRANCH
        BEGIN BRANCH Q(5)
            WIRE 1792 4000 2144 4000
            WIRE 2144 4000 2144 4224
            WIRE 2144 4224 2592 4224
            WIRE 2144 4224 2144 5024
            WIRE 2144 5024 2592 5024
            WIRE 2144 4000 3392 4000
            WIRE 3392 4000 3472 4000
            BEGIN DISPLAY 3392 4000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_58
            WIRE 1376 2992 1376 3360
            WIRE 1376 3360 1408 3360
            WIRE 1376 2992 2016 2992
            WIRE 2016 2992 2016 3488
            WIRE 2016 3488 2592 3488
            WIRE 2016 3488 2016 4096
            WIRE 2016 4096 2016 4896
            WIRE 2016 4896 2592 4896
            WIRE 2016 4096 2592 4096
            WIRE 2016 2992 2864 2992
            WIRE 2848 2720 2864 2720
            WIRE 2864 2720 2864 2992
        END BRANCH
        BEGIN BRANCH Q(6)
            WIRE 1792 4736 2208 4736
            WIRE 2208 4736 2208 5088
            WIRE 2208 5088 2592 5088
            WIRE 2208 4736 3360 4736
            WIRE 3360 4736 3472 4736
            BEGIN DISPLAY 3360 4736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE I_36_31 960 512 R0
        BEGIN BRANCH XLXN_19
            WIRE 1024 512 1408 512
        END BRANCH
        BUSTAP 416 384 432 384
        BEGIN BRANCH D(0)
            WIRE 432 384 448 384
            WIRE 448 384 1408 384
            BEGIN DISPLAY 448 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 416 960 432 960
        BEGIN BRANCH D(1)
            WIRE 432 960 448 960
            WIRE 448 960 1408 960
            BEGIN DISPLAY 448 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 416 1600 432 1600
        BEGIN BRANCH D(2)
            WIRE 432 1600 448 1600
            WIRE 448 1600 1408 1600
            BEGIN DISPLAY 448 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 416 2368 432 2368
        BEGIN BRANCH D(3)
            WIRE 432 2368 448 2368
            WIRE 448 2368 1408 2368
            BEGIN DISPLAY 448 2368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 416 3232 432 3232
        BEGIN BRANCH D(4)
            WIRE 432 3232 448 3232
            WIRE 448 3232 1408 3232
            BEGIN DISPLAY 448 3232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 416 3872 432 3872
        BEGIN BRANCH D(5)
            WIRE 432 3872 448 3872
            WIRE 448 3872 1408 3872
            BEGIN DISPLAY 448 3872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 416 4608 432 4608
        BEGIN BRANCH D(6)
            WIRE 432 4608 448 4608
            WIRE 448 4608 1408 4608
            BEGIN DISPLAY 448 4608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3488 512 3472 512
        BUSTAP 3488 1088 3472 1088
        BUSTAP 3488 1728 3472 1728
        BUSTAP 3488 2496 3472 2496
        BUSTAP 3488 3360 3472 3360
        BUSTAP 3488 4000 3472 4000
        BUSTAP 3488 4736 3472 4736
        BEGIN BRANCH Q(6:0)
            WIRE 3488 160 7056 160
            WIRE 7056 160 7328 160
            WIRE 7056 160 7056 1136
            WIRE 3488 160 3488 512
            WIRE 3488 512 3488 1088
            WIRE 3488 1088 3488 1728
            WIRE 3488 1728 3488 2496
            WIRE 3488 2496 3488 3360
            WIRE 3488 3360 3488 4000
            WIRE 3488 4000 3488 4736
            WIRE 3488 4736 3488 4784
        END BRANCH
        BEGIN BRANCH D(6:0)
            WIRE 208 5168 416 5168
            WIRE 416 5168 3984 5168
            WIRE 416 304 416 384
            WIRE 416 384 416 960
            WIRE 416 960 416 1600
            WIRE 416 1600 416 2368
            WIRE 416 2368 416 3232
            WIRE 416 3232 416 3872
            WIRE 416 3872 416 4608
            WIRE 416 4608 416 5168
            WIRE 3984 336 3984 944
            WIRE 3984 944 3984 5168
        END BRANCH
        BEGIN BRANCH L
            WIRE 208 5200 528 5200
            WIRE 528 5200 1200 5200
            WIRE 1200 5200 4864 5200
            WIRE 528 4992 688 4992
            WIRE 528 4992 528 5200
            WIRE 1200 448 1408 448
            WIRE 1200 448 1200 1024
            WIRE 1200 1024 1408 1024
            WIRE 1200 1024 1200 1664
            WIRE 1200 1664 1408 1664
            WIRE 1200 1664 1200 2432
            WIRE 1200 2432 1408 2432
            WIRE 1200 2432 1200 3296
            WIRE 1200 3296 1408 3296
            WIRE 1200 3296 1200 3936
            WIRE 1200 3936 1200 4672
            WIRE 1200 4672 1408 4672
            WIRE 1200 4672 1200 5200
            WIRE 1200 3936 1408 3936
            WIRE 4864 432 4864 1008
            WIRE 4864 1008 4976 1008
            WIRE 4864 1008 4864 5200
            WIRE 4864 432 4992 432
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 208 5264 1136 5264
            WIRE 1136 5264 4800 5264
            WIRE 1136 640 1408 640
            WIRE 1136 640 1136 1216
            WIRE 1136 1216 1408 1216
            WIRE 1136 1216 1136 1856
            WIRE 1136 1856 1408 1856
            WIRE 1136 1856 1136 2624
            WIRE 1136 2624 1408 2624
            WIRE 1136 2624 1136 3488
            WIRE 1136 3488 1136 4128
            WIRE 1136 4128 1136 4864
            WIRE 1136 4864 1408 4864
            WIRE 1136 4864 1136 5264
            WIRE 1136 4128 1408 4128
            WIRE 1136 3488 1408 3488
            WIRE 4800 624 4800 1200
            WIRE 4800 1200 4976 1200
            WIRE 4800 1200 4800 5264
            WIRE 4800 624 4992 624
        END BRANCH
        BEGIN BRANCH CLR
            WIRE 208 5296 1104 5296
            WIRE 1104 5296 4768 5296
            WIRE 1104 736 1408 736
            WIRE 1104 736 1104 1312
            WIRE 1104 1312 1408 1312
            WIRE 1104 1312 1104 1952
            WIRE 1104 1952 1408 1952
            WIRE 1104 1952 1104 2720
            WIRE 1104 2720 1408 2720
            WIRE 1104 2720 1104 3584
            WIRE 1104 3584 1408 3584
            WIRE 1104 3584 1104 4224
            WIRE 1104 4224 1104 4960
            WIRE 1104 4960 1408 4960
            WIRE 1104 4960 1104 5296
            WIRE 1104 4224 1408 4224
            WIRE 4768 720 4992 720
            WIRE 4768 720 4768 1296
            WIRE 4768 1296 4976 1296
            WIRE 4768 1296 4768 5296
        END BRANCH
        INSTANCE I_36_68 688 5120 R0
        BEGIN BRANCH CE
            WIRE 208 5232 672 5232
            WIRE 672 5056 688 5056
            WIRE 672 5056 672 5232
        END BRANCH
        BEGIN BRANCH XLXN_169
            WIRE 944 5024 1168 5024
            WIRE 1168 5024 1168 5136
            WIRE 1168 5136 4832 5136
            WIRE 1168 576 1408 576
            WIRE 1168 576 1168 1152
            WIRE 1168 1152 1408 1152
            WIRE 1168 1152 1168 1792
            WIRE 1168 1792 1408 1792
            WIRE 1168 1792 1168 2560
            WIRE 1168 2560 1408 2560
            WIRE 1168 2560 1168 3424
            WIRE 1168 3424 1408 3424
            WIRE 1168 3424 1168 4064
            WIRE 1168 4064 1168 4800
            WIRE 1168 4800 1408 4800
            WIRE 1168 4800 1168 5024
            WIRE 1168 4064 1408 4064
            WIRE 4832 560 4832 1136
            WIRE 4832 1136 4976 1136
            WIRE 4832 1136 4832 5136
            WIRE 4832 560 4992 560
        END BRANCH
        IOMARKER 7328 160 Q(6:0) R0 28
        IOMARKER 208 5168 D(6:0) R180 28
        IOMARKER 208 5200 L R180 28
        IOMARKER 208 5264 CLK R180 28
        IOMARKER 208 5296 CLR R180 28
        IOMARKER 208 5232 CE R180 28
    END SHEET
END SCHEMATIC
