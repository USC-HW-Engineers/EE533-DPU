VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL C_in
        SIGNAL V_in
        SIGNAL C_out
        SIGNAL CLK
        SIGNAL V_out
        SIGNAL CE
        SIGNAL CLR
        SIGNAL Z_in
        SIGNAL Z_out
        SIGNAL N_in
        SIGNAL N_out
        PORT Input C_in
        PORT Input V_in
        PORT Output C_out
        PORT Input CLK
        PORT Output V_out
        PORT Input CE
        PORT Input CLR
        PORT Input Z_in
        PORT Output Z_out
        PORT Input N_in
        PORT Output N_out
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
        BEGIN BLOCK XLXI_12 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D C_in
            PIN Q C_out
        END BLOCK
        BEGIN BLOCK XLXI_13 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D V_in
            PIN Q V_out
        END BLOCK
        BEGIN BLOCK XLXI_14 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D Z_in
            PIN Q Z_out
        END BLOCK
        BEGIN BLOCK XLXI_15 fdce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D N_in
            PIN Q N_out
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH C_in
            WIRE 1296 1440 1376 1440
        END BRANCH
        BEGIN BRANCH V_in
            WIRE 1296 1744 1376 1744
        END BRANCH
        BEGIN BRANCH C_out
            WIRE 1760 1440 1840 1440
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1280 1872 1344 1872
            WIRE 1344 1872 1376 1872
            WIRE 1344 928 1376 928
            WIRE 1344 928 1344 1248
            WIRE 1344 1248 1376 1248
            WIRE 1344 1248 1344 1568
            WIRE 1344 1568 1344 1872
            WIRE 1344 1568 1376 1568
        END BRANCH
        BEGIN BRANCH V_out
            WIRE 1760 1744 1824 1744
        END BRANCH
        INSTANCE XLXI_12 1376 1696 R0
        INSTANCE XLXI_13 1376 2000 R0
        BEGIN BRANCH CE
            WIRE 1280 1808 1328 1808
            WIRE 1328 1808 1376 1808
            WIRE 1328 864 1376 864
            WIRE 1328 864 1328 1184
            WIRE 1328 1184 1376 1184
            WIRE 1328 1184 1328 1504
            WIRE 1328 1504 1376 1504
            WIRE 1328 1504 1328 1808
        END BRANCH
        BEGIN BRANCH CLR
            WIRE 1296 1968 1360 1968
            WIRE 1360 1968 1376 1968
            WIRE 1360 1024 1376 1024
            WIRE 1360 1024 1360 1344
            WIRE 1360 1344 1376 1344
            WIRE 1360 1344 1360 1664
            WIRE 1360 1664 1376 1664
            WIRE 1360 1664 1360 1968
        END BRANCH
        INSTANCE XLXI_14 1376 1376 R0
        BEGIN BRANCH Z_in
            WIRE 1296 1120 1376 1120
        END BRANCH
        BEGIN BRANCH Z_out
            WIRE 1760 1120 1840 1120
        END BRANCH
        INSTANCE XLXI_15 1376 1056 R0
        BEGIN BRANCH N_in
            WIRE 1296 800 1376 800
        END BRANCH
        BEGIN BRANCH N_out
            WIRE 1760 800 1840 800
        END BRANCH
        IOMARKER 1280 1872 CLK R180 28
        IOMARKER 1296 1968 CLR R180 28
        IOMARKER 1296 800 N_in R180 28
        IOMARKER 1296 1120 Z_in R180 28
        IOMARKER 1296 1440 C_in R180 28
        IOMARKER 1296 1744 V_in R180 28
        IOMARKER 1840 800 N_out R0 28
        IOMARKER 1840 1120 Z_out R0 28
        IOMARKER 1840 1440 C_out R0 28
        IOMARKER 1824 1744 V_out R0 28
        IOMARKER 1280 1808 CE R180 28
    END SHEET
END SCHEMATIC
