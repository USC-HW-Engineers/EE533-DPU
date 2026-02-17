VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL D(8:1)
        SIGNAL Q(8:1)
        SIGNAL D(8:0)
        SIGNAL Q(8:0)
        SIGNAL D(0)
        SIGNAL Q(0)
        SIGNAL CLR
        SIGNAL CE
        SIGNAL CLK
        PORT Input D(8:0)
        PORT Output Q(8:0)
        PORT Input CLR
        PORT Input CLK
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
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
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_12 fd8ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D(7:0) D(8:1)
            PIN Q(7:0) Q(8:1)
        END BLOCK
        BEGIN BLOCK XLXI_16 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D D(0)
            PIN Q Q(0)
        END BLOCK
        BEGIN BLOCK XLXI_17 vcc
            PIN P CE
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH D(8:1)
            WIRE 928 464 1008 464
            BEGIN DISPLAY 928 464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(8:1)
            WIRE 1392 464 1472 464
            BEGIN DISPLAY 1472 464 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(8:0)
            WIRE 1088 304 1168 304
        END BRANCH
        BEGIN BRANCH Q(8:0)
            WIRE 1248 304 1328 304
        END BRANCH
        IOMARKER 1088 304 D(8:0) R180 28
        IOMARKER 1328 304 Q(8:0) R0 28
        BEGIN BRANCH D(0)
            WIRE 928 816 1008 816
            BEGIN DISPLAY 928 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(0)
            WIRE 1392 816 1472 816
            BEGIN DISPLAY 1472 816 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 928 944 CLK R180 28
        INSTANCE XLXI_16 1008 1072 R0
        INSTANCE XLXI_12 1008 720 R0
        BEGIN BRANCH CLR
            WIRE 880 688 944 688
            WIRE 944 688 1008 688
            WIRE 944 688 944 1040
            WIRE 944 1040 1008 1040
        END BRANCH
        BEGIN BRANCH CE
            WIRE 800 512 800 528
            WIRE 800 528 848 528
            WIRE 848 528 912 528
            WIRE 912 528 1008 528
            WIRE 912 528 912 880
            WIRE 912 880 1008 880
        END BRANCH
        IOMARKER 880 688 CLR R180 28
        INSTANCE XLXI_17 736 512 R0
        BEGIN BRANCH CLK
            WIRE 928 944 992 944
            WIRE 992 944 1008 944
            WIRE 992 592 1008 592
            WIRE 992 592 992 944
        END BRANCH
    END SHEET
END SCHEMATIC
