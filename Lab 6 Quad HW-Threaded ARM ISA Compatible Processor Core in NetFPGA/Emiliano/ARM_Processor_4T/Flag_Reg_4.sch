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
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL vdd
        SIGNAL XLXN_6
        SIGNAL CLR
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL CLK
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL V_in
        SIGNAL C_in
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL Z_in
        SIGNAL N_in
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_33
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL XLXN_38
        SIGNAL XLXN_39
        SIGNAL XLXN_40
        SIGNAL XLXN_41
        SIGNAL XLXN_42
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        SIGNAL XLXN_47
        SIGNAL XLXN_48
        SIGNAL ID(1)
        SIGNAL XLXN_51
        SIGNAL XLXN_52
        BEGIN SIGNAL ID(0)
        END SIGNAL
        SIGNAL N_out
        SIGNAL Z_out
        SIGNAL C_out
        SIGNAL V_out
        SIGNAL ID(1:0)
        PORT Input CLR
        PORT Input CLK
        PORT Input V_in
        PORT Input C_in
        PORT Input Z_in
        PORT Input N_in
        PORT Output N_out
        PORT Output Z_out
        PORT Output C_out
        PORT Output V_out
        PORT Input ID(1:0)
        BEGIN BLOCKDEF Flag_Reg
            TIMESTAMP 2026 2 21 7 19 43
            RECTANGLE N 64 -448 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -288 0 -288 
            LINE N 320 -288 384 -288 
            LINE N 64 -416 0 -416 
            LINE N 320 -416 384 -416 
            LINE N 64 -224 0 -224 
            LINE N 320 -224 384 -224 
            LINE N 64 -352 0 -352 
            LINE N 320 -352 384 -352 
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
        BEGIN BLOCK XLXI_1 Flag_Reg
            PIN CE XLXN_1
            PIN CLK CLK
            PIN CLR CLR
            PIN C_in C_in
            PIN C_out XLXN_37
            PIN N_in N_in
            PIN N_out XLXN_23
            PIN V_in V_in
            PIN V_out XLXN_41
            PIN Z_in Z_in
            PIN Z_out XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_2 Flag_Reg
            PIN CE XLXN_2
            PIN CLK CLK
            PIN CLR CLR
            PIN C_in C_in
            PIN C_out XLXN_38
            PIN N_in N_in
            PIN N_out XLXN_26
            PIN V_in V_in
            PIN V_out XLXN_42
            PIN Z_in Z_in
            PIN Z_out XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_3 Flag_Reg
            PIN CE XLXN_3
            PIN CLK CLK
            PIN CLR CLR
            PIN C_in C_in
            PIN C_out XLXN_39
            PIN N_in N_in
            PIN N_out XLXN_27
            PIN V_in V_in
            PIN V_out XLXN_44
            PIN Z_in Z_in
            PIN Z_out XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_4 Flag_Reg
            PIN CE XLXN_4
            PIN CLK CLK
            PIN CLR CLR
            PIN C_in C_in
            PIN C_out XLXN_40
            PIN N_in N_in
            PIN N_out XLXN_28
            PIN V_in V_in
            PIN V_out XLXN_45
            PIN Z_in Z_in
            PIN Z_out XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_5 d2_4e
            PIN A0 ID(0)
            PIN A1 ID(1)
            PIN E vdd
            PIN D0 XLXN_1
            PIN D1 XLXN_2
            PIN D2 XLXN_3
            PIN D3 XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_6 vcc
            PIN P vdd
        END BLOCK
        BEGIN BLOCK XLXI_8 m4_1e
            PIN D0 XLXN_23
            PIN D1 XLXN_26
            PIN D2 XLXN_27
            PIN D3 XLXN_28
            PIN E vdd
            PIN S0 ID(0)
            PIN S1 ID(1)
            PIN O N_out
        END BLOCK
        BEGIN BLOCK XLXI_10 m4_1e
            PIN D0 XLXN_29
            PIN D1 XLXN_33
            PIN D2 XLXN_35
            PIN D3 XLXN_36
            PIN E vdd
            PIN S0 ID(0)
            PIN S1 ID(1)
            PIN O Z_out
        END BLOCK
        BEGIN BLOCK XLXI_11 m4_1e
            PIN D0 XLXN_37
            PIN D1 XLXN_38
            PIN D2 XLXN_39
            PIN D3 XLXN_40
            PIN E vdd
            PIN S0 ID(0)
            PIN S1 ID(1)
            PIN O C_out
        END BLOCK
        BEGIN BLOCK XLXI_12 m4_1e
            PIN D0 XLXN_41
            PIN D1 XLXN_42
            PIN D2 XLXN_44
            PIN D3 XLXN_45
            PIN E vdd
            PIN S0 ID(0)
            PIN S1 ID(1)
            PIN O V_out
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1104 896 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1104 1424 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1104 1952 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1104 2480 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 816 1248 848 1248
            WIRE 848 736 848 1248
            WIRE 848 736 1104 736
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 816 1312 864 1312
            WIRE 864 1264 864 1312
            WIRE 864 1264 1104 1264
        END BRANCH
        INSTANCE XLXI_5 432 1568 R0
        BEGIN BRANCH XLXN_3
            WIRE 816 1376 864 1376
            WIRE 864 1376 864 1792
            WIRE 864 1792 1104 1792
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 816 1440 848 1440
            WIRE 848 1440 848 2320
            WIRE 848 2320 1104 2320
        END BRANCH
        INSTANCE XLXI_6 320 1424 R0
        BEGIN BRANCH vdd
            WIRE 384 1424 384 1440
            WIRE 384 1440 432 1440
        END BRANCH
        BEGIN BRANCH CLR
            WIRE 1040 2448 1088 2448
            WIRE 1088 2448 1104 2448
            WIRE 1088 864 1104 864
            WIRE 1088 864 1088 1392
            WIRE 1088 1392 1104 1392
            WIRE 1088 1392 1088 1920
            WIRE 1088 1920 1088 2448
            WIRE 1088 1920 1104 1920
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1040 2384 1072 2384
            WIRE 1072 2384 1104 2384
            WIRE 1072 800 1104 800
            WIRE 1072 800 1072 1328
            WIRE 1072 1328 1104 1328
            WIRE 1072 1328 1072 1856
            WIRE 1072 1856 1104 1856
            WIRE 1072 1856 1072 2384
        END BRANCH
        BEGIN BRANCH V_in
            WIRE 960 672 1056 672
            WIRE 1056 672 1104 672
            WIRE 1056 672 1056 1200
            WIRE 1056 1200 1104 1200
            WIRE 1056 1200 1056 1728
            WIRE 1056 1728 1104 1728
            WIRE 1056 1728 1056 2256
            WIRE 1056 2256 1104 2256
        END BRANCH
        BEGIN BRANCH C_in
            WIRE 960 608 1040 608
            WIRE 1040 608 1104 608
            WIRE 1040 608 1040 1136
            WIRE 1040 1136 1104 1136
            WIRE 1040 1136 1040 1664
            WIRE 1040 1664 1104 1664
            WIRE 1040 1664 1040 2192
            WIRE 1040 2192 1104 2192
        END BRANCH
        BEGIN BRANCH Z_in
            WIRE 960 544 1024 544
            WIRE 1024 544 1104 544
            WIRE 1024 544 1024 1072
            WIRE 1024 1072 1104 1072
            WIRE 1024 1072 1024 1600
            WIRE 1024 1600 1104 1600
            WIRE 1024 1600 1024 2128
            WIRE 1024 2128 1104 2128
        END BRANCH
        BEGIN BRANCH N_in
            WIRE 960 480 1008 480
            WIRE 1008 480 1104 480
            WIRE 1008 480 1008 1008
            WIRE 1008 1008 1104 1008
            WIRE 1008 1008 1008 1536
            WIRE 1008 1536 1104 1536
            WIRE 1008 1536 1008 2064
            WIRE 1008 2064 1104 2064
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1488 1536 1520 1536
            WIRE 1520 576 1520 1536
            WIRE 1520 576 1872 576
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1488 2064 1536 2064
            WIRE 1536 640 1536 2064
            WIRE 1536 640 1872 640
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1488 544 1552 544
            WIRE 1552 544 1552 976
            WIRE 1552 976 1872 976
        END BRANCH
        INSTANCE XLXI_8 1872 864 R0
        BEGIN BRANCH XLXN_23
            WIRE 1488 480 1504 480
            WIRE 1504 448 1872 448
            WIRE 1504 448 1504 480
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 1488 1008 1504 1008
            WIRE 1504 512 1872 512
            WIRE 1504 512 1504 1008
        END BRANCH
        INSTANCE XLXI_10 1872 1392 R0
        INSTANCE XLXI_11 1872 1920 R0
        INSTANCE XLXI_12 1872 2448 R0
        BEGIN BRANCH XLXN_33
            WIRE 1488 1072 1552 1072
            WIRE 1552 1040 1552 1072
            WIRE 1552 1040 1872 1040
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 1488 1600 1552 1600
            WIRE 1552 1104 1552 1600
            WIRE 1552 1104 1872 1104
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 1488 2128 1568 2128
            WIRE 1568 1168 1568 2128
            WIRE 1568 1168 1872 1168
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 1488 608 1584 608
            WIRE 1584 608 1584 1504
            WIRE 1584 1504 1872 1504
        END BRANCH
        BEGIN BRANCH XLXN_38
            WIRE 1488 1136 1600 1136
            WIRE 1600 1136 1600 1568
            WIRE 1600 1568 1872 1568
        END BRANCH
        BEGIN BRANCH XLXN_39
            WIRE 1488 1664 1584 1664
            WIRE 1584 1632 1584 1664
            WIRE 1584 1632 1872 1632
        END BRANCH
        BEGIN BRANCH XLXN_40
            WIRE 1488 2192 1584 2192
            WIRE 1584 1696 1584 2192
            WIRE 1584 1696 1872 1696
        END BRANCH
        BEGIN BRANCH XLXN_41
            WIRE 1488 672 1616 672
            WIRE 1616 672 1616 2032
            WIRE 1616 2032 1872 2032
        END BRANCH
        BEGIN BRANCH XLXN_42
            WIRE 1488 1200 1632 1200
            WIRE 1632 1200 1632 2096
            WIRE 1632 2096 1872 2096
        END BRANCH
        BEGIN BRANCH XLXN_44
            WIRE 1488 1728 1648 1728
            WIRE 1648 1728 1648 2160
            WIRE 1648 2160 1872 2160
        END BRANCH
        BEGIN BRANCH XLXN_45
            WIRE 1488 2256 1616 2256
            WIRE 1616 2224 1616 2256
            WIRE 1616 2224 1872 2224
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 1856 832 1872 832
            WIRE 1856 832 1856 1360
            WIRE 1856 1360 1872 1360
            WIRE 1856 1360 1856 1888
            WIRE 1856 1888 1856 2416
            WIRE 1856 2416 1872 2416
            WIRE 1856 1888 1872 1888
            BEGIN DISPLAY 1856 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID(1)
            WIRE 1840 768 1872 768
            WIRE 1840 768 1840 1296
            WIRE 1840 1296 1872 1296
            WIRE 1840 1296 1840 1824
            WIRE 1840 1824 1872 1824
            WIRE 1840 1824 1840 2352
            WIRE 1840 2352 1872 2352
            BEGIN DISPLAY 1840 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID(0)
            WIRE 1824 704 1824 1232
            WIRE 1824 1232 1872 1232
            WIRE 1824 1232 1824 1760
            WIRE 1824 1760 1872 1760
            WIRE 1824 1760 1824 2288
            WIRE 1824 2288 1872 2288
            WIRE 1824 704 1840 704
            WIRE 1840 704 1872 704
            BEGIN DISPLAY 1840 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID(0)
            WIRE 368 1248 400 1248
            WIRE 400 1248 432 1248
            BEGIN DISPLAY 400 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID(1)
            WIRE 368 1312 384 1312
            WIRE 384 1312 432 1312
            BEGIN DISPLAY 384 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 960 480 N_in R180 28
        IOMARKER 960 544 Z_in R180 28
        IOMARKER 960 608 C_in R180 28
        IOMARKER 960 672 V_in R180 28
        BEGIN BRANCH N_out
            WIRE 2192 544 2224 544
            WIRE 2224 544 2256 544
        END BRANCH
        BEGIN BRANCH Z_out
            WIRE 2192 1072 2256 1072
        END BRANCH
        BEGIN BRANCH C_out
            WIRE 2192 1600 2256 1600
        END BRANCH
        BEGIN BRANCH V_out
            WIRE 2192 2128 2256 2128
        END BRANCH
        IOMARKER 2256 544 N_out R0 28
        IOMARKER 2256 1072 Z_out R0 28
        IOMARKER 2256 1600 C_out R0 28
        IOMARKER 2256 2128 V_out R0 28
        IOMARKER 1040 2384 CLK R180 28
        IOMARKER 1040 2448 CLR R180 28
        BEGIN BRANCH ID(1:0)
            WIRE 480 1040 560 1040
        END BRANCH
        IOMARKER 480 1040 ID(1:0) R180 28
    END SHEET
END SCHEMATIC
