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
        SIGNAL D0(1)
        SIGNAL D1(1)
        SIGNAL D0(2)
        SIGNAL D1(2)
        SIGNAL D0(3)
        SIGNAL D1(3)
        SIGNAL D0(7)
        SIGNAL D1(7)
        SIGNAL D0(6)
        SIGNAL D1(6)
        SIGNAL D0(5)
        SIGNAL D1(5)
        SIGNAL D0(4)
        SIGNAL D1(4)
        SIGNAL D0(8)
        SIGNAL D1(8)
        SIGNAL D0(9)
        SIGNAL D1(9)
        SIGNAL D0(10)
        SIGNAL D1(10)
        SIGNAL D0(11)
        SIGNAL D1(11)
        SIGNAL D0(15)
        SIGNAL D1(15)
        SIGNAL D0(14)
        SIGNAL D1(14)
        SIGNAL D0(13)
        SIGNAL D1(13)
        SIGNAL D0(12)
        SIGNAL D1(12)
        SIGNAL D1(15:0)
        SIGNAL O(0)
        SIGNAL O(4)
        SIGNAL O(3)
        SIGNAL O(7)
        SIGNAL O(11)
        SIGNAL O(15)
        SIGNAL O(14)
        SIGNAL O(10)
        SIGNAL O(6)
        SIGNAL O(2)
        SIGNAL O(13)
        SIGNAL O(12)
        SIGNAL O(8)
        SIGNAL O(9)
        SIGNAL O(5)
        SIGNAL O(1)
        SIGNAL D0(15:0)
        SIGNAL S
        SIGNAL O(15:0)
        PORT Input D1(15:0)
        PORT Input D0(15:0)
        PORT Input S
        PORT Output O(15:0)
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_89 m2_1
            PIN D0 D0(0)
            PIN D1 D1(0)
            PIN S0 S
            PIN O O(0)
        END BLOCK
        BEGIN BLOCK XLXI_90 m2_1
            PIN D0 D0(4)
            PIN D1 D1(4)
            PIN S0 S
            PIN O O(4)
        END BLOCK
        BEGIN BLOCK XLXI_91 m2_1
            PIN D0 D0(8)
            PIN D1 D1(8)
            PIN S0 S
            PIN O O(8)
        END BLOCK
        BEGIN BLOCK XLXI_92 m2_1
            PIN D0 D0(12)
            PIN D1 D1(12)
            PIN S0 S
            PIN O O(12)
        END BLOCK
        BEGIN BLOCK XLXI_93 m2_1
            PIN D0 D0(1)
            PIN D1 D1(1)
            PIN S0 S
            PIN O O(1)
        END BLOCK
        BEGIN BLOCK XLXI_94 m2_1
            PIN D0 D0(5)
            PIN D1 D1(5)
            PIN S0 S
            PIN O O(5)
        END BLOCK
        BEGIN BLOCK XLXI_95 m2_1
            PIN D0 D0(9)
            PIN D1 D1(9)
            PIN S0 S
            PIN O O(9)
        END BLOCK
        BEGIN BLOCK XLXI_96 m2_1
            PIN D0 D0(13)
            PIN D1 D1(13)
            PIN S0 S
            PIN O O(13)
        END BLOCK
        BEGIN BLOCK XLXI_97 m2_1
            PIN D0 D0(2)
            PIN D1 D1(2)
            PIN S0 S
            PIN O O(2)
        END BLOCK
        BEGIN BLOCK XLXI_98 m2_1
            PIN D0 D0(6)
            PIN D1 D1(6)
            PIN S0 S
            PIN O O(6)
        END BLOCK
        BEGIN BLOCK XLXI_99 m2_1
            PIN D0 D0(10)
            PIN D1 D1(10)
            PIN S0 S
            PIN O O(10)
        END BLOCK
        BEGIN BLOCK XLXI_100 m2_1
            PIN D0 D0(14)
            PIN D1 D1(14)
            PIN S0 S
            PIN O O(14)
        END BLOCK
        BEGIN BLOCK XLXI_101 m2_1
            PIN D0 D0(3)
            PIN D1 D1(3)
            PIN S0 S
            PIN O O(3)
        END BLOCK
        BEGIN BLOCK XLXI_102 m2_1
            PIN D0 D0(7)
            PIN D1 D1(7)
            PIN S0 S
            PIN O O(7)
        END BLOCK
        BEGIN BLOCK XLXI_103 m2_1
            PIN D0 D0(11)
            PIN D1 D1(11)
            PIN S0 S
            PIN O O(11)
        END BLOCK
        BEGIN BLOCK XLXI_104 m2_1
            PIN D0 D0(15)
            PIN D1 D1(15)
            PIN S0 S
            PIN O O(15)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH D0(0)
            WIRE 624 624 640 624
            WIRE 640 624 704 624
            BEGIN DISPLAY 640 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(0)
            WIRE 624 688 640 688
            WIRE 640 688 704 688
            BEGIN DISPLAY 640 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(1)
            WIRE 624 1104 656 1104
            WIRE 656 1104 704 1104
            BEGIN DISPLAY 656 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(1)
            WIRE 624 1168 640 1168
            WIRE 640 1168 704 1168
            BEGIN DISPLAY 640 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(2)
            WIRE 624 1584 656 1584
            WIRE 656 1584 704 1584
            BEGIN DISPLAY 656 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(2)
            WIRE 624 1648 656 1648
            WIRE 656 1648 704 1648
            BEGIN DISPLAY 656 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(3)
            WIRE 624 2064 656 2064
            WIRE 656 2064 704 2064
            BEGIN DISPLAY 656 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(3)
            WIRE 624 2128 640 2128
            WIRE 640 2128 704 2128
            BEGIN DISPLAY 640 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(7)
            WIRE 1184 2064 1200 2064
            WIRE 1200 2064 1264 2064
            BEGIN DISPLAY 1200 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(7)
            WIRE 1184 2128 1200 2128
            WIRE 1200 2128 1264 2128
            BEGIN DISPLAY 1200 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(6)
            WIRE 1184 1584 1200 1584
            WIRE 1200 1584 1264 1584
            BEGIN DISPLAY 1200 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(6)
            WIRE 1184 1648 1200 1648
            WIRE 1200 1648 1264 1648
            BEGIN DISPLAY 1200 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(5)
            WIRE 1184 1104 1200 1104
            WIRE 1200 1104 1264 1104
            BEGIN DISPLAY 1200 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(5)
            WIRE 1184 1168 1200 1168
            WIRE 1200 1168 1264 1168
            BEGIN DISPLAY 1200 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(4)
            WIRE 1184 624 1200 624
            WIRE 1200 624 1264 624
            BEGIN DISPLAY 1200 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(4)
            WIRE 1184 688 1216 688
            WIRE 1216 688 1264 688
            BEGIN DISPLAY 1216 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(8)
            WIRE 1744 624 1776 624
            WIRE 1776 624 1824 624
            BEGIN DISPLAY 1776 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(8)
            WIRE 1744 688 1776 688
            WIRE 1776 688 1824 688
            BEGIN DISPLAY 1776 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(9)
            WIRE 1744 1104 1776 1104
            WIRE 1776 1104 1824 1104
            BEGIN DISPLAY 1776 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(9)
            WIRE 1744 1168 1776 1168
            WIRE 1776 1168 1824 1168
            BEGIN DISPLAY 1776 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(10)
            WIRE 1744 1584 1776 1584
            WIRE 1776 1584 1824 1584
            BEGIN DISPLAY 1776 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(10)
            WIRE 1744 1648 1776 1648
            WIRE 1776 1648 1824 1648
            BEGIN DISPLAY 1776 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(11)
            WIRE 1744 2064 1776 2064
            WIRE 1776 2064 1824 2064
            BEGIN DISPLAY 1776 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(11)
            WIRE 1744 2128 1760 2128
            WIRE 1760 2128 1824 2128
            BEGIN DISPLAY 1760 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(15)
            WIRE 2304 2064 2336 2064
            WIRE 2336 2064 2384 2064
            BEGIN DISPLAY 2336 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(15)
            WIRE 2304 2128 2320 2128
            WIRE 2320 2128 2384 2128
            BEGIN DISPLAY 2320 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(14)
            WIRE 2304 1584 2336 1584
            WIRE 2336 1584 2384 1584
            BEGIN DISPLAY 2336 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(14)
            WIRE 2304 1648 2320 1648
            WIRE 2320 1648 2384 1648
            BEGIN DISPLAY 2320 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(13)
            WIRE 2304 1104 2320 1104
            WIRE 2320 1104 2384 1104
            BEGIN DISPLAY 2320 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(13)
            WIRE 2304 1168 2336 1168
            WIRE 2336 1168 2384 1168
            BEGIN DISPLAY 2336 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(12)
            WIRE 2304 624 2320 624
            WIRE 2320 624 2384 624
            BEGIN DISPLAY 2320 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(12)
            WIRE 2304 688 2336 688
            WIRE 2336 688 2384 688
            BEGIN DISPLAY 2336 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(15:0)
            WIRE 864 400 944 400
        END BRANCH
        BEGIN BRANCH S
            WIRE 576 752 704 752
            WIRE 576 752 576 1232
            WIRE 576 1232 704 1232
            WIRE 576 1232 576 1712
            WIRE 576 1712 704 1712
            WIRE 576 1712 576 2192
            WIRE 576 2192 704 2192
            BEGIN DISPLAY 576 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S
            WIRE 1232 752 1248 752
            WIRE 1248 752 1264 752
            WIRE 1232 752 1232 1232
            WIRE 1232 1232 1264 1232
            WIRE 1232 1232 1232 1712
            WIRE 1232 1712 1264 1712
            WIRE 1232 1712 1232 2192
            WIRE 1232 2192 1264 2192
            BEGIN DISPLAY 1248 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S
            WIRE 1792 752 1808 752
            WIRE 1808 752 1824 752
            WIRE 1792 752 1792 1232
            WIRE 1792 1232 1824 1232
            WIRE 1792 1232 1792 1712
            WIRE 1792 1712 1824 1712
            WIRE 1792 1712 1792 2192
            WIRE 1792 2192 1824 2192
            BEGIN DISPLAY 1808 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S
            WIRE 2352 752 2368 752
            WIRE 2368 752 2384 752
            WIRE 2352 752 2352 1232
            WIRE 2352 1232 2384 1232
            WIRE 2352 1232 2352 1712
            WIRE 2352 1712 2384 1712
            WIRE 2352 1712 2352 2192
            WIRE 2352 2192 2384 2192
            BEGIN DISPLAY 2368 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 864 400 D1(15:0) R180 28
        INSTANCE XLXI_89 704 784 R0
        BEGIN BRANCH O(0)
            WIRE 1024 656 1056 656
            WIRE 1056 656 1104 656
            BEGIN DISPLAY 1056 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(4)
            WIRE 1584 656 1616 656
            WIRE 1616 656 1664 656
            BEGIN DISPLAY 1616 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_90 1264 784 R0
        INSTANCE XLXI_91 1824 784 R0
        INSTANCE XLXI_93 704 1264 R0
        INSTANCE XLXI_94 1264 1264 R0
        INSTANCE XLXI_95 1824 1264 R0
        INSTANCE XLXI_96 2384 1264 R0
        INSTANCE XLXI_97 704 1744 R0
        INSTANCE XLXI_98 1264 1744 R0
        INSTANCE XLXI_99 1824 1744 R0
        INSTANCE XLXI_100 2384 1744 R0
        INSTANCE XLXI_101 704 2224 R0
        BEGIN BRANCH O(3)
            WIRE 1024 2096 1056 2096
            WIRE 1056 2096 1104 2096
            BEGIN DISPLAY 1056 2096 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(7)
            WIRE 1584 2096 1616 2096
            WIRE 1616 2096 1664 2096
            BEGIN DISPLAY 1616 2096 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(11)
            WIRE 2144 2096 2176 2096
            WIRE 2176 2096 2224 2096
            BEGIN DISPLAY 2176 2096 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(15)
            WIRE 2704 2096 2736 2096
            WIRE 2736 2096 2784 2096
            BEGIN DISPLAY 2736 2096 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(14)
            WIRE 2704 1616 2736 1616
            WIRE 2736 1616 2784 1616
            BEGIN DISPLAY 2736 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(10)
            WIRE 2144 1616 2176 1616
            WIRE 2176 1616 2224 1616
            BEGIN DISPLAY 2176 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(6)
            WIRE 1584 1616 1616 1616
            WIRE 1616 1616 1664 1616
            BEGIN DISPLAY 1616 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(2)
            WIRE 1024 1616 1056 1616
            WIRE 1056 1616 1104 1616
            BEGIN DISPLAY 1056 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(13)
            WIRE 2704 1136 2736 1136
            WIRE 2736 1136 2784 1136
            BEGIN DISPLAY 2736 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(12)
            WIRE 2704 656 2752 656
            WIRE 2752 656 2784 656
            BEGIN DISPLAY 2752 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(8)
            WIRE 2144 656 2160 656
            WIRE 2160 656 2224 656
            BEGIN DISPLAY 2160 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(9)
            WIRE 2144 1136 2176 1136
            WIRE 2176 1136 2224 1136
            BEGIN DISPLAY 2176 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(5)
            WIRE 1584 1136 1616 1136
            WIRE 1616 1136 1664 1136
            BEGIN DISPLAY 1616 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(1)
            WIRE 1024 1136 1056 1136
            WIRE 1056 1136 1104 1136
            BEGIN DISPLAY 1056 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_102 1264 2224 R0
        INSTANCE XLXI_103 1824 2224 R0
        INSTANCE XLXI_104 2384 2224 R0
        INSTANCE XLXI_92 2384 784 R0
        BEGIN BRANCH D0(15:0)
            WIRE 864 336 944 336
        END BRANCH
        IOMARKER 864 336 D0(15:0) R180 28
        BEGIN BRANCH S
            WIRE 864 448 944 448
        END BRANCH
        IOMARKER 864 448 S R180 28
        BEGIN BRANCH O(15:0)
            WIRE 1024 448 1104 448
        END BRANCH
        IOMARKER 1104 448 O(15:0) R0 28
    END SHEET
END SCHEMATIC
