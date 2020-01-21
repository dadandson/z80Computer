// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 11 2017 17:30:03

// File Generated:     Jan 19 2020 14:54:12

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "MyI2C" view "INTERFACE"

module MyI2C (
    I2CPWKUP,
    I2CPIRQ,
    SBSTBi,
    SBCLKi,
    SBWRi,
    IPDONE,
    I2C2_SCL,
    SBACKo,
    RST,
    I2C2_SDA,
    IPLOAD);

    output [1:0] I2CPWKUP;
    output [1:0] I2CPIRQ;
    input SBSTBi;
    input SBCLKi;
    input SBWRi;
    output IPDONE;
    inout I2C2_SCL;
    output SBACKo;
    input RST;
    inout I2C2_SDA;
    input IPLOAD;

    wire N__1927;
    wire N__1926;
    wire N__1925;
    wire N__1916;
    wire N__1915;
    wire N__1914;
    wire N__1907;
    wire N__1906;
    wire N__1905;
    wire N__1898;
    wire N__1897;
    wire N__1896;
    wire N__1889;
    wire N__1888;
    wire N__1887;
    wire N__1880;
    wire N__1879;
    wire N__1878;
    wire N__1871;
    wire N__1870;
    wire N__1869;
    wire N__1862;
    wire N__1861;
    wire N__1860;
    wire N__1853;
    wire N__1852;
    wire N__1851;
    wire N__1844;
    wire N__1843;
    wire N__1842;
    wire N__1835;
    wire N__1834;
    wire N__1833;
    wire N__1826;
    wire N__1825;
    wire N__1824;
    wire N__1817;
    wire N__1816;
    wire N__1815;
    wire N__1798;
    wire N__1797;
    wire N__1792;
    wire N__1789;
    wire N__1786;
    wire N__1783;
    wire N__1780;
    wire N__1777;
    wire N__1774;
    wire N__1771;
    wire N__1770;
    wire N__1765;
    wire N__1762;
    wire N__1761;
    wire N__1760;
    wire N__1759;
    wire N__1758;
    wire N__1757;
    wire N__1744;
    wire N__1741;
    wire N__1738;
    wire N__1735;
    wire N__1734;
    wire N__1733;
    wire N__1732;
    wire N__1731;
    wire N__1728;
    wire N__1725;
    wire N__1722;
    wire N__1719;
    wire N__1716;
    wire N__1711;
    wire N__1708;
    wire N__1705;
    wire N__1702;
    wire N__1699;
    wire N__1696;
    wire N__1693;
    wire N__1690;
    wire N__1685;
    wire N__1680;
    wire N__1677;
    wire N__1674;
    wire N__1671;
    wire N__1668;
    wire N__1665;
    wire N__1662;
    wire N__1657;
    wire N__1656;
    wire N__1655;
    wire N__1652;
    wire N__1649;
    wire N__1646;
    wire N__1643;
    wire N__1636;
    wire N__1635;
    wire N__1634;
    wire N__1633;
    wire N__1632;
    wire N__1631;
    wire N__1628;
    wire N__1625;
    wire N__1622;
    wire N__1619;
    wire N__1616;
    wire N__1613;
    wire N__1600;
    wire N__1599;
    wire N__1598;
    wire N__1597;
    wire N__1596;
    wire N__1595;
    wire N__1594;
    wire N__1593;
    wire N__1592;
    wire N__1591;
    wire N__1588;
    wire N__1579;
    wire N__1576;
    wire N__1573;
    wire N__1570;
    wire N__1565;
    wire N__1552;
    wire N__1549;
    wire N__1546;
    wire N__1543;
    wire N__1542;
    wire N__1539;
    wire N__1536;
    wire N__1531;
    wire N__1530;
    wire N__1529;
    wire N__1528;
    wire N__1525;
    wire N__1522;
    wire N__1519;
    wire N__1516;
    wire N__1507;
    wire N__1506;
    wire N__1501;
    wire N__1500;
    wire N__1499;
    wire N__1498;
    wire N__1497;
    wire N__1496;
    wire N__1495;
    wire N__1492;
    wire N__1489;
    wire N__1482;
    wire N__1479;
    wire N__1476;
    wire N__1475;
    wire N__1474;
    wire N__1473;
    wire N__1468;
    wire N__1463;
    wire N__1462;
    wire N__1461;
    wire N__1458;
    wire N__1455;
    wire N__1450;
    wire N__1445;
    wire N__1440;
    wire N__1437;
    wire N__1426;
    wire N__1425;
    wire N__1424;
    wire N__1423;
    wire N__1420;
    wire N__1417;
    wire N__1414;
    wire N__1411;
    wire N__1402;
    wire N__1399;
    wire N__1396;
    wire N__1393;
    wire N__1390;
    wire N__1387;
    wire N__1386;
    wire N__1383;
    wire N__1380;
    wire N__1377;
    wire N__1374;
    wire N__1373;
    wire N__1372;
    wire N__1371;
    wire N__1370;
    wire N__1369;
    wire N__1366;
    wire N__1363;
    wire N__1360;
    wire N__1357;
    wire N__1356;
    wire N__1351;
    wire N__1348;
    wire N__1347;
    wire N__1346;
    wire N__1345;
    wire N__1344;
    wire N__1343;
    wire N__1340;
    wire N__1335;
    wire N__1330;
    wire N__1327;
    wire N__1324;
    wire N__1317;
    wire N__1314;
    wire N__1311;
    wire N__1294;
    wire N__1293;
    wire N__1290;
    wire N__1289;
    wire N__1288;
    wire N__1285;
    wire N__1282;
    wire N__1277;
    wire N__1274;
    wire N__1271;
    wire N__1268;
    wire N__1265;
    wire N__1262;
    wire N__1259;
    wire N__1256;
    wire N__1249;
    wire N__1246;
    wire N__1243;
    wire N__1240;
    wire N__1237;
    wire N__1234;
    wire N__1231;
    wire N__1228;
    wire N__1225;
    wire N__1222;
    wire N__1219;
    wire N__1216;
    wire N__1215;
    wire N__1212;
    wire N__1209;
    wire N__1204;
    wire N__1201;
    wire N__1200;
    wire N__1197;
    wire N__1194;
    wire N__1189;
    wire N__1188;
    wire N__1185;
    wire N__1182;
    wire N__1177;
    wire N__1174;
    wire N__1171;
    wire N__1168;
    wire N__1165;
    wire N__1164;
    wire N__1163;
    wire N__1156;
    wire N__1153;
    wire N__1152;
    wire N__1151;
    wire N__1150;
    wire N__1149;
    wire N__1144;
    wire N__1141;
    wire N__1138;
    wire N__1135;
    wire N__1126;
    wire N__1125;
    wire N__1122;
    wire N__1121;
    wire N__1120;
    wire N__1117;
    wire N__1116;
    wire N__1105;
    wire N__1102;
    wire N__1099;
    wire N__1096;
    wire N__1095;
    wire N__1094;
    wire N__1093;
    wire N__1088;
    wire N__1085;
    wire N__1082;
    wire N__1075;
    wire N__1072;
    wire N__1069;
    wire N__1066;
    wire N__1063;
    wire N__1060;
    wire N__1057;
    wire N__1054;
    wire N__1051;
    wire N__1048;
    wire N__1045;
    wire N__1042;
    wire N__1039;
    wire N__1036;
    wire N__1033;
    wire N__1030;
    wire N__1027;
    wire N__1026;
    wire N__1025;
    wire N__1024;
    wire N__1023;
    wire N__1022;
    wire N__1021;
    wire N__1012;
    wire N__1009;
    wire N__1006;
    wire N__1003;
    wire N__1000;
    wire N__997;
    wire N__988;
    wire N__987;
    wire N__982;
    wire N__979;
    wire N__976;
    wire N__973;
    wire N__970;
    wire N__967;
    wire N__966;
    wire N__963;
    wire N__960;
    wire N__957;
    wire N__952;
    wire N__949;
    wire N__946;
    wire N__943;
    wire N__940;
    wire N__937;
    wire N__934;
    wire N__931;
    wire N__928;
    wire N__927;
    wire N__926;
    wire N__923;
    wire N__918;
    wire N__913;
    wire N__910;
    wire N__909;
    wire N__904;
    wire N__901;
    wire N__898;
    wire N__895;
    wire N__892;
    wire N__889;
    wire N__886;
    wire N__883;
    wire N__880;
    wire N__877;
    wire N__874;
    wire N__871;
    wire N__870;
    wire N__867;
    wire N__864;
    wire N__859;
    wire N__856;
    wire N__853;
    wire N__850;
    wire N__847;
    wire N__844;
    wire N__841;
    wire N__838;
    wire N__835;
    wire N__832;
    wire N__829;
    wire N__826;
    wire N__823;
    wire N__820;
    wire N__817;
    wire N__814;
    wire N__811;
    wire N__808;
    wire N__805;
    wire N__802;
    wire N__799;
    wire N__796;
    wire N__793;
    wire N__790;
    wire N__787;
    wire N__784;
    wire N__781;
    wire N__778;
    wire N__775;
    wire N__772;
    wire N__769;
    wire N__766;
    wire N__763;
    wire N__760;
    wire N__757;
    wire N__754;
    wire N__751;
    wire N__748;
    wire N__745;
    wire N__742;
    wire N__739;
    wire N__736;
    wire N__733;
    wire N__730;
    wire N__727;
    wire N__724;
    wire N__721;
    wire N__718;
    wire N__715;
    wire N__712;
    wire N__709;
    wire N__706;
    wire N__703;
    wire N__700;
    wire N__697;
    wire VCCG0;
    wire I2C2_SCL_in;
    wire filter_out_0;
    wire I2C2_SDAo;
    wire I2C2_SDAoe;
    wire I2C2_SCLoe;
    wire I2C2_SDA_in;
    wire I2CPWKUP_c_0;
    wire I2C2_SCLo;
    wire I2CPIRQ_c_0;
    wire GNDG0;
    wire runZ0;
    wire sb_idleZ0;
    wire IPDONE_c_i;
    wire SBSTBi_c;
    wire strobeZ0;
    wire hard_SBSTBi;
    wire N_22_i;
    wire N_36;
    wire N_36_cascade_;
    wire N_12;
    wire N_37_cascade_;
    wire N_40_cascade_;
    wire N_8;
    wire N_14_i;
    wire N_16_i;
    wire N_18_i;
    wire N_41;
    wire N_20_i;
    wire N_40;
    wire hard_SBADRi_1_0_i_1;
    wire N_37;
    wire N_10;
    wire N_10_cascade_;
    wire N_5;
    wire SBWRi_c;
    wire hard_SBWRi_0_i;
    wire trans_countZ0Z_0;
    wire trans_count_s_0;
    wire bfn_2_29_0_;
    wire trans_count_cry_0;
    wire trans_count_cry_1;
    wire trans_count_cry_2;
    wire trans_count_cry_3;
    wire trans_count_cry_4;
    wire trans_countZ0Z_5;
    wire N_8_2;
    wire N_60;
    wire load_dZ0Z2;
    wire pupZ0;
    wire IPLOAD_c;
    wire load_dZ0Z1;
    wire SBCLKi_c_g;
    wire RST_c;
    wire trans_count_fastZ0Z_0;
    wire trans_countZ0Z_2;
    wire trans_countZ0Z_1;
    wire SB_I2C_INST_LT_RNIJVJAZ0Z1_cascade_;
    wire trans_countlde_i_0_1;
    wire N_24;
    wire trans_countZ0Z_4;
    wire startZ0;
    wire trans_countZ0Z_3;
    wire IPDONE_i_RNOZ0Z_0;
    wire IPDONE_c;
    wire hard01_SBACKO;
    wire N_32_i;
    wire _gnd_net_;

    PRE_IO_GBUF SBCLKi_ibuf_gb_io_preiogbuf (
            .PADSIGNALTOGLOBALBUFFER(N__1925),
            .GLOBALBUFFEROUTPUT(SBCLKi_c_g));
    IO_PAD SBCLKi_ibuf_gb_io_iopad (
            .OE(N__1927),
            .DIN(N__1926),
            .DOUT(N__1925),
            .PACKAGEPIN(SBCLKi));
    defparam SBCLKi_ibuf_gb_io_preio.NEG_TRIGGER=1'b0;
    defparam SBCLKi_ibuf_gb_io_preio.PIN_TYPE=6'b000001;
    PRE_IO SBCLKi_ibuf_gb_io_preio (
            .PADOEN(N__1927),
            .PADOUT(N__1926),
            .PADIN(N__1925),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD I2CPIRQ_obuf_1_iopad (
            .OE(N__1916),
            .DIN(N__1915),
            .DOUT(N__1914),
            .PACKAGEPIN(I2CPIRQ[1]));
    defparam I2CPIRQ_obuf_1_preio.NEG_TRIGGER=1'b0;
    defparam I2CPIRQ_obuf_1_preio.PIN_TYPE=6'b011001;
    PRE_IO I2CPIRQ_obuf_1_preio (
            .PADOEN(N__1916),
            .PADOUT(N__1915),
            .PADIN(N__1914),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(GNDG0),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD I2CPWKUP_obuf_1_iopad (
            .OE(N__1907),
            .DIN(N__1906),
            .DOUT(N__1905),
            .PACKAGEPIN(I2CPWKUP[1]));
    defparam I2CPWKUP_obuf_1_preio.NEG_TRIGGER=1'b0;
    defparam I2CPWKUP_obuf_1_preio.PIN_TYPE=6'b011001;
    PRE_IO I2CPWKUP_obuf_1_preio (
            .PADOEN(N__1907),
            .PADOUT(N__1906),
            .PADIN(N__1905),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(GNDG0),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD I2C2_SDA_iobuf_iopad (
            .OE(N__1898),
            .DIN(N__1897),
            .DOUT(N__1896),
            .PACKAGEPIN(I2C2_SDA));
    defparam I2C2_SDA_iobuf_preio.NEG_TRIGGER=1'b0;
    defparam I2C2_SDA_iobuf_preio.PIN_TYPE=6'b101001;
    PRE_IO I2C2_SDA_iobuf_preio (
            .PADOEN(N__1898),
            .PADOUT(N__1897),
            .PADIN(N__1896),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(N__790),
            .DIN0(I2C2_SDA_in),
            .DOUT0(N__805),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD IPDONE_obuf_iopad (
            .OE(N__1889),
            .DIN(N__1888),
            .DOUT(N__1887),
            .PACKAGEPIN(IPDONE));
    defparam IPDONE_obuf_preio.NEG_TRIGGER=1'b0;
    defparam IPDONE_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO IPDONE_obuf_preio (
            .PADOEN(N__1889),
            .PADOUT(N__1888),
            .PADIN(N__1887),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__1393),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD I2C2_SCL_iobuf_iopad (
            .OE(N__1880),
            .DIN(N__1879),
            .DOUT(N__1878),
            .PACKAGEPIN(I2C2_SCL));
    defparam I2C2_SCL_iobuf_preio.NEG_TRIGGER=1'b0;
    defparam I2C2_SCL_iobuf_preio.PIN_TYPE=6'b101001;
    PRE_IO I2C2_SCL_iobuf_preio (
            .PADOEN(N__1880),
            .PADOUT(N__1879),
            .PADIN(N__1878),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(N__775),
            .DIN0(I2C2_SCL_in),
            .DOUT0(N__727),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD IPLOAD_ibuf_iopad (
            .OE(N__1871),
            .DIN(N__1870),
            .DOUT(N__1869),
            .PACKAGEPIN(IPLOAD));
    defparam IPLOAD_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam IPLOAD_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO IPLOAD_ibuf_preio (
            .PADOEN(N__1871),
            .PADOUT(N__1870),
            .PADIN(N__1869),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(IPLOAD_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD I2CPIRQ_obuf_0_iopad (
            .OE(N__1862),
            .DIN(N__1861),
            .DOUT(N__1860),
            .PACKAGEPIN(I2CPIRQ[0]));
    defparam I2CPIRQ_obuf_0_preio.NEG_TRIGGER=1'b0;
    defparam I2CPIRQ_obuf_0_preio.PIN_TYPE=6'b011001;
    PRE_IO I2CPIRQ_obuf_0_preio (
            .PADOEN(N__1862),
            .PADOUT(N__1861),
            .PADIN(N__1860),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__712),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD SBSTBi_ibuf_iopad (
            .OE(N__1853),
            .DIN(N__1852),
            .DOUT(N__1851),
            .PACKAGEPIN(SBSTBi));
    defparam SBSTBi_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam SBSTBi_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO SBSTBi_ibuf_preio (
            .PADOEN(N__1853),
            .PADOUT(N__1852),
            .PADIN(N__1851),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(SBSTBi_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD RST_ibuf_iopad (
            .OE(N__1844),
            .DIN(N__1843),
            .DOUT(N__1842),
            .PACKAGEPIN(RST));
    defparam RST_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam RST_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO RST_ibuf_preio (
            .PADOEN(N__1844),
            .PADOUT(N__1843),
            .PADIN(N__1842),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(RST_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD SBACKo_obuf_iopad (
            .OE(N__1835),
            .DIN(N__1834),
            .DOUT(N__1833),
            .PACKAGEPIN(SBACKo));
    defparam SBACKo_obuf_preio.NEG_TRIGGER=1'b0;
    defparam SBACKo_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO SBACKo_obuf_preio (
            .PADOEN(N__1835),
            .PADOUT(N__1834),
            .PADIN(N__1833),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__1249),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD I2CPWKUP_obuf_0_iopad (
            .OE(N__1826),
            .DIN(N__1825),
            .DOUT(N__1824),
            .PACKAGEPIN(I2CPWKUP[0]));
    defparam I2CPWKUP_obuf_0_preio.NEG_TRIGGER=1'b0;
    defparam I2CPWKUP_obuf_0_preio.PIN_TYPE=6'b011001;
    PRE_IO I2CPWKUP_obuf_0_preio (
            .PADOEN(N__1826),
            .PADOUT(N__1825),
            .PADIN(N__1824),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__748),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD SBWRi_ibuf_iopad (
            .OE(N__1817),
            .DIN(N__1816),
            .DOUT(N__1815),
            .PACKAGEPIN(SBWRi));
    defparam SBWRi_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam SBWRi_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO SBWRi_ibuf_preio (
            .PADOEN(N__1817),
            .PADOUT(N__1816),
            .PADIN(N__1815),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(SBWRi_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    InMux I__426 (
            .O(N__1798),
            .I(N__1792));
    InMux I__425 (
            .O(N__1797),
            .I(N__1792));
    LocalMux I__424 (
            .O(N__1792),
            .I(pupZ0));
    InMux I__423 (
            .O(N__1789),
            .I(N__1786));
    LocalMux I__422 (
            .O(N__1786),
            .I(N__1783));
    Span12Mux_h I__421 (
            .O(N__1783),
            .I(N__1780));
    Span12Mux_v I__420 (
            .O(N__1780),
            .I(N__1777));
    Span12Mux_v I__419 (
            .O(N__1777),
            .I(N__1774));
    Odrv12 I__418 (
            .O(N__1774),
            .I(IPLOAD_c));
    InMux I__417 (
            .O(N__1771),
            .I(N__1765));
    InMux I__416 (
            .O(N__1770),
            .I(N__1765));
    LocalMux I__415 (
            .O(N__1765),
            .I(load_dZ0Z1));
    ClkMux I__414 (
            .O(N__1762),
            .I(N__1744));
    ClkMux I__413 (
            .O(N__1761),
            .I(N__1744));
    ClkMux I__412 (
            .O(N__1760),
            .I(N__1744));
    ClkMux I__411 (
            .O(N__1759),
            .I(N__1744));
    ClkMux I__410 (
            .O(N__1758),
            .I(N__1744));
    ClkMux I__409 (
            .O(N__1757),
            .I(N__1744));
    GlobalMux I__408 (
            .O(N__1744),
            .I(N__1741));
    gio2CtrlBuf I__407 (
            .O(N__1741),
            .I(SBCLKi_c_g));
    SRMux I__406 (
            .O(N__1738),
            .I(N__1735));
    LocalMux I__405 (
            .O(N__1735),
            .I(N__1728));
    SRMux I__404 (
            .O(N__1734),
            .I(N__1725));
    SRMux I__403 (
            .O(N__1733),
            .I(N__1722));
    SRMux I__402 (
            .O(N__1732),
            .I(N__1719));
    SRMux I__401 (
            .O(N__1731),
            .I(N__1716));
    Span4Mux_s3_h I__400 (
            .O(N__1728),
            .I(N__1711));
    LocalMux I__399 (
            .O(N__1725),
            .I(N__1711));
    LocalMux I__398 (
            .O(N__1722),
            .I(N__1708));
    LocalMux I__397 (
            .O(N__1719),
            .I(N__1705));
    LocalMux I__396 (
            .O(N__1716),
            .I(N__1702));
    Span4Mux_v I__395 (
            .O(N__1711),
            .I(N__1699));
    Span4Mux_v I__394 (
            .O(N__1708),
            .I(N__1696));
    Span4Mux_h I__393 (
            .O(N__1705),
            .I(N__1693));
    Span4Mux_h I__392 (
            .O(N__1702),
            .I(N__1690));
    Sp12to4 I__391 (
            .O(N__1699),
            .I(N__1685));
    Sp12to4 I__390 (
            .O(N__1696),
            .I(N__1685));
    Sp12to4 I__389 (
            .O(N__1693),
            .I(N__1680));
    Sp12to4 I__388 (
            .O(N__1690),
            .I(N__1680));
    Span12Mux_h I__387 (
            .O(N__1685),
            .I(N__1677));
    Span12Mux_v I__386 (
            .O(N__1680),
            .I(N__1674));
    Span12Mux_v I__385 (
            .O(N__1677),
            .I(N__1671));
    Span12Mux_v I__384 (
            .O(N__1674),
            .I(N__1668));
    Span12Mux_v I__383 (
            .O(N__1671),
            .I(N__1665));
    Span12Mux_h I__382 (
            .O(N__1668),
            .I(N__1662));
    Odrv12 I__381 (
            .O(N__1665),
            .I(RST_c));
    Odrv12 I__380 (
            .O(N__1662),
            .I(RST_c));
    InMux I__379 (
            .O(N__1657),
            .I(N__1652));
    InMux I__378 (
            .O(N__1656),
            .I(N__1649));
    InMux I__377 (
            .O(N__1655),
            .I(N__1646));
    LocalMux I__376 (
            .O(N__1652),
            .I(N__1643));
    LocalMux I__375 (
            .O(N__1649),
            .I(trans_count_fastZ0Z_0));
    LocalMux I__374 (
            .O(N__1646),
            .I(trans_count_fastZ0Z_0));
    Odrv4 I__373 (
            .O(N__1643),
            .I(trans_count_fastZ0Z_0));
    InMux I__372 (
            .O(N__1636),
            .I(N__1628));
    InMux I__371 (
            .O(N__1635),
            .I(N__1625));
    InMux I__370 (
            .O(N__1634),
            .I(N__1622));
    InMux I__369 (
            .O(N__1633),
            .I(N__1619));
    InMux I__368 (
            .O(N__1632),
            .I(N__1616));
    InMux I__367 (
            .O(N__1631),
            .I(N__1613));
    LocalMux I__366 (
            .O(N__1628),
            .I(trans_countZ0Z_2));
    LocalMux I__365 (
            .O(N__1625),
            .I(trans_countZ0Z_2));
    LocalMux I__364 (
            .O(N__1622),
            .I(trans_countZ0Z_2));
    LocalMux I__363 (
            .O(N__1619),
            .I(trans_countZ0Z_2));
    LocalMux I__362 (
            .O(N__1616),
            .I(trans_countZ0Z_2));
    LocalMux I__361 (
            .O(N__1613),
            .I(trans_countZ0Z_2));
    InMux I__360 (
            .O(N__1600),
            .I(N__1588));
    InMux I__359 (
            .O(N__1599),
            .I(N__1579));
    InMux I__358 (
            .O(N__1598),
            .I(N__1579));
    InMux I__357 (
            .O(N__1597),
            .I(N__1579));
    InMux I__356 (
            .O(N__1596),
            .I(N__1579));
    InMux I__355 (
            .O(N__1595),
            .I(N__1576));
    InMux I__354 (
            .O(N__1594),
            .I(N__1573));
    InMux I__353 (
            .O(N__1593),
            .I(N__1570));
    InMux I__352 (
            .O(N__1592),
            .I(N__1565));
    InMux I__351 (
            .O(N__1591),
            .I(N__1565));
    LocalMux I__350 (
            .O(N__1588),
            .I(trans_countZ0Z_1));
    LocalMux I__349 (
            .O(N__1579),
            .I(trans_countZ0Z_1));
    LocalMux I__348 (
            .O(N__1576),
            .I(trans_countZ0Z_1));
    LocalMux I__347 (
            .O(N__1573),
            .I(trans_countZ0Z_1));
    LocalMux I__346 (
            .O(N__1570),
            .I(trans_countZ0Z_1));
    LocalMux I__345 (
            .O(N__1565),
            .I(trans_countZ0Z_1));
    CascadeMux I__344 (
            .O(N__1552),
            .I(SB_I2C_INST_LT_RNIJVJAZ0Z1_cascade_));
    InMux I__343 (
            .O(N__1549),
            .I(N__1546));
    LocalMux I__342 (
            .O(N__1546),
            .I(trans_countlde_i_0_1));
    CEMux I__341 (
            .O(N__1543),
            .I(N__1539));
    CEMux I__340 (
            .O(N__1542),
            .I(N__1536));
    LocalMux I__339 (
            .O(N__1539),
            .I(N_24));
    LocalMux I__338 (
            .O(N__1536),
            .I(N_24));
    InMux I__337 (
            .O(N__1531),
            .I(N__1525));
    InMux I__336 (
            .O(N__1530),
            .I(N__1522));
    InMux I__335 (
            .O(N__1529),
            .I(N__1519));
    InMux I__334 (
            .O(N__1528),
            .I(N__1516));
    LocalMux I__333 (
            .O(N__1525),
            .I(trans_countZ0Z_4));
    LocalMux I__332 (
            .O(N__1522),
            .I(trans_countZ0Z_4));
    LocalMux I__331 (
            .O(N__1519),
            .I(trans_countZ0Z_4));
    LocalMux I__330 (
            .O(N__1516),
            .I(trans_countZ0Z_4));
    InMux I__329 (
            .O(N__1507),
            .I(N__1501));
    InMux I__328 (
            .O(N__1506),
            .I(N__1501));
    LocalMux I__327 (
            .O(N__1501),
            .I(N__1492));
    InMux I__326 (
            .O(N__1500),
            .I(N__1489));
    InMux I__325 (
            .O(N__1499),
            .I(N__1482));
    InMux I__324 (
            .O(N__1498),
            .I(N__1482));
    InMux I__323 (
            .O(N__1497),
            .I(N__1482));
    InMux I__322 (
            .O(N__1496),
            .I(N__1479));
    CascadeMux I__321 (
            .O(N__1495),
            .I(N__1476));
    Span4Mux_s3_v I__320 (
            .O(N__1492),
            .I(N__1468));
    LocalMux I__319 (
            .O(N__1489),
            .I(N__1468));
    LocalMux I__318 (
            .O(N__1482),
            .I(N__1463));
    LocalMux I__317 (
            .O(N__1479),
            .I(N__1463));
    InMux I__316 (
            .O(N__1476),
            .I(N__1458));
    InMux I__315 (
            .O(N__1475),
            .I(N__1455));
    InMux I__314 (
            .O(N__1474),
            .I(N__1450));
    InMux I__313 (
            .O(N__1473),
            .I(N__1450));
    Span4Mux_v I__312 (
            .O(N__1468),
            .I(N__1445));
    Span4Mux_s3_v I__311 (
            .O(N__1463),
            .I(N__1445));
    InMux I__310 (
            .O(N__1462),
            .I(N__1440));
    InMux I__309 (
            .O(N__1461),
            .I(N__1440));
    LocalMux I__308 (
            .O(N__1458),
            .I(N__1437));
    LocalMux I__307 (
            .O(N__1455),
            .I(startZ0));
    LocalMux I__306 (
            .O(N__1450),
            .I(startZ0));
    Odrv4 I__305 (
            .O(N__1445),
            .I(startZ0));
    LocalMux I__304 (
            .O(N__1440),
            .I(startZ0));
    Odrv4 I__303 (
            .O(N__1437),
            .I(startZ0));
    InMux I__302 (
            .O(N__1426),
            .I(N__1420));
    InMux I__301 (
            .O(N__1425),
            .I(N__1417));
    InMux I__300 (
            .O(N__1424),
            .I(N__1414));
    InMux I__299 (
            .O(N__1423),
            .I(N__1411));
    LocalMux I__298 (
            .O(N__1420),
            .I(trans_countZ0Z_3));
    LocalMux I__297 (
            .O(N__1417),
            .I(trans_countZ0Z_3));
    LocalMux I__296 (
            .O(N__1414),
            .I(trans_countZ0Z_3));
    LocalMux I__295 (
            .O(N__1411),
            .I(trans_countZ0Z_3));
    InMux I__294 (
            .O(N__1402),
            .I(N__1399));
    LocalMux I__293 (
            .O(N__1399),
            .I(N__1396));
    Odrv4 I__292 (
            .O(N__1396),
            .I(IPDONE_i_RNOZ0Z_0));
    IoInMux I__291 (
            .O(N__1393),
            .I(N__1390));
    LocalMux I__290 (
            .O(N__1390),
            .I(N__1387));
    Span12Mux_s4_v I__289 (
            .O(N__1387),
            .I(N__1383));
    InMux I__288 (
            .O(N__1386),
            .I(N__1380));
    Span12Mux_h I__287 (
            .O(N__1383),
            .I(N__1377));
    LocalMux I__286 (
            .O(N__1380),
            .I(N__1374));
    Span12Mux_v I__285 (
            .O(N__1377),
            .I(N__1366));
    Span12Mux_h I__284 (
            .O(N__1374),
            .I(N__1363));
    InMux I__283 (
            .O(N__1373),
            .I(N__1360));
    CascadeMux I__282 (
            .O(N__1372),
            .I(N__1357));
    InMux I__281 (
            .O(N__1371),
            .I(N__1351));
    InMux I__280 (
            .O(N__1370),
            .I(N__1351));
    InMux I__279 (
            .O(N__1369),
            .I(N__1348));
    Span12Mux_v I__278 (
            .O(N__1366),
            .I(N__1340));
    Span12Mux_v I__277 (
            .O(N__1363),
            .I(N__1335));
    LocalMux I__276 (
            .O(N__1360),
            .I(N__1335));
    InMux I__275 (
            .O(N__1357),
            .I(N__1330));
    InMux I__274 (
            .O(N__1356),
            .I(N__1330));
    LocalMux I__273 (
            .O(N__1351),
            .I(N__1327));
    LocalMux I__272 (
            .O(N__1348),
            .I(N__1324));
    InMux I__271 (
            .O(N__1347),
            .I(N__1317));
    InMux I__270 (
            .O(N__1346),
            .I(N__1317));
    InMux I__269 (
            .O(N__1345),
            .I(N__1317));
    InMux I__268 (
            .O(N__1344),
            .I(N__1314));
    InMux I__267 (
            .O(N__1343),
            .I(N__1311));
    Odrv12 I__266 (
            .O(N__1340),
            .I(IPDONE_c));
    Odrv12 I__265 (
            .O(N__1335),
            .I(IPDONE_c));
    LocalMux I__264 (
            .O(N__1330),
            .I(IPDONE_c));
    Odrv4 I__263 (
            .O(N__1327),
            .I(IPDONE_c));
    Odrv4 I__262 (
            .O(N__1324),
            .I(IPDONE_c));
    LocalMux I__261 (
            .O(N__1317),
            .I(IPDONE_c));
    LocalMux I__260 (
            .O(N__1314),
            .I(IPDONE_c));
    LocalMux I__259 (
            .O(N__1311),
            .I(IPDONE_c));
    InMux I__258 (
            .O(N__1294),
            .I(N__1290));
    CascadeMux I__257 (
            .O(N__1293),
            .I(N__1285));
    LocalMux I__256 (
            .O(N__1290),
            .I(N__1282));
    InMux I__255 (
            .O(N__1289),
            .I(N__1277));
    InMux I__254 (
            .O(N__1288),
            .I(N__1277));
    InMux I__253 (
            .O(N__1285),
            .I(N__1274));
    Span12Mux_v I__252 (
            .O(N__1282),
            .I(N__1271));
    LocalMux I__251 (
            .O(N__1277),
            .I(N__1268));
    LocalMux I__250 (
            .O(N__1274),
            .I(N__1265));
    Span12Mux_v I__249 (
            .O(N__1271),
            .I(N__1262));
    Span4Mux_v I__248 (
            .O(N__1268),
            .I(N__1259));
    Span4Mux_h I__247 (
            .O(N__1265),
            .I(N__1256));
    Odrv12 I__246 (
            .O(N__1262),
            .I(hard01_SBACKO));
    Odrv4 I__245 (
            .O(N__1259),
            .I(hard01_SBACKO));
    Odrv4 I__244 (
            .O(N__1256),
            .I(hard01_SBACKO));
    IoInMux I__243 (
            .O(N__1249),
            .I(N__1246));
    LocalMux I__242 (
            .O(N__1246),
            .I(N__1243));
    Span4Mux_s2_v I__241 (
            .O(N__1243),
            .I(N__1240));
    Sp12to4 I__240 (
            .O(N__1240),
            .I(N__1237));
    Span12Mux_h I__239 (
            .O(N__1237),
            .I(N__1234));
    Odrv12 I__238 (
            .O(N__1234),
            .I(N_32_i));
    InMux I__237 (
            .O(N__1231),
            .I(trans_count_cry_0));
    InMux I__236 (
            .O(N__1228),
            .I(trans_count_cry_1));
    InMux I__235 (
            .O(N__1225),
            .I(trans_count_cry_2));
    InMux I__234 (
            .O(N__1222),
            .I(trans_count_cry_3));
    InMux I__233 (
            .O(N__1219),
            .I(trans_count_cry_4));
    InMux I__232 (
            .O(N__1216),
            .I(N__1212));
    InMux I__231 (
            .O(N__1215),
            .I(N__1209));
    LocalMux I__230 (
            .O(N__1212),
            .I(trans_countZ0Z_5));
    LocalMux I__229 (
            .O(N__1209),
            .I(trans_countZ0Z_5));
    CascadeMux I__228 (
            .O(N__1204),
            .I(N__1201));
    InMux I__227 (
            .O(N__1201),
            .I(N__1197));
    InMux I__226 (
            .O(N__1200),
            .I(N__1194));
    LocalMux I__225 (
            .O(N__1197),
            .I(N_8_2));
    LocalMux I__224 (
            .O(N__1194),
            .I(N_8_2));
    InMux I__223 (
            .O(N__1189),
            .I(N__1185));
    InMux I__222 (
            .O(N__1188),
            .I(N__1182));
    LocalMux I__221 (
            .O(N__1185),
            .I(N_60));
    LocalMux I__220 (
            .O(N__1182),
            .I(N_60));
    InMux I__219 (
            .O(N__1177),
            .I(N__1174));
    LocalMux I__218 (
            .O(N__1174),
            .I(load_dZ0Z2));
    InMux I__217 (
            .O(N__1171),
            .I(N__1168));
    LocalMux I__216 (
            .O(N__1168),
            .I(N_18_i));
    InMux I__215 (
            .O(N__1165),
            .I(N__1156));
    InMux I__214 (
            .O(N__1164),
            .I(N__1156));
    InMux I__213 (
            .O(N__1163),
            .I(N__1156));
    LocalMux I__212 (
            .O(N__1156),
            .I(N_41));
    InMux I__211 (
            .O(N__1153),
            .I(N__1144));
    InMux I__210 (
            .O(N__1152),
            .I(N__1144));
    InMux I__209 (
            .O(N__1151),
            .I(N__1141));
    InMux I__208 (
            .O(N__1150),
            .I(N__1138));
    InMux I__207 (
            .O(N__1149),
            .I(N__1135));
    LocalMux I__206 (
            .O(N__1144),
            .I(N_20_i));
    LocalMux I__205 (
            .O(N__1141),
            .I(N_20_i));
    LocalMux I__204 (
            .O(N__1138),
            .I(N_20_i));
    LocalMux I__203 (
            .O(N__1135),
            .I(N_20_i));
    CascadeMux I__202 (
            .O(N__1126),
            .I(N__1122));
    CascadeMux I__201 (
            .O(N__1125),
            .I(N__1117));
    InMux I__200 (
            .O(N__1122),
            .I(N__1105));
    InMux I__199 (
            .O(N__1121),
            .I(N__1105));
    InMux I__198 (
            .O(N__1120),
            .I(N__1105));
    InMux I__197 (
            .O(N__1117),
            .I(N__1105));
    InMux I__196 (
            .O(N__1116),
            .I(N__1105));
    LocalMux I__195 (
            .O(N__1105),
            .I(N_40));
    InMux I__194 (
            .O(N__1102),
            .I(N__1099));
    LocalMux I__193 (
            .O(N__1099),
            .I(hard_SBADRi_1_0_i_1));
    InMux I__192 (
            .O(N__1096),
            .I(N__1088));
    InMux I__191 (
            .O(N__1095),
            .I(N__1088));
    InMux I__190 (
            .O(N__1094),
            .I(N__1085));
    InMux I__189 (
            .O(N__1093),
            .I(N__1082));
    LocalMux I__188 (
            .O(N__1088),
            .I(N_37));
    LocalMux I__187 (
            .O(N__1085),
            .I(N_37));
    LocalMux I__186 (
            .O(N__1082),
            .I(N_37));
    InMux I__185 (
            .O(N__1075),
            .I(N__1072));
    LocalMux I__184 (
            .O(N__1072),
            .I(N_10));
    CascadeMux I__183 (
            .O(N__1069),
            .I(N_10_cascade_));
    InMux I__182 (
            .O(N__1066),
            .I(N__1063));
    LocalMux I__181 (
            .O(N__1063),
            .I(N_5));
    InMux I__180 (
            .O(N__1060),
            .I(N__1057));
    LocalMux I__179 (
            .O(N__1057),
            .I(N__1054));
    Span4Mux_s1_v I__178 (
            .O(N__1054),
            .I(N__1051));
    Sp12to4 I__177 (
            .O(N__1051),
            .I(N__1048));
    Span12Mux_s7_h I__176 (
            .O(N__1048),
            .I(N__1045));
    Span12Mux_v I__175 (
            .O(N__1045),
            .I(N__1042));
    Span12Mux_v I__174 (
            .O(N__1042),
            .I(N__1039));
    Span12Mux_h I__173 (
            .O(N__1039),
            .I(N__1036));
    Odrv12 I__172 (
            .O(N__1036),
            .I(SBWRi_c));
    InMux I__171 (
            .O(N__1033),
            .I(N__1030));
    LocalMux I__170 (
            .O(N__1030),
            .I(hard_SBWRi_0_i));
    InMux I__169 (
            .O(N__1027),
            .I(N__1012));
    InMux I__168 (
            .O(N__1026),
            .I(N__1012));
    InMux I__167 (
            .O(N__1025),
            .I(N__1012));
    InMux I__166 (
            .O(N__1024),
            .I(N__1012));
    CascadeMux I__165 (
            .O(N__1023),
            .I(N__1009));
    InMux I__164 (
            .O(N__1022),
            .I(N__1006));
    InMux I__163 (
            .O(N__1021),
            .I(N__1003));
    LocalMux I__162 (
            .O(N__1012),
            .I(N__1000));
    InMux I__161 (
            .O(N__1009),
            .I(N__997));
    LocalMux I__160 (
            .O(N__1006),
            .I(trans_countZ0Z_0));
    LocalMux I__159 (
            .O(N__1003),
            .I(trans_countZ0Z_0));
    Odrv4 I__158 (
            .O(N__1000),
            .I(trans_countZ0Z_0));
    LocalMux I__157 (
            .O(N__997),
            .I(trans_countZ0Z_0));
    InMux I__156 (
            .O(N__988),
            .I(N__982));
    InMux I__155 (
            .O(N__987),
            .I(N__982));
    LocalMux I__154 (
            .O(N__982),
            .I(trans_count_s_0));
    InMux I__153 (
            .O(N__979),
            .I(bfn_2_29_0_));
    InMux I__152 (
            .O(N__976),
            .I(N__973));
    LocalMux I__151 (
            .O(N__973),
            .I(N_36));
    CascadeMux I__150 (
            .O(N__970),
            .I(N_36_cascade_));
    InMux I__149 (
            .O(N__967),
            .I(N__963));
    InMux I__148 (
            .O(N__966),
            .I(N__960));
    LocalMux I__147 (
            .O(N__963),
            .I(N__957));
    LocalMux I__146 (
            .O(N__960),
            .I(N_12));
    Odrv4 I__145 (
            .O(N__957),
            .I(N_12));
    CascadeMux I__144 (
            .O(N__952),
            .I(N_37_cascade_));
    CascadeMux I__143 (
            .O(N__949),
            .I(N_40_cascade_));
    InMux I__142 (
            .O(N__946),
            .I(N__943));
    LocalMux I__141 (
            .O(N__943),
            .I(N_8));
    InMux I__140 (
            .O(N__940),
            .I(N__937));
    LocalMux I__139 (
            .O(N__937),
            .I(N_14_i));
    InMux I__138 (
            .O(N__934),
            .I(N__931));
    LocalMux I__137 (
            .O(N__931),
            .I(N_16_i));
    InMux I__136 (
            .O(N__928),
            .I(N__923));
    InMux I__135 (
            .O(N__927),
            .I(N__918));
    InMux I__134 (
            .O(N__926),
            .I(N__918));
    LocalMux I__133 (
            .O(N__923),
            .I(runZ0));
    LocalMux I__132 (
            .O(N__918),
            .I(runZ0));
    CascadeMux I__131 (
            .O(N__913),
            .I(N__910));
    InMux I__130 (
            .O(N__910),
            .I(N__904));
    InMux I__129 (
            .O(N__909),
            .I(N__904));
    LocalMux I__128 (
            .O(N__904),
            .I(sb_idleZ0));
    InMux I__127 (
            .O(N__901),
            .I(N__898));
    LocalMux I__126 (
            .O(N__898),
            .I(N__895));
    Span4Mux_s2_v I__125 (
            .O(N__895),
            .I(N__892));
    Odrv4 I__124 (
            .O(N__892),
            .I(IPDONE_c_i));
    InMux I__123 (
            .O(N__889),
            .I(N__886));
    LocalMux I__122 (
            .O(N__886),
            .I(N__883));
    Span12Mux_v I__121 (
            .O(N__883),
            .I(N__880));
    Span12Mux_v I__120 (
            .O(N__880),
            .I(N__877));
    Span12Mux_h I__119 (
            .O(N__877),
            .I(N__874));
    Odrv12 I__118 (
            .O(N__874),
            .I(SBSTBi_c));
    InMux I__117 (
            .O(N__871),
            .I(N__867));
    InMux I__116 (
            .O(N__870),
            .I(N__864));
    LocalMux I__115 (
            .O(N__867),
            .I(strobeZ0));
    LocalMux I__114 (
            .O(N__864),
            .I(strobeZ0));
    InMux I__113 (
            .O(N__859),
            .I(N__856));
    LocalMux I__112 (
            .O(N__856),
            .I(N__853));
    Span4Mux_s2_v I__111 (
            .O(N__853),
            .I(N__850));
    Odrv4 I__110 (
            .O(N__850),
            .I(hard_SBSTBi));
    InMux I__109 (
            .O(N__847),
            .I(N__844));
    LocalMux I__108 (
            .O(N__844),
            .I(N_22_i));
    InMux I__107 (
            .O(N__841),
            .I(N__838));
    LocalMux I__106 (
            .O(N__838),
            .I(N__835));
    Span12Mux_s1_h I__105 (
            .O(N__835),
            .I(N__832));
    Span12Mux_h I__104 (
            .O(N__832),
            .I(N__829));
    Odrv12 I__103 (
            .O(N__829),
            .I(I2C2_SCL_in));
    InMux I__102 (
            .O(N__826),
            .I(N__823));
    LocalMux I__101 (
            .O(N__823),
            .I(N__820));
    Span4Mux_s3_v I__100 (
            .O(N__820),
            .I(N__817));
    Sp12to4 I__99 (
            .O(N__817),
            .I(N__814));
    Span12Mux_s8_h I__98 (
            .O(N__814),
            .I(N__811));
    Span12Mux_h I__97 (
            .O(N__811),
            .I(N__808));
    Odrv12 I__96 (
            .O(N__808),
            .I(filter_out_0));
    IoInMux I__95 (
            .O(N__805),
            .I(N__802));
    LocalMux I__94 (
            .O(N__802),
            .I(N__799));
    Span12Mux_s4_v I__93 (
            .O(N__799),
            .I(N__796));
    Span12Mux_h I__92 (
            .O(N__796),
            .I(N__793));
    Odrv12 I__91 (
            .O(N__793),
            .I(I2C2_SDAo));
    IoInMux I__90 (
            .O(N__790),
            .I(N__787));
    LocalMux I__89 (
            .O(N__787),
            .I(N__784));
    Span12Mux_s11_v I__88 (
            .O(N__784),
            .I(N__781));
    Span12Mux_h I__87 (
            .O(N__781),
            .I(N__778));
    Odrv12 I__86 (
            .O(N__778),
            .I(I2C2_SDAoe));
    IoInMux I__85 (
            .O(N__775),
            .I(N__772));
    LocalMux I__84 (
            .O(N__772),
            .I(N__769));
    Span12Mux_s9_v I__83 (
            .O(N__769),
            .I(N__766));
    Span12Mux_h I__82 (
            .O(N__766),
            .I(N__763));
    Odrv12 I__81 (
            .O(N__763),
            .I(I2C2_SCLoe));
    InMux I__80 (
            .O(N__760),
            .I(N__757));
    LocalMux I__79 (
            .O(N__757),
            .I(N__754));
    Span12Mux_h I__78 (
            .O(N__754),
            .I(N__751));
    Odrv12 I__77 (
            .O(N__751),
            .I(I2C2_SDA_in));
    IoInMux I__76 (
            .O(N__748),
            .I(N__745));
    LocalMux I__75 (
            .O(N__745),
            .I(N__742));
    Span12Mux_s9_v I__74 (
            .O(N__742),
            .I(N__739));
    Span12Mux_h I__73 (
            .O(N__739),
            .I(N__736));
    Span12Mux_h I__72 (
            .O(N__736),
            .I(N__733));
    Span12Mux_v I__71 (
            .O(N__733),
            .I(N__730));
    Odrv12 I__70 (
            .O(N__730),
            .I(I2CPWKUP_c_0));
    IoInMux I__69 (
            .O(N__727),
            .I(N__724));
    LocalMux I__68 (
            .O(N__724),
            .I(N__721));
    Span12Mux_s2_v I__67 (
            .O(N__721),
            .I(N__718));
    Span12Mux_h I__66 (
            .O(N__718),
            .I(N__715));
    Odrv12 I__65 (
            .O(N__715),
            .I(I2C2_SCLo));
    IoInMux I__64 (
            .O(N__712),
            .I(N__709));
    LocalMux I__63 (
            .O(N__709),
            .I(N__706));
    Span4Mux_s0_v I__62 (
            .O(N__706),
            .I(N__703));
    Sp12to4 I__61 (
            .O(N__703),
            .I(N__700));
    Span12Mux_h I__60 (
            .O(N__700),
            .I(N__697));
    Odrv12 I__59 (
            .O(N__697),
            .I(I2CPIRQ_c_0));
    defparam IN_MUX_bfv_2_29_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_2_29_0_ (
            .carryinitin(),
            .carryinitout(bfn_2_29_0_));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    SB_FILTER_50NS filterInst_1 (
            .FILTEROUT(filter_out_0),
            .FILTERIN(N__841));
    defparam SB_I2C_INST_LT.I2C_SLAVE_INIT_ADDR="0b1000001";
    defparam SB_I2C_INST_LT.BUS_ADDR74="0b0001";
    SB_I2C SB_I2C_INST_LT (
            .SBADRI2(N__934),
            .SDAOE(I2C2_SDAoe),
            .SDAI(N__760),
            .SCLOE(I2C2_SCLoe),
            .SBDATO7(),
            .SBDATI0(N__847),
            .SBCLKI(N__1762),
            .SBADRI3(N__940),
            .SBDATO0(),
            .SBDATI1(N__966),
            .SBADRI0(N__946),
            .SDAO(I2C2_SDAo),
            .SBDATO1(),
            .SBDATI6(N__1153),
            .SBADRI1(N__1102),
            .SBACKO(hard01_SBACKO),
            .I2CWKUP(I2CPWKUP_c_0),
            .I2CIRQ(I2CPIRQ_c_0),
            .SBDATO2(),
            .SBDATI7(N__1066),
            .SBADRI6(N__1151),
            .SCLI(N__826),
            .SBSTBI(N__859),
            .SBDATO3(),
            .SBDATI4(N__1171),
            .SBADRI7(N__1150),
            .SBDATO4(),
            .SBDATI5(N__1075),
            .SBADRI4(N__901),
            .SCLO(I2C2_SCLo),
            .SBDATO5(),
            .SBDATI2(N__1149),
            .SBADRI5(N__1152),
            .SBRWI(N__1033),
            .SBDATO6(),
            .SBDATI3(N__967));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam sb_idle_LC_1_26_0.C_ON=1'b0;
    defparam sb_idle_LC_1_26_0.SEQ_MODE=4'b1011;
    defparam sb_idle_LC_1_26_0.LUT_INIT=16'b0111011100110011;
    LogicCell40 sb_idle_LC_1_26_0 (
            .in0(N__909),
            .in1(N__927),
            .in2(_gnd_net_),
            .in3(N__1288),
            .lcout(sb_idleZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1758),
            .ce(),
            .sr(N__1733));
    defparam run_LC_1_26_3.C_ON=1'b0;
    defparam run_LC_1_26_3.SEQ_MODE=4'b1010;
    defparam run_LC_1_26_3.LUT_INIT=16'b1100110011101110;
    LogicCell40 run_LC_1_26_3 (
            .in0(N__926),
            .in1(N__1500),
            .in2(_gnd_net_),
            .in3(N__1373),
            .lcout(runZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1758),
            .ce(),
            .sr(N__1733));
    defparam strobe_LC_1_26_4.C_ON=1'b0;
    defparam strobe_LC_1_26_4.SEQ_MODE=4'b1010;
    defparam strobe_LC_1_26_4.LUT_INIT=16'b1110000011101000;
    LogicCell40 strobe_LC_1_26_4 (
            .in0(N__928),
            .in1(N__871),
            .in2(N__913),
            .in3(N__1289),
            .lcout(strobeZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1758),
            .ce(),
            .sr(N__1733));
    defparam SB_I2C_INST_LT_RNO_1_LC_1_27_1.C_ON=1'b0;
    defparam SB_I2C_INST_LT_RNO_1_LC_1_27_1.SEQ_MODE=4'b0000;
    defparam SB_I2C_INST_LT_RNO_1_LC_1_27_1.LUT_INIT=16'b0000000011111111;
    LogicCell40 SB_I2C_INST_LT_RNO_1_LC_1_27_1 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1370),
            .lcout(IPDONE_c_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam SB_I2C_INST_LT_RNO_0_LC_1_27_2.C_ON=1'b0;
    defparam SB_I2C_INST_LT_RNO_0_LC_1_27_2.SEQ_MODE=4'b0000;
    defparam SB_I2C_INST_LT_RNO_0_LC_1_27_2.LUT_INIT=16'b1101110110001000;
    LogicCell40 SB_I2C_INST_LT_RNO_0_LC_1_27_2 (
            .in0(N__1371),
            .in1(N__889),
            .in2(_gnd_net_),
            .in3(N__870),
            .lcout(hard_SBSTBi),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam SB_I2C_INST_LT_RNO_8_LC_1_28_0.C_ON=1'b0;
    defparam SB_I2C_INST_LT_RNO_8_LC_1_28_0.SEQ_MODE=4'b0000;
    defparam SB_I2C_INST_LT_RNO_8_LC_1_28_0.LUT_INIT=16'b0000111100001010;
    LogicCell40 SB_I2C_INST_LT_RNO_8_LC_1_28_0 (
            .in0(N__1096),
            .in1(_gnd_net_),
            .in2(N__1372),
            .in3(N__976),
            .lcout(N_22_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam trans_count_RNIB1T71_0_LC_1_28_4.C_ON=1'b0;
    defparam trans_count_RNIB1T71_0_LC_1_28_4.SEQ_MODE=4'b0000;
    defparam trans_count_RNIB1T71_0_LC_1_28_4.LUT_INIT=16'b1110111010001000;
    LogicCell40 trans_count_RNIB1T71_0_LC_1_28_4 (
            .in0(N__1021),
            .in1(N__1633),
            .in2(_gnd_net_),
            .in3(N__1594),
            .lcout(N_36),
            .ltout(N_36_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam IPDONE_i_RNI98H42_LC_1_28_5.C_ON=1'b0;
    defparam IPDONE_i_RNI98H42_LC_1_28_5.SEQ_MODE=4'b0000;
    defparam IPDONE_i_RNI98H42_LC_1_28_5.LUT_INIT=16'b1111111111111100;
    LogicCell40 IPDONE_i_RNI98H42_LC_1_28_5 (
            .in0(_gnd_net_),
            .in1(N__1356),
            .in2(N__970),
            .in3(N__1095),
            .lcout(N_12),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam trans_count_RNINGJQ_3_LC_1_29_3.C_ON=1'b0;
    defparam trans_count_RNINGJQ_3_LC_1_29_3.SEQ_MODE=4'b0000;
    defparam trans_count_RNINGJQ_3_LC_1_29_3.LUT_INIT=16'b1111111111001100;
    LogicCell40 trans_count_RNINGJQ_3_LC_1_29_3 (
            .in0(_gnd_net_),
            .in1(N__1528),
            .in2(_gnd_net_),
            .in3(N__1423),
            .lcout(N_37),
            .ltout(N_37_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam trans_count_RNIH7T71_2_LC_1_29_4.C_ON=1'b0;
    defparam trans_count_RNIH7T71_2_LC_1_29_4.SEQ_MODE=4'b0000;
    defparam trans_count_RNIH7T71_2_LC_1_29_4.LUT_INIT=16'b1111111111110000;
    LogicCell40 trans_count_RNIH7T71_2_LC_1_29_4 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__952),
            .in3(N__1631),
            .lcout(N_40),
            .ltout(N_40_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam SB_I2C_INST_LT_RNO_5_LC_1_29_5.C_ON=1'b0;
    defparam SB_I2C_INST_LT_RNO_5_LC_1_29_5.SEQ_MODE=4'b0000;
    defparam SB_I2C_INST_LT_RNO_5_LC_1_29_5.LUT_INIT=16'b1111101111111110;
    LogicCell40 SB_I2C_INST_LT_RNO_5_LC_1_29_5 (
            .in0(N__1200),
            .in1(N__1022),
            .in2(N__949),
            .in3(N__1592),
            .lcout(N_8),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam IPDONE_i_LC_1_29_6.C_ON=1'b0;
    defparam IPDONE_i_LC_1_29_6.SEQ_MODE=4'b1010;
    defparam IPDONE_i_LC_1_29_6.LUT_INIT=16'b0011001110101010;
    LogicCell40 IPDONE_i_LC_1_29_6 (
            .in0(N__1402),
            .in1(N__1496),
            .in2(_gnd_net_),
            .in3(N__1189),
            .lcout(IPDONE_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1761),
            .ce(),
            .sr(N__1732));
    defparam trans_count_RNIFH7N1_0_LC_1_29_7.C_ON=1'b0;
    defparam trans_count_RNIFH7N1_0_LC_1_29_7.SEQ_MODE=4'b0000;
    defparam trans_count_RNIFH7N1_0_LC_1_29_7.LUT_INIT=16'b1010101010101011;
    LogicCell40 trans_count_RNIFH7N1_0_LC_1_29_7 (
            .in0(N__1343),
            .in1(N__1591),
            .in2(N__1023),
            .in3(N__1093),
            .lcout(N_41),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam SB_I2C_INST_LT_RNO_2_LC_1_30_0.C_ON=1'b0;
    defparam SB_I2C_INST_LT_RNO_2_LC_1_30_0.SEQ_MODE=4'b0000;
    defparam SB_I2C_INST_LT_RNO_2_LC_1_30_0.LUT_INIT=16'b0101010001010001;
    LogicCell40 SB_I2C_INST_LT_RNO_2_LC_1_30_0 (
            .in0(N__1346),
            .in1(N__1596),
            .in2(N__1125),
            .in3(N__1026),
            .lcout(N_14_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam SB_I2C_INST_LT_RNO_3_LC_1_30_1.C_ON=1'b0;
    defparam SB_I2C_INST_LT_RNO_3_LC_1_30_1.SEQ_MODE=4'b0000;
    defparam SB_I2C_INST_LT_RNO_3_LC_1_30_1.LUT_INIT=16'b0000000011011101;
    LogicCell40 SB_I2C_INST_LT_RNO_3_LC_1_30_1 (
            .in0(N__1024),
            .in1(N__1116),
            .in2(_gnd_net_),
            .in3(N__1163),
            .lcout(N_16_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam SB_I2C_INST_LT_RNO_7_LC_1_30_2.C_ON=1'b0;
    defparam SB_I2C_INST_LT_RNO_7_LC_1_30_2.SEQ_MODE=4'b0000;
    defparam SB_I2C_INST_LT_RNO_7_LC_1_30_2.LUT_INIT=16'b0101000101010001;
    LogicCell40 SB_I2C_INST_LT_RNO_7_LC_1_30_2 (
            .in0(N__1165),
            .in1(N__1598),
            .in2(N__1126),
            .in3(_gnd_net_),
            .lcout(N_18_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam trans_count_RNI0P4V2_0_LC_1_30_3.C_ON=1'b0;
    defparam trans_count_RNI0P4V2_0_LC_1_30_3.SEQ_MODE=4'b0000;
    defparam trans_count_RNI0P4V2_0_LC_1_30_3.LUT_INIT=16'b0000000011001100;
    LogicCell40 trans_count_RNI0P4V2_0_LC_1_30_3 (
            .in0(_gnd_net_),
            .in1(N__1121),
            .in2(_gnd_net_),
            .in3(N__1164),
            .lcout(N_20_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam SB_I2C_INST_LT_RNO_4_LC_1_30_4.C_ON=1'b0;
    defparam SB_I2C_INST_LT_RNO_4_LC_1_30_4.SEQ_MODE=4'b0000;
    defparam SB_I2C_INST_LT_RNO_4_LC_1_30_4.LUT_INIT=16'b1111111111111110;
    LogicCell40 SB_I2C_INST_LT_RNO_4_LC_1_30_4 (
            .in0(N__1120),
            .in1(N__1597),
            .in2(N__1204),
            .in3(N__1025),
            .lcout(hard_SBADRi_1_0_i_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam IPDONE_i_RNIMI422_LC_1_30_5.C_ON=1'b0;
    defparam IPDONE_i_RNIMI422_LC_1_30_5.SEQ_MODE=4'b0000;
    defparam IPDONE_i_RNIMI422_LC_1_30_5.LUT_INIT=16'b1111111111101110;
    LogicCell40 IPDONE_i_RNIMI422_LC_1_30_5 (
            .in0(N__1094),
            .in1(N__1345),
            .in2(_gnd_net_),
            .in3(N__1188),
            .lcout(N_10),
            .ltout(N_10_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam SB_I2C_INST_LT_RNO_6_LC_1_30_6.C_ON=1'b0;
    defparam SB_I2C_INST_LT_RNO_6_LC_1_30_6.SEQ_MODE=4'b0000;
    defparam SB_I2C_INST_LT_RNO_6_LC_1_30_6.LUT_INIT=16'b1111000011110001;
    LogicCell40 SB_I2C_INST_LT_RNO_6_LC_1_30_6 (
            .in0(N__1635),
            .in1(N__1599),
            .in2(N__1069),
            .in3(N__1027),
            .lcout(N_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam SB_I2C_INST_LT_RNO_LC_1_30_7.C_ON=1'b0;
    defparam SB_I2C_INST_LT_RNO_LC_1_30_7.SEQ_MODE=4'b0000;
    defparam SB_I2C_INST_LT_RNO_LC_1_30_7.LUT_INIT=16'b1010101011111111;
    LogicCell40 SB_I2C_INST_LT_RNO_LC_1_30_7 (
            .in0(N__1060),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1347),
            .lcout(hard_SBWRi_0_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam trans_count_fast_0_LC_2_28_3.C_ON=1'b0;
    defparam trans_count_fast_0_LC_2_28_3.SEQ_MODE=4'b1010;
    defparam trans_count_fast_0_LC_2_28_3.LUT_INIT=16'b0000000011001100;
    LogicCell40 trans_count_fast_0_LC_2_28_3 (
            .in0(_gnd_net_),
            .in1(N__988),
            .in2(_gnd_net_),
            .in3(N__1474),
            .lcout(trans_count_fastZ0Z_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1759),
            .ce(N__1542),
            .sr(N__1734));
    defparam trans_count_0_LC_2_28_7.C_ON=1'b0;
    defparam trans_count_0_LC_2_28_7.SEQ_MODE=4'b1010;
    defparam trans_count_0_LC_2_28_7.LUT_INIT=16'b0000000011001100;
    LogicCell40 trans_count_0_LC_2_28_7 (
            .in0(_gnd_net_),
            .in1(N__987),
            .in2(_gnd_net_),
            .in3(N__1473),
            .lcout(trans_countZ0Z_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1759),
            .ce(N__1542),
            .sr(N__1734));
    defparam trans_count_fast_RNI5VSA_0_LC_2_29_0.C_ON=1'b1;
    defparam trans_count_fast_RNI5VSA_0_LC_2_29_0.SEQ_MODE=4'b0000;
    defparam trans_count_fast_RNI5VSA_0_LC_2_29_0.LUT_INIT=16'b1001100101100110;
    LogicCell40 trans_count_fast_RNI5VSA_0_LC_2_29_0 (
            .in0(_gnd_net_),
            .in1(N__1656),
            .in2(_gnd_net_),
            .in3(N__979),
            .lcout(trans_count_s_0),
            .ltout(),
            .carryin(bfn_2_29_0_),
            .carryout(trans_count_cry_0),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam trans_count_1_LC_2_29_1.C_ON=1'b1;
    defparam trans_count_1_LC_2_29_1.SEQ_MODE=4'b1010;
    defparam trans_count_1_LC_2_29_1.LUT_INIT=16'b0001000101000100;
    LogicCell40 trans_count_1_LC_2_29_1 (
            .in0(N__1506),
            .in1(N__1600),
            .in2(_gnd_net_),
            .in3(N__1231),
            .lcout(trans_countZ0Z_1),
            .ltout(),
            .carryin(trans_count_cry_0),
            .carryout(trans_count_cry_1),
            .clk(N__1760),
            .ce(N__1543),
            .sr(N__1738));
    defparam trans_count_2_LC_2_29_2.C_ON=1'b1;
    defparam trans_count_2_LC_2_29_2.SEQ_MODE=4'b1010;
    defparam trans_count_2_LC_2_29_2.LUT_INIT=16'b0001000101000100;
    LogicCell40 trans_count_2_LC_2_29_2 (
            .in0(N__1497),
            .in1(N__1636),
            .in2(_gnd_net_),
            .in3(N__1228),
            .lcout(trans_countZ0Z_2),
            .ltout(),
            .carryin(trans_count_cry_1),
            .carryout(trans_count_cry_2),
            .clk(N__1760),
            .ce(N__1543),
            .sr(N__1738));
    defparam trans_count_3_LC_2_29_3.C_ON=1'b1;
    defparam trans_count_3_LC_2_29_3.SEQ_MODE=4'b1010;
    defparam trans_count_3_LC_2_29_3.LUT_INIT=16'b0001000101000100;
    LogicCell40 trans_count_3_LC_2_29_3 (
            .in0(N__1507),
            .in1(N__1426),
            .in2(_gnd_net_),
            .in3(N__1225),
            .lcout(trans_countZ0Z_3),
            .ltout(),
            .carryin(trans_count_cry_2),
            .carryout(trans_count_cry_3),
            .clk(N__1760),
            .ce(N__1543),
            .sr(N__1738));
    defparam trans_count_4_LC_2_29_4.C_ON=1'b1;
    defparam trans_count_4_LC_2_29_4.SEQ_MODE=4'b1010;
    defparam trans_count_4_LC_2_29_4.LUT_INIT=16'b0001000101000100;
    LogicCell40 trans_count_4_LC_2_29_4 (
            .in0(N__1498),
            .in1(N__1531),
            .in2(_gnd_net_),
            .in3(N__1222),
            .lcout(trans_countZ0Z_4),
            .ltout(),
            .carryin(trans_count_cry_3),
            .carryout(trans_count_cry_4),
            .clk(N__1760),
            .ce(N__1543),
            .sr(N__1738));
    defparam trans_count_5_LC_2_29_5.C_ON=1'b0;
    defparam trans_count_5_LC_2_29_5.SEQ_MODE=4'b1010;
    defparam trans_count_5_LC_2_29_5.LUT_INIT=16'b0001000100100010;
    LogicCell40 trans_count_5_LC_2_29_5 (
            .in0(N__1216),
            .in1(N__1499),
            .in2(_gnd_net_),
            .in3(N__1219),
            .lcout(trans_countZ0Z_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1760),
            .ce(N__1543),
            .sr(N__1738));
    defparam trans_count_RNI4GAF_5_LC_2_30_3.C_ON=1'b0;
    defparam trans_count_RNI4GAF_5_LC_2_30_3.SEQ_MODE=4'b0000;
    defparam trans_count_RNI4GAF_5_LC_2_30_3.LUT_INIT=16'b1111111111001100;
    LogicCell40 trans_count_RNI4GAF_5_LC_2_30_3 (
            .in0(_gnd_net_),
            .in1(N__1215),
            .in2(_gnd_net_),
            .in3(N__1344),
            .lcout(N_8_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam trans_count_fast_RNIOBG51_0_LC_2_30_4.C_ON=1'b0;
    defparam trans_count_fast_RNIOBG51_0_LC_2_30_4.SEQ_MODE=4'b0000;
    defparam trans_count_fast_RNIOBG51_0_LC_2_30_4.LUT_INIT=16'b1100110010001000;
    LogicCell40 trans_count_fast_RNIOBG51_0_LC_2_30_4 (
            .in0(N__1593),
            .in1(N__1632),
            .in2(_gnd_net_),
            .in3(N__1657),
            .lcout(N_60),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam load_d2_LC_3_27_1.C_ON=1'b0;
    defparam load_d2_LC_3_27_1.SEQ_MODE=4'b1010;
    defparam load_d2_LC_3_27_1.LUT_INIT=16'b1111111100000000;
    LogicCell40 load_d2_LC_3_27_1 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1771),
            .lcout(load_dZ0Z2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1757),
            .ce(),
            .sr(N__1731));
    defparam start_LC_3_27_3.C_ON=1'b0;
    defparam start_LC_3_27_3.SEQ_MODE=4'b1010;
    defparam start_LC_3_27_3.LUT_INIT=16'b0011001100000000;
    LogicCell40 start_LC_3_27_3 (
            .in0(_gnd_net_),
            .in1(N__1177),
            .in2(_gnd_net_),
            .in3(N__1770),
            .lcout(startZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1757),
            .ce(),
            .sr(N__1731));
    defparam pup_LC_3_27_5.C_ON=1'b0;
    defparam pup_LC_3_27_5.SEQ_MODE=4'b1011;
    defparam pup_LC_3_27_5.LUT_INIT=16'b0000000011001100;
    LogicCell40 pup_LC_3_27_5 (
            .in0(_gnd_net_),
            .in1(N__1797),
            .in2(_gnd_net_),
            .in3(N__1475),
            .lcout(pupZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1757),
            .ce(),
            .sr(N__1731));
    defparam load_d1_LC_3_27_6.C_ON=1'b0;
    defparam load_d1_LC_3_27_6.SEQ_MODE=4'b1010;
    defparam load_d1_LC_3_27_6.LUT_INIT=16'b1111111110101010;
    LogicCell40 load_d1_LC_3_27_6 (
            .in0(N__1798),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1789),
            .lcout(load_dZ0Z1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1757),
            .ce(),
            .sr(N__1731));
    defparam trans_count_fast_RNIOBG51_0_0_LC_3_28_0.C_ON=1'b0;
    defparam trans_count_fast_RNIOBG51_0_0_LC_3_28_0.SEQ_MODE=4'b0000;
    defparam trans_count_fast_RNIOBG51_0_0_LC_3_28_0.LUT_INIT=16'b0011001101110111;
    LogicCell40 trans_count_fast_RNIOBG51_0_0_LC_3_28_0 (
            .in0(N__1655),
            .in1(N__1634),
            .in2(_gnd_net_),
            .in3(N__1595),
            .lcout(trans_countlde_i_0_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam SB_I2C_INST_LT_RNIJVJA1_LC_3_28_1.C_ON=1'b0;
    defparam SB_I2C_INST_LT_RNIJVJA1_LC_3_28_1.SEQ_MODE=4'b0000;
    defparam SB_I2C_INST_LT_RNIJVJA1_LC_3_28_1.LUT_INIT=16'b1010101010111010;
    LogicCell40 SB_I2C_INST_LT_RNIJVJA1_LC_3_28_1 (
            .in0(N__1461),
            .in1(N__1530),
            .in2(N__1293),
            .in3(N__1425),
            .lcout(),
            .ltout(SB_I2C_INST_LT_RNIJVJAZ0Z1_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam start_RNIPOMK2_LC_3_28_2.C_ON=1'b0;
    defparam start_RNIPOMK2_LC_3_28_2.SEQ_MODE=4'b0000;
    defparam start_RNIPOMK2_LC_3_28_2.LUT_INIT=16'b1111000011001100;
    LogicCell40 start_RNIPOMK2_LC_3_28_2 (
            .in0(_gnd_net_),
            .in1(N__1462),
            .in2(N__1552),
            .in3(N__1549),
            .lcout(N_24),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam IPDONE_i_RNO_0_LC_3_29_1.C_ON=1'b0;
    defparam IPDONE_i_RNO_0_LC_3_29_1.SEQ_MODE=4'b0000;
    defparam IPDONE_i_RNO_0_LC_3_29_1.LUT_INIT=16'b0000111100001110;
    LogicCell40 IPDONE_i_RNO_0_LC_3_29_1 (
            .in0(N__1369),
            .in1(N__1529),
            .in2(N__1495),
            .in3(N__1424),
            .lcout(IPDONE_i_RNOZ0Z_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam SBACKo_obuf_RNO_LC_10_11_4.C_ON=1'b0;
    defparam SBACKo_obuf_RNO_LC_10_11_4.SEQ_MODE=4'b0000;
    defparam SBACKo_obuf_RNO_LC_10_11_4.LUT_INIT=16'b1010101000000000;
    LogicCell40 SBACKo_obuf_RNO_LC_10_11_4 (
            .in0(N__1386),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1294),
            .lcout(N_32_i),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
endmodule // MyI2C
