-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2017.08.27940

-- Build Date:         Sep 11 2017 17:29:57

-- File Generated:     Jan 19 2020 14:54:12

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "MyI2C" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of MyI2C
entity MyI2C is
port (
    I2CPWKUP : out std_logic_vector(1 downto 0);
    I2CPIRQ : out std_logic_vector(1 downto 0);
    SBSTBi : in std_logic;
    SBCLKi : in std_logic;
    SBWRi : in std_logic;
    IPDONE : out std_logic;
    I2C2_SCL : inout std_logic;
    SBACKo : out std_logic;
    RST : in std_logic;
    I2C2_SDA : inout std_logic;
    IPLOAD : in std_logic);
end MyI2C;

-- Architecture of MyI2C
-- View name is \INTERFACE\
architecture \INTERFACE\ of MyI2C is

signal \N__1927\ : std_logic;
signal \N__1926\ : std_logic;
signal \N__1925\ : std_logic;
signal \N__1916\ : std_logic;
signal \N__1915\ : std_logic;
signal \N__1914\ : std_logic;
signal \N__1907\ : std_logic;
signal \N__1906\ : std_logic;
signal \N__1905\ : std_logic;
signal \N__1898\ : std_logic;
signal \N__1897\ : std_logic;
signal \N__1896\ : std_logic;
signal \N__1889\ : std_logic;
signal \N__1888\ : std_logic;
signal \N__1887\ : std_logic;
signal \N__1880\ : std_logic;
signal \N__1879\ : std_logic;
signal \N__1878\ : std_logic;
signal \N__1871\ : std_logic;
signal \N__1870\ : std_logic;
signal \N__1869\ : std_logic;
signal \N__1862\ : std_logic;
signal \N__1861\ : std_logic;
signal \N__1860\ : std_logic;
signal \N__1853\ : std_logic;
signal \N__1852\ : std_logic;
signal \N__1851\ : std_logic;
signal \N__1844\ : std_logic;
signal \N__1843\ : std_logic;
signal \N__1842\ : std_logic;
signal \N__1835\ : std_logic;
signal \N__1834\ : std_logic;
signal \N__1833\ : std_logic;
signal \N__1826\ : std_logic;
signal \N__1825\ : std_logic;
signal \N__1824\ : std_logic;
signal \N__1817\ : std_logic;
signal \N__1816\ : std_logic;
signal \N__1815\ : std_logic;
signal \N__1798\ : std_logic;
signal \N__1797\ : std_logic;
signal \N__1792\ : std_logic;
signal \N__1789\ : std_logic;
signal \N__1786\ : std_logic;
signal \N__1783\ : std_logic;
signal \N__1780\ : std_logic;
signal \N__1777\ : std_logic;
signal \N__1774\ : std_logic;
signal \N__1771\ : std_logic;
signal \N__1770\ : std_logic;
signal \N__1765\ : std_logic;
signal \N__1762\ : std_logic;
signal \N__1761\ : std_logic;
signal \N__1760\ : std_logic;
signal \N__1759\ : std_logic;
signal \N__1758\ : std_logic;
signal \N__1757\ : std_logic;
signal \N__1744\ : std_logic;
signal \N__1741\ : std_logic;
signal \N__1738\ : std_logic;
signal \N__1735\ : std_logic;
signal \N__1734\ : std_logic;
signal \N__1733\ : std_logic;
signal \N__1732\ : std_logic;
signal \N__1731\ : std_logic;
signal \N__1728\ : std_logic;
signal \N__1725\ : std_logic;
signal \N__1722\ : std_logic;
signal \N__1719\ : std_logic;
signal \N__1716\ : std_logic;
signal \N__1711\ : std_logic;
signal \N__1708\ : std_logic;
signal \N__1705\ : std_logic;
signal \N__1702\ : std_logic;
signal \N__1699\ : std_logic;
signal \N__1696\ : std_logic;
signal \N__1693\ : std_logic;
signal \N__1690\ : std_logic;
signal \N__1685\ : std_logic;
signal \N__1680\ : std_logic;
signal \N__1677\ : std_logic;
signal \N__1674\ : std_logic;
signal \N__1671\ : std_logic;
signal \N__1668\ : std_logic;
signal \N__1665\ : std_logic;
signal \N__1662\ : std_logic;
signal \N__1657\ : std_logic;
signal \N__1656\ : std_logic;
signal \N__1655\ : std_logic;
signal \N__1652\ : std_logic;
signal \N__1649\ : std_logic;
signal \N__1646\ : std_logic;
signal \N__1643\ : std_logic;
signal \N__1636\ : std_logic;
signal \N__1635\ : std_logic;
signal \N__1634\ : std_logic;
signal \N__1633\ : std_logic;
signal \N__1632\ : std_logic;
signal \N__1631\ : std_logic;
signal \N__1628\ : std_logic;
signal \N__1625\ : std_logic;
signal \N__1622\ : std_logic;
signal \N__1619\ : std_logic;
signal \N__1616\ : std_logic;
signal \N__1613\ : std_logic;
signal \N__1600\ : std_logic;
signal \N__1599\ : std_logic;
signal \N__1598\ : std_logic;
signal \N__1597\ : std_logic;
signal \N__1596\ : std_logic;
signal \N__1595\ : std_logic;
signal \N__1594\ : std_logic;
signal \N__1593\ : std_logic;
signal \N__1592\ : std_logic;
signal \N__1591\ : std_logic;
signal \N__1588\ : std_logic;
signal \N__1579\ : std_logic;
signal \N__1576\ : std_logic;
signal \N__1573\ : std_logic;
signal \N__1570\ : std_logic;
signal \N__1565\ : std_logic;
signal \N__1552\ : std_logic;
signal \N__1549\ : std_logic;
signal \N__1546\ : std_logic;
signal \N__1543\ : std_logic;
signal \N__1542\ : std_logic;
signal \N__1539\ : std_logic;
signal \N__1536\ : std_logic;
signal \N__1531\ : std_logic;
signal \N__1530\ : std_logic;
signal \N__1529\ : std_logic;
signal \N__1528\ : std_logic;
signal \N__1525\ : std_logic;
signal \N__1522\ : std_logic;
signal \N__1519\ : std_logic;
signal \N__1516\ : std_logic;
signal \N__1507\ : std_logic;
signal \N__1506\ : std_logic;
signal \N__1501\ : std_logic;
signal \N__1500\ : std_logic;
signal \N__1499\ : std_logic;
signal \N__1498\ : std_logic;
signal \N__1497\ : std_logic;
signal \N__1496\ : std_logic;
signal \N__1495\ : std_logic;
signal \N__1492\ : std_logic;
signal \N__1489\ : std_logic;
signal \N__1482\ : std_logic;
signal \N__1479\ : std_logic;
signal \N__1476\ : std_logic;
signal \N__1475\ : std_logic;
signal \N__1474\ : std_logic;
signal \N__1473\ : std_logic;
signal \N__1468\ : std_logic;
signal \N__1463\ : std_logic;
signal \N__1462\ : std_logic;
signal \N__1461\ : std_logic;
signal \N__1458\ : std_logic;
signal \N__1455\ : std_logic;
signal \N__1450\ : std_logic;
signal \N__1445\ : std_logic;
signal \N__1440\ : std_logic;
signal \N__1437\ : std_logic;
signal \N__1426\ : std_logic;
signal \N__1425\ : std_logic;
signal \N__1424\ : std_logic;
signal \N__1423\ : std_logic;
signal \N__1420\ : std_logic;
signal \N__1417\ : std_logic;
signal \N__1414\ : std_logic;
signal \N__1411\ : std_logic;
signal \N__1402\ : std_logic;
signal \N__1399\ : std_logic;
signal \N__1396\ : std_logic;
signal \N__1393\ : std_logic;
signal \N__1390\ : std_logic;
signal \N__1387\ : std_logic;
signal \N__1386\ : std_logic;
signal \N__1383\ : std_logic;
signal \N__1380\ : std_logic;
signal \N__1377\ : std_logic;
signal \N__1374\ : std_logic;
signal \N__1373\ : std_logic;
signal \N__1372\ : std_logic;
signal \N__1371\ : std_logic;
signal \N__1370\ : std_logic;
signal \N__1369\ : std_logic;
signal \N__1366\ : std_logic;
signal \N__1363\ : std_logic;
signal \N__1360\ : std_logic;
signal \N__1357\ : std_logic;
signal \N__1356\ : std_logic;
signal \N__1351\ : std_logic;
signal \N__1348\ : std_logic;
signal \N__1347\ : std_logic;
signal \N__1346\ : std_logic;
signal \N__1345\ : std_logic;
signal \N__1344\ : std_logic;
signal \N__1343\ : std_logic;
signal \N__1340\ : std_logic;
signal \N__1335\ : std_logic;
signal \N__1330\ : std_logic;
signal \N__1327\ : std_logic;
signal \N__1324\ : std_logic;
signal \N__1317\ : std_logic;
signal \N__1314\ : std_logic;
signal \N__1311\ : std_logic;
signal \N__1294\ : std_logic;
signal \N__1293\ : std_logic;
signal \N__1290\ : std_logic;
signal \N__1289\ : std_logic;
signal \N__1288\ : std_logic;
signal \N__1285\ : std_logic;
signal \N__1282\ : std_logic;
signal \N__1277\ : std_logic;
signal \N__1274\ : std_logic;
signal \N__1271\ : std_logic;
signal \N__1268\ : std_logic;
signal \N__1265\ : std_logic;
signal \N__1262\ : std_logic;
signal \N__1259\ : std_logic;
signal \N__1256\ : std_logic;
signal \N__1249\ : std_logic;
signal \N__1246\ : std_logic;
signal \N__1243\ : std_logic;
signal \N__1240\ : std_logic;
signal \N__1237\ : std_logic;
signal \N__1234\ : std_logic;
signal \N__1231\ : std_logic;
signal \N__1228\ : std_logic;
signal \N__1225\ : std_logic;
signal \N__1222\ : std_logic;
signal \N__1219\ : std_logic;
signal \N__1216\ : std_logic;
signal \N__1215\ : std_logic;
signal \N__1212\ : std_logic;
signal \N__1209\ : std_logic;
signal \N__1204\ : std_logic;
signal \N__1201\ : std_logic;
signal \N__1200\ : std_logic;
signal \N__1197\ : std_logic;
signal \N__1194\ : std_logic;
signal \N__1189\ : std_logic;
signal \N__1188\ : std_logic;
signal \N__1185\ : std_logic;
signal \N__1182\ : std_logic;
signal \N__1177\ : std_logic;
signal \N__1174\ : std_logic;
signal \N__1171\ : std_logic;
signal \N__1168\ : std_logic;
signal \N__1165\ : std_logic;
signal \N__1164\ : std_logic;
signal \N__1163\ : std_logic;
signal \N__1156\ : std_logic;
signal \N__1153\ : std_logic;
signal \N__1152\ : std_logic;
signal \N__1151\ : std_logic;
signal \N__1150\ : std_logic;
signal \N__1149\ : std_logic;
signal \N__1144\ : std_logic;
signal \N__1141\ : std_logic;
signal \N__1138\ : std_logic;
signal \N__1135\ : std_logic;
signal \N__1126\ : std_logic;
signal \N__1125\ : std_logic;
signal \N__1122\ : std_logic;
signal \N__1121\ : std_logic;
signal \N__1120\ : std_logic;
signal \N__1117\ : std_logic;
signal \N__1116\ : std_logic;
signal \N__1105\ : std_logic;
signal \N__1102\ : std_logic;
signal \N__1099\ : std_logic;
signal \N__1096\ : std_logic;
signal \N__1095\ : std_logic;
signal \N__1094\ : std_logic;
signal \N__1093\ : std_logic;
signal \N__1088\ : std_logic;
signal \N__1085\ : std_logic;
signal \N__1082\ : std_logic;
signal \N__1075\ : std_logic;
signal \N__1072\ : std_logic;
signal \N__1069\ : std_logic;
signal \N__1066\ : std_logic;
signal \N__1063\ : std_logic;
signal \N__1060\ : std_logic;
signal \N__1057\ : std_logic;
signal \N__1054\ : std_logic;
signal \N__1051\ : std_logic;
signal \N__1048\ : std_logic;
signal \N__1045\ : std_logic;
signal \N__1042\ : std_logic;
signal \N__1039\ : std_logic;
signal \N__1036\ : std_logic;
signal \N__1033\ : std_logic;
signal \N__1030\ : std_logic;
signal \N__1027\ : std_logic;
signal \N__1026\ : std_logic;
signal \N__1025\ : std_logic;
signal \N__1024\ : std_logic;
signal \N__1023\ : std_logic;
signal \N__1022\ : std_logic;
signal \N__1021\ : std_logic;
signal \N__1012\ : std_logic;
signal \N__1009\ : std_logic;
signal \N__1006\ : std_logic;
signal \N__1003\ : std_logic;
signal \N__1000\ : std_logic;
signal \N__997\ : std_logic;
signal \N__988\ : std_logic;
signal \N__987\ : std_logic;
signal \N__982\ : std_logic;
signal \N__979\ : std_logic;
signal \N__976\ : std_logic;
signal \N__973\ : std_logic;
signal \N__970\ : std_logic;
signal \N__967\ : std_logic;
signal \N__966\ : std_logic;
signal \N__963\ : std_logic;
signal \N__960\ : std_logic;
signal \N__957\ : std_logic;
signal \N__952\ : std_logic;
signal \N__949\ : std_logic;
signal \N__946\ : std_logic;
signal \N__943\ : std_logic;
signal \N__940\ : std_logic;
signal \N__937\ : std_logic;
signal \N__934\ : std_logic;
signal \N__931\ : std_logic;
signal \N__928\ : std_logic;
signal \N__927\ : std_logic;
signal \N__926\ : std_logic;
signal \N__923\ : std_logic;
signal \N__918\ : std_logic;
signal \N__913\ : std_logic;
signal \N__910\ : std_logic;
signal \N__909\ : std_logic;
signal \N__904\ : std_logic;
signal \N__901\ : std_logic;
signal \N__898\ : std_logic;
signal \N__895\ : std_logic;
signal \N__892\ : std_logic;
signal \N__889\ : std_logic;
signal \N__886\ : std_logic;
signal \N__883\ : std_logic;
signal \N__880\ : std_logic;
signal \N__877\ : std_logic;
signal \N__874\ : std_logic;
signal \N__871\ : std_logic;
signal \N__870\ : std_logic;
signal \N__867\ : std_logic;
signal \N__864\ : std_logic;
signal \N__859\ : std_logic;
signal \N__856\ : std_logic;
signal \N__853\ : std_logic;
signal \N__850\ : std_logic;
signal \N__847\ : std_logic;
signal \N__844\ : std_logic;
signal \N__841\ : std_logic;
signal \N__838\ : std_logic;
signal \N__835\ : std_logic;
signal \N__832\ : std_logic;
signal \N__829\ : std_logic;
signal \N__826\ : std_logic;
signal \N__823\ : std_logic;
signal \N__820\ : std_logic;
signal \N__817\ : std_logic;
signal \N__814\ : std_logic;
signal \N__811\ : std_logic;
signal \N__808\ : std_logic;
signal \N__805\ : std_logic;
signal \N__802\ : std_logic;
signal \N__799\ : std_logic;
signal \N__796\ : std_logic;
signal \N__793\ : std_logic;
signal \N__790\ : std_logic;
signal \N__787\ : std_logic;
signal \N__784\ : std_logic;
signal \N__781\ : std_logic;
signal \N__778\ : std_logic;
signal \N__775\ : std_logic;
signal \N__772\ : std_logic;
signal \N__769\ : std_logic;
signal \N__766\ : std_logic;
signal \N__763\ : std_logic;
signal \N__760\ : std_logic;
signal \N__757\ : std_logic;
signal \N__754\ : std_logic;
signal \N__751\ : std_logic;
signal \N__748\ : std_logic;
signal \N__745\ : std_logic;
signal \N__742\ : std_logic;
signal \N__739\ : std_logic;
signal \N__736\ : std_logic;
signal \N__733\ : std_logic;
signal \N__730\ : std_logic;
signal \N__727\ : std_logic;
signal \N__724\ : std_logic;
signal \N__721\ : std_logic;
signal \N__718\ : std_logic;
signal \N__715\ : std_logic;
signal \N__712\ : std_logic;
signal \N__709\ : std_logic;
signal \N__706\ : std_logic;
signal \N__703\ : std_logic;
signal \N__700\ : std_logic;
signal \N__697\ : std_logic;
signal \VCCG0\ : std_logic;
signal \I2C2_SCL_in\ : std_logic;
signal filter_out_0 : std_logic;
signal \I2C2_SDAo\ : std_logic;
signal \I2C2_SDAoe\ : std_logic;
signal \I2C2_SCLoe\ : std_logic;
signal \I2C2_SDA_in\ : std_logic;
signal \I2CPWKUP_c_0\ : std_logic;
signal \I2C2_SCLo\ : std_logic;
signal \I2CPIRQ_c_0\ : std_logic;
signal \GNDG0\ : std_logic;
signal \runZ0\ : std_logic;
signal \sb_idleZ0\ : std_logic;
signal \IPDONE_c_i\ : std_logic;
signal \SBSTBi_c\ : std_logic;
signal \strobeZ0\ : std_logic;
signal \hard_SBSTBi\ : std_logic;
signal \N_22_i\ : std_logic;
signal \N_36\ : std_logic;
signal \N_36_cascade_\ : std_logic;
signal \N_12\ : std_logic;
signal \N_37_cascade_\ : std_logic;
signal \N_40_cascade_\ : std_logic;
signal \N_8\ : std_logic;
signal \N_14_i\ : std_logic;
signal \N_16_i\ : std_logic;
signal \N_18_i\ : std_logic;
signal \N_41\ : std_logic;
signal \N_20_i\ : std_logic;
signal \N_40\ : std_logic;
signal \hard_SBADRi_1_0_i_1\ : std_logic;
signal \N_37\ : std_logic;
signal \N_10\ : std_logic;
signal \N_10_cascade_\ : std_logic;
signal \N_5\ : std_logic;
signal \SBWRi_c\ : std_logic;
signal \hard_SBWRi_0_i\ : std_logic;
signal \trans_countZ0Z_0\ : std_logic;
signal trans_count_s_0 : std_logic;
signal \bfn_2_29_0_\ : std_logic;
signal trans_count_cry_0 : std_logic;
signal trans_count_cry_1 : std_logic;
signal trans_count_cry_2 : std_logic;
signal trans_count_cry_3 : std_logic;
signal trans_count_cry_4 : std_logic;
signal \trans_countZ0Z_5\ : std_logic;
signal \N_8_2\ : std_logic;
signal \N_60\ : std_logic;
signal \load_dZ0Z2\ : std_logic;
signal \pupZ0\ : std_logic;
signal \IPLOAD_c\ : std_logic;
signal \load_dZ0Z1\ : std_logic;
signal \SBCLKi_c_g\ : std_logic;
signal \RST_c\ : std_logic;
signal \trans_count_fastZ0Z_0\ : std_logic;
signal \trans_countZ0Z_2\ : std_logic;
signal \trans_countZ0Z_1\ : std_logic;
signal \SB_I2C_INST_LT_RNIJVJAZ0Z1_cascade_\ : std_logic;
signal trans_countlde_i_0_1 : std_logic;
signal \N_24\ : std_logic;
signal \trans_countZ0Z_4\ : std_logic;
signal \startZ0\ : std_logic;
signal \trans_countZ0Z_3\ : std_logic;
signal \IPDONE_i_RNOZ0Z_0\ : std_logic;
signal \IPDONE_c\ : std_logic;
signal \hard01_SBACKO\ : std_logic;
signal \N_32_i\ : std_logic;
signal \_gnd_net_\ : std_logic;

signal \SBCLKi_wire\ : std_logic;
signal \I2CPIRQ_wire\ : std_logic_vector(1 downto 0);
signal \I2CPWKUP_wire\ : std_logic_vector(1 downto 0);
signal \IPDONE_wire\ : std_logic;
signal \IPLOAD_wire\ : std_logic;
signal \SBSTBi_wire\ : std_logic;
signal \RST_wire\ : std_logic;
signal \SBACKo_wire\ : std_logic;
signal \SBWRi_wire\ : std_logic;

begin
    \SBCLKi_wire\ <= SBCLKi;
    I2CPIRQ <= \I2CPIRQ_wire\;
    I2CPWKUP <= \I2CPWKUP_wire\;
    IPDONE <= \IPDONE_wire\;
    \IPLOAD_wire\ <= IPLOAD;
    \SBSTBi_wire\ <= SBSTBi;
    \RST_wire\ <= RST;
    SBACKo <= \SBACKo_wire\;
    \SBWRi_wire\ <= SBWRi;

    \SBCLKi_ibuf_gb_io_preiogbuf\ : PRE_IO_GBUF
    port map (
            PADSIGNALTOGLOBALBUFFER => \N__1925\,
            GLOBALBUFFEROUTPUT => \SBCLKi_c_g\
        );

    \SBCLKi_ibuf_gb_io_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1927\,
            DIN => \N__1926\,
            DOUT => \N__1925\,
            PACKAGEPIN => \SBCLKi_wire\
        );

    \SBCLKi_ibuf_gb_io_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__1927\,
            PADOUT => \N__1926\,
            PADIN => \N__1925\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I2CPIRQ_obuf_1_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1916\,
            DIN => \N__1915\,
            DOUT => \N__1914\,
            PACKAGEPIN => \I2CPIRQ_wire\(1)
        );

    \I2CPIRQ_obuf_1_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__1916\,
            PADOUT => \N__1915\,
            PADIN => \N__1914\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \GNDG0\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I2CPWKUP_obuf_1_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1907\,
            DIN => \N__1906\,
            DOUT => \N__1905\,
            PACKAGEPIN => \I2CPWKUP_wire\(1)
        );

    \I2CPWKUP_obuf_1_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__1907\,
            PADOUT => \N__1906\,
            PADIN => \N__1905\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \GNDG0\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I2C2_SDA_iobuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1898\,
            DIN => \N__1897\,
            DOUT => \N__1896\,
            PACKAGEPIN => I2C2_SDA
        );

    \I2C2_SDA_iobuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__1898\,
            PADOUT => \N__1897\,
            PADIN => \N__1896\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__790\,
            DIN0 => \I2C2_SDA_in\,
            DOUT0 => \N__805\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \IPDONE_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1889\,
            DIN => \N__1888\,
            DOUT => \N__1887\,
            PACKAGEPIN => \IPDONE_wire\
        );

    \IPDONE_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__1889\,
            PADOUT => \N__1888\,
            PADIN => \N__1887\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__1393\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I2C2_SCL_iobuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1880\,
            DIN => \N__1879\,
            DOUT => \N__1878\,
            PACKAGEPIN => I2C2_SCL
        );

    \I2C2_SCL_iobuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "101001"
        )
    port map (
            PADOEN => \N__1880\,
            PADOUT => \N__1879\,
            PADIN => \N__1878\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => \N__775\,
            DIN0 => \I2C2_SCL_in\,
            DOUT0 => \N__727\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \IPLOAD_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1871\,
            DIN => \N__1870\,
            DOUT => \N__1869\,
            PACKAGEPIN => \IPLOAD_wire\
        );

    \IPLOAD_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__1871\,
            PADOUT => \N__1870\,
            PADIN => \N__1869\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \IPLOAD_c\,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I2CPIRQ_obuf_0_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1862\,
            DIN => \N__1861\,
            DOUT => \N__1860\,
            PACKAGEPIN => \I2CPIRQ_wire\(0)
        );

    \I2CPIRQ_obuf_0_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__1862\,
            PADOUT => \N__1861\,
            PADIN => \N__1860\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__712\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \SBSTBi_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1853\,
            DIN => \N__1852\,
            DOUT => \N__1851\,
            PACKAGEPIN => \SBSTBi_wire\
        );

    \SBSTBi_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__1853\,
            PADOUT => \N__1852\,
            PADIN => \N__1851\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \SBSTBi_c\,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \RST_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1844\,
            DIN => \N__1843\,
            DOUT => \N__1842\,
            PACKAGEPIN => \RST_wire\
        );

    \RST_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__1844\,
            PADOUT => \N__1843\,
            PADIN => \N__1842\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \RST_c\,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \SBACKo_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1835\,
            DIN => \N__1834\,
            DOUT => \N__1833\,
            PACKAGEPIN => \SBACKo_wire\
        );

    \SBACKo_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__1835\,
            PADOUT => \N__1834\,
            PADIN => \N__1833\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__1249\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I2CPWKUP_obuf_0_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1826\,
            DIN => \N__1825\,
            DOUT => \N__1824\,
            PACKAGEPIN => \I2CPWKUP_wire\(0)
        );

    \I2CPWKUP_obuf_0_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__1826\,
            PADOUT => \N__1825\,
            PADIN => \N__1824\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__748\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \SBWRi_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1817\,
            DIN => \N__1816\,
            DOUT => \N__1815\,
            PACKAGEPIN => \SBWRi_wire\
        );

    \SBWRi_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__1817\,
            PADOUT => \N__1816\,
            PADIN => \N__1815\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \SBWRi_c\,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I__426\ : InMux
    port map (
            O => \N__1798\,
            I => \N__1792\
        );

    \I__425\ : InMux
    port map (
            O => \N__1797\,
            I => \N__1792\
        );

    \I__424\ : LocalMux
    port map (
            O => \N__1792\,
            I => \pupZ0\
        );

    \I__423\ : InMux
    port map (
            O => \N__1789\,
            I => \N__1786\
        );

    \I__422\ : LocalMux
    port map (
            O => \N__1786\,
            I => \N__1783\
        );

    \I__421\ : Span12Mux_h
    port map (
            O => \N__1783\,
            I => \N__1780\
        );

    \I__420\ : Span12Mux_v
    port map (
            O => \N__1780\,
            I => \N__1777\
        );

    \I__419\ : Span12Mux_v
    port map (
            O => \N__1777\,
            I => \N__1774\
        );

    \I__418\ : Odrv12
    port map (
            O => \N__1774\,
            I => \IPLOAD_c\
        );

    \I__417\ : InMux
    port map (
            O => \N__1771\,
            I => \N__1765\
        );

    \I__416\ : InMux
    port map (
            O => \N__1770\,
            I => \N__1765\
        );

    \I__415\ : LocalMux
    port map (
            O => \N__1765\,
            I => \load_dZ0Z1\
        );

    \I__414\ : ClkMux
    port map (
            O => \N__1762\,
            I => \N__1744\
        );

    \I__413\ : ClkMux
    port map (
            O => \N__1761\,
            I => \N__1744\
        );

    \I__412\ : ClkMux
    port map (
            O => \N__1760\,
            I => \N__1744\
        );

    \I__411\ : ClkMux
    port map (
            O => \N__1759\,
            I => \N__1744\
        );

    \I__410\ : ClkMux
    port map (
            O => \N__1758\,
            I => \N__1744\
        );

    \I__409\ : ClkMux
    port map (
            O => \N__1757\,
            I => \N__1744\
        );

    \I__408\ : GlobalMux
    port map (
            O => \N__1744\,
            I => \N__1741\
        );

    \I__407\ : gio2CtrlBuf
    port map (
            O => \N__1741\,
            I => \SBCLKi_c_g\
        );

    \I__406\ : SRMux
    port map (
            O => \N__1738\,
            I => \N__1735\
        );

    \I__405\ : LocalMux
    port map (
            O => \N__1735\,
            I => \N__1728\
        );

    \I__404\ : SRMux
    port map (
            O => \N__1734\,
            I => \N__1725\
        );

    \I__403\ : SRMux
    port map (
            O => \N__1733\,
            I => \N__1722\
        );

    \I__402\ : SRMux
    port map (
            O => \N__1732\,
            I => \N__1719\
        );

    \I__401\ : SRMux
    port map (
            O => \N__1731\,
            I => \N__1716\
        );

    \I__400\ : Span4Mux_s3_h
    port map (
            O => \N__1728\,
            I => \N__1711\
        );

    \I__399\ : LocalMux
    port map (
            O => \N__1725\,
            I => \N__1711\
        );

    \I__398\ : LocalMux
    port map (
            O => \N__1722\,
            I => \N__1708\
        );

    \I__397\ : LocalMux
    port map (
            O => \N__1719\,
            I => \N__1705\
        );

    \I__396\ : LocalMux
    port map (
            O => \N__1716\,
            I => \N__1702\
        );

    \I__395\ : Span4Mux_v
    port map (
            O => \N__1711\,
            I => \N__1699\
        );

    \I__394\ : Span4Mux_v
    port map (
            O => \N__1708\,
            I => \N__1696\
        );

    \I__393\ : Span4Mux_h
    port map (
            O => \N__1705\,
            I => \N__1693\
        );

    \I__392\ : Span4Mux_h
    port map (
            O => \N__1702\,
            I => \N__1690\
        );

    \I__391\ : Sp12to4
    port map (
            O => \N__1699\,
            I => \N__1685\
        );

    \I__390\ : Sp12to4
    port map (
            O => \N__1696\,
            I => \N__1685\
        );

    \I__389\ : Sp12to4
    port map (
            O => \N__1693\,
            I => \N__1680\
        );

    \I__388\ : Sp12to4
    port map (
            O => \N__1690\,
            I => \N__1680\
        );

    \I__387\ : Span12Mux_h
    port map (
            O => \N__1685\,
            I => \N__1677\
        );

    \I__386\ : Span12Mux_v
    port map (
            O => \N__1680\,
            I => \N__1674\
        );

    \I__385\ : Span12Mux_v
    port map (
            O => \N__1677\,
            I => \N__1671\
        );

    \I__384\ : Span12Mux_v
    port map (
            O => \N__1674\,
            I => \N__1668\
        );

    \I__383\ : Span12Mux_v
    port map (
            O => \N__1671\,
            I => \N__1665\
        );

    \I__382\ : Span12Mux_h
    port map (
            O => \N__1668\,
            I => \N__1662\
        );

    \I__381\ : Odrv12
    port map (
            O => \N__1665\,
            I => \RST_c\
        );

    \I__380\ : Odrv12
    port map (
            O => \N__1662\,
            I => \RST_c\
        );

    \I__379\ : InMux
    port map (
            O => \N__1657\,
            I => \N__1652\
        );

    \I__378\ : InMux
    port map (
            O => \N__1656\,
            I => \N__1649\
        );

    \I__377\ : InMux
    port map (
            O => \N__1655\,
            I => \N__1646\
        );

    \I__376\ : LocalMux
    port map (
            O => \N__1652\,
            I => \N__1643\
        );

    \I__375\ : LocalMux
    port map (
            O => \N__1649\,
            I => \trans_count_fastZ0Z_0\
        );

    \I__374\ : LocalMux
    port map (
            O => \N__1646\,
            I => \trans_count_fastZ0Z_0\
        );

    \I__373\ : Odrv4
    port map (
            O => \N__1643\,
            I => \trans_count_fastZ0Z_0\
        );

    \I__372\ : InMux
    port map (
            O => \N__1636\,
            I => \N__1628\
        );

    \I__371\ : InMux
    port map (
            O => \N__1635\,
            I => \N__1625\
        );

    \I__370\ : InMux
    port map (
            O => \N__1634\,
            I => \N__1622\
        );

    \I__369\ : InMux
    port map (
            O => \N__1633\,
            I => \N__1619\
        );

    \I__368\ : InMux
    port map (
            O => \N__1632\,
            I => \N__1616\
        );

    \I__367\ : InMux
    port map (
            O => \N__1631\,
            I => \N__1613\
        );

    \I__366\ : LocalMux
    port map (
            O => \N__1628\,
            I => \trans_countZ0Z_2\
        );

    \I__365\ : LocalMux
    port map (
            O => \N__1625\,
            I => \trans_countZ0Z_2\
        );

    \I__364\ : LocalMux
    port map (
            O => \N__1622\,
            I => \trans_countZ0Z_2\
        );

    \I__363\ : LocalMux
    port map (
            O => \N__1619\,
            I => \trans_countZ0Z_2\
        );

    \I__362\ : LocalMux
    port map (
            O => \N__1616\,
            I => \trans_countZ0Z_2\
        );

    \I__361\ : LocalMux
    port map (
            O => \N__1613\,
            I => \trans_countZ0Z_2\
        );

    \I__360\ : InMux
    port map (
            O => \N__1600\,
            I => \N__1588\
        );

    \I__359\ : InMux
    port map (
            O => \N__1599\,
            I => \N__1579\
        );

    \I__358\ : InMux
    port map (
            O => \N__1598\,
            I => \N__1579\
        );

    \I__357\ : InMux
    port map (
            O => \N__1597\,
            I => \N__1579\
        );

    \I__356\ : InMux
    port map (
            O => \N__1596\,
            I => \N__1579\
        );

    \I__355\ : InMux
    port map (
            O => \N__1595\,
            I => \N__1576\
        );

    \I__354\ : InMux
    port map (
            O => \N__1594\,
            I => \N__1573\
        );

    \I__353\ : InMux
    port map (
            O => \N__1593\,
            I => \N__1570\
        );

    \I__352\ : InMux
    port map (
            O => \N__1592\,
            I => \N__1565\
        );

    \I__351\ : InMux
    port map (
            O => \N__1591\,
            I => \N__1565\
        );

    \I__350\ : LocalMux
    port map (
            O => \N__1588\,
            I => \trans_countZ0Z_1\
        );

    \I__349\ : LocalMux
    port map (
            O => \N__1579\,
            I => \trans_countZ0Z_1\
        );

    \I__348\ : LocalMux
    port map (
            O => \N__1576\,
            I => \trans_countZ0Z_1\
        );

    \I__347\ : LocalMux
    port map (
            O => \N__1573\,
            I => \trans_countZ0Z_1\
        );

    \I__346\ : LocalMux
    port map (
            O => \N__1570\,
            I => \trans_countZ0Z_1\
        );

    \I__345\ : LocalMux
    port map (
            O => \N__1565\,
            I => \trans_countZ0Z_1\
        );

    \I__344\ : CascadeMux
    port map (
            O => \N__1552\,
            I => \SB_I2C_INST_LT_RNIJVJAZ0Z1_cascade_\
        );

    \I__343\ : InMux
    port map (
            O => \N__1549\,
            I => \N__1546\
        );

    \I__342\ : LocalMux
    port map (
            O => \N__1546\,
            I => trans_countlde_i_0_1
        );

    \I__341\ : CEMux
    port map (
            O => \N__1543\,
            I => \N__1539\
        );

    \I__340\ : CEMux
    port map (
            O => \N__1542\,
            I => \N__1536\
        );

    \I__339\ : LocalMux
    port map (
            O => \N__1539\,
            I => \N_24\
        );

    \I__338\ : LocalMux
    port map (
            O => \N__1536\,
            I => \N_24\
        );

    \I__337\ : InMux
    port map (
            O => \N__1531\,
            I => \N__1525\
        );

    \I__336\ : InMux
    port map (
            O => \N__1530\,
            I => \N__1522\
        );

    \I__335\ : InMux
    port map (
            O => \N__1529\,
            I => \N__1519\
        );

    \I__334\ : InMux
    port map (
            O => \N__1528\,
            I => \N__1516\
        );

    \I__333\ : LocalMux
    port map (
            O => \N__1525\,
            I => \trans_countZ0Z_4\
        );

    \I__332\ : LocalMux
    port map (
            O => \N__1522\,
            I => \trans_countZ0Z_4\
        );

    \I__331\ : LocalMux
    port map (
            O => \N__1519\,
            I => \trans_countZ0Z_4\
        );

    \I__330\ : LocalMux
    port map (
            O => \N__1516\,
            I => \trans_countZ0Z_4\
        );

    \I__329\ : InMux
    port map (
            O => \N__1507\,
            I => \N__1501\
        );

    \I__328\ : InMux
    port map (
            O => \N__1506\,
            I => \N__1501\
        );

    \I__327\ : LocalMux
    port map (
            O => \N__1501\,
            I => \N__1492\
        );

    \I__326\ : InMux
    port map (
            O => \N__1500\,
            I => \N__1489\
        );

    \I__325\ : InMux
    port map (
            O => \N__1499\,
            I => \N__1482\
        );

    \I__324\ : InMux
    port map (
            O => \N__1498\,
            I => \N__1482\
        );

    \I__323\ : InMux
    port map (
            O => \N__1497\,
            I => \N__1482\
        );

    \I__322\ : InMux
    port map (
            O => \N__1496\,
            I => \N__1479\
        );

    \I__321\ : CascadeMux
    port map (
            O => \N__1495\,
            I => \N__1476\
        );

    \I__320\ : Span4Mux_s3_v
    port map (
            O => \N__1492\,
            I => \N__1468\
        );

    \I__319\ : LocalMux
    port map (
            O => \N__1489\,
            I => \N__1468\
        );

    \I__318\ : LocalMux
    port map (
            O => \N__1482\,
            I => \N__1463\
        );

    \I__317\ : LocalMux
    port map (
            O => \N__1479\,
            I => \N__1463\
        );

    \I__316\ : InMux
    port map (
            O => \N__1476\,
            I => \N__1458\
        );

    \I__315\ : InMux
    port map (
            O => \N__1475\,
            I => \N__1455\
        );

    \I__314\ : InMux
    port map (
            O => \N__1474\,
            I => \N__1450\
        );

    \I__313\ : InMux
    port map (
            O => \N__1473\,
            I => \N__1450\
        );

    \I__312\ : Span4Mux_v
    port map (
            O => \N__1468\,
            I => \N__1445\
        );

    \I__311\ : Span4Mux_s3_v
    port map (
            O => \N__1463\,
            I => \N__1445\
        );

    \I__310\ : InMux
    port map (
            O => \N__1462\,
            I => \N__1440\
        );

    \I__309\ : InMux
    port map (
            O => \N__1461\,
            I => \N__1440\
        );

    \I__308\ : LocalMux
    port map (
            O => \N__1458\,
            I => \N__1437\
        );

    \I__307\ : LocalMux
    port map (
            O => \N__1455\,
            I => \startZ0\
        );

    \I__306\ : LocalMux
    port map (
            O => \N__1450\,
            I => \startZ0\
        );

    \I__305\ : Odrv4
    port map (
            O => \N__1445\,
            I => \startZ0\
        );

    \I__304\ : LocalMux
    port map (
            O => \N__1440\,
            I => \startZ0\
        );

    \I__303\ : Odrv4
    port map (
            O => \N__1437\,
            I => \startZ0\
        );

    \I__302\ : InMux
    port map (
            O => \N__1426\,
            I => \N__1420\
        );

    \I__301\ : InMux
    port map (
            O => \N__1425\,
            I => \N__1417\
        );

    \I__300\ : InMux
    port map (
            O => \N__1424\,
            I => \N__1414\
        );

    \I__299\ : InMux
    port map (
            O => \N__1423\,
            I => \N__1411\
        );

    \I__298\ : LocalMux
    port map (
            O => \N__1420\,
            I => \trans_countZ0Z_3\
        );

    \I__297\ : LocalMux
    port map (
            O => \N__1417\,
            I => \trans_countZ0Z_3\
        );

    \I__296\ : LocalMux
    port map (
            O => \N__1414\,
            I => \trans_countZ0Z_3\
        );

    \I__295\ : LocalMux
    port map (
            O => \N__1411\,
            I => \trans_countZ0Z_3\
        );

    \I__294\ : InMux
    port map (
            O => \N__1402\,
            I => \N__1399\
        );

    \I__293\ : LocalMux
    port map (
            O => \N__1399\,
            I => \N__1396\
        );

    \I__292\ : Odrv4
    port map (
            O => \N__1396\,
            I => \IPDONE_i_RNOZ0Z_0\
        );

    \I__291\ : IoInMux
    port map (
            O => \N__1393\,
            I => \N__1390\
        );

    \I__290\ : LocalMux
    port map (
            O => \N__1390\,
            I => \N__1387\
        );

    \I__289\ : Span12Mux_s4_v
    port map (
            O => \N__1387\,
            I => \N__1383\
        );

    \I__288\ : InMux
    port map (
            O => \N__1386\,
            I => \N__1380\
        );

    \I__287\ : Span12Mux_h
    port map (
            O => \N__1383\,
            I => \N__1377\
        );

    \I__286\ : LocalMux
    port map (
            O => \N__1380\,
            I => \N__1374\
        );

    \I__285\ : Span12Mux_v
    port map (
            O => \N__1377\,
            I => \N__1366\
        );

    \I__284\ : Span12Mux_h
    port map (
            O => \N__1374\,
            I => \N__1363\
        );

    \I__283\ : InMux
    port map (
            O => \N__1373\,
            I => \N__1360\
        );

    \I__282\ : CascadeMux
    port map (
            O => \N__1372\,
            I => \N__1357\
        );

    \I__281\ : InMux
    port map (
            O => \N__1371\,
            I => \N__1351\
        );

    \I__280\ : InMux
    port map (
            O => \N__1370\,
            I => \N__1351\
        );

    \I__279\ : InMux
    port map (
            O => \N__1369\,
            I => \N__1348\
        );

    \I__278\ : Span12Mux_v
    port map (
            O => \N__1366\,
            I => \N__1340\
        );

    \I__277\ : Span12Mux_v
    port map (
            O => \N__1363\,
            I => \N__1335\
        );

    \I__276\ : LocalMux
    port map (
            O => \N__1360\,
            I => \N__1335\
        );

    \I__275\ : InMux
    port map (
            O => \N__1357\,
            I => \N__1330\
        );

    \I__274\ : InMux
    port map (
            O => \N__1356\,
            I => \N__1330\
        );

    \I__273\ : LocalMux
    port map (
            O => \N__1351\,
            I => \N__1327\
        );

    \I__272\ : LocalMux
    port map (
            O => \N__1348\,
            I => \N__1324\
        );

    \I__271\ : InMux
    port map (
            O => \N__1347\,
            I => \N__1317\
        );

    \I__270\ : InMux
    port map (
            O => \N__1346\,
            I => \N__1317\
        );

    \I__269\ : InMux
    port map (
            O => \N__1345\,
            I => \N__1317\
        );

    \I__268\ : InMux
    port map (
            O => \N__1344\,
            I => \N__1314\
        );

    \I__267\ : InMux
    port map (
            O => \N__1343\,
            I => \N__1311\
        );

    \I__266\ : Odrv12
    port map (
            O => \N__1340\,
            I => \IPDONE_c\
        );

    \I__265\ : Odrv12
    port map (
            O => \N__1335\,
            I => \IPDONE_c\
        );

    \I__264\ : LocalMux
    port map (
            O => \N__1330\,
            I => \IPDONE_c\
        );

    \I__263\ : Odrv4
    port map (
            O => \N__1327\,
            I => \IPDONE_c\
        );

    \I__262\ : Odrv4
    port map (
            O => \N__1324\,
            I => \IPDONE_c\
        );

    \I__261\ : LocalMux
    port map (
            O => \N__1317\,
            I => \IPDONE_c\
        );

    \I__260\ : LocalMux
    port map (
            O => \N__1314\,
            I => \IPDONE_c\
        );

    \I__259\ : LocalMux
    port map (
            O => \N__1311\,
            I => \IPDONE_c\
        );

    \I__258\ : InMux
    port map (
            O => \N__1294\,
            I => \N__1290\
        );

    \I__257\ : CascadeMux
    port map (
            O => \N__1293\,
            I => \N__1285\
        );

    \I__256\ : LocalMux
    port map (
            O => \N__1290\,
            I => \N__1282\
        );

    \I__255\ : InMux
    port map (
            O => \N__1289\,
            I => \N__1277\
        );

    \I__254\ : InMux
    port map (
            O => \N__1288\,
            I => \N__1277\
        );

    \I__253\ : InMux
    port map (
            O => \N__1285\,
            I => \N__1274\
        );

    \I__252\ : Span12Mux_v
    port map (
            O => \N__1282\,
            I => \N__1271\
        );

    \I__251\ : LocalMux
    port map (
            O => \N__1277\,
            I => \N__1268\
        );

    \I__250\ : LocalMux
    port map (
            O => \N__1274\,
            I => \N__1265\
        );

    \I__249\ : Span12Mux_v
    port map (
            O => \N__1271\,
            I => \N__1262\
        );

    \I__248\ : Span4Mux_v
    port map (
            O => \N__1268\,
            I => \N__1259\
        );

    \I__247\ : Span4Mux_h
    port map (
            O => \N__1265\,
            I => \N__1256\
        );

    \I__246\ : Odrv12
    port map (
            O => \N__1262\,
            I => \hard01_SBACKO\
        );

    \I__245\ : Odrv4
    port map (
            O => \N__1259\,
            I => \hard01_SBACKO\
        );

    \I__244\ : Odrv4
    port map (
            O => \N__1256\,
            I => \hard01_SBACKO\
        );

    \I__243\ : IoInMux
    port map (
            O => \N__1249\,
            I => \N__1246\
        );

    \I__242\ : LocalMux
    port map (
            O => \N__1246\,
            I => \N__1243\
        );

    \I__241\ : Span4Mux_s2_v
    port map (
            O => \N__1243\,
            I => \N__1240\
        );

    \I__240\ : Sp12to4
    port map (
            O => \N__1240\,
            I => \N__1237\
        );

    \I__239\ : Span12Mux_h
    port map (
            O => \N__1237\,
            I => \N__1234\
        );

    \I__238\ : Odrv12
    port map (
            O => \N__1234\,
            I => \N_32_i\
        );

    \I__237\ : InMux
    port map (
            O => \N__1231\,
            I => trans_count_cry_0
        );

    \I__236\ : InMux
    port map (
            O => \N__1228\,
            I => trans_count_cry_1
        );

    \I__235\ : InMux
    port map (
            O => \N__1225\,
            I => trans_count_cry_2
        );

    \I__234\ : InMux
    port map (
            O => \N__1222\,
            I => trans_count_cry_3
        );

    \I__233\ : InMux
    port map (
            O => \N__1219\,
            I => trans_count_cry_4
        );

    \I__232\ : InMux
    port map (
            O => \N__1216\,
            I => \N__1212\
        );

    \I__231\ : InMux
    port map (
            O => \N__1215\,
            I => \N__1209\
        );

    \I__230\ : LocalMux
    port map (
            O => \N__1212\,
            I => \trans_countZ0Z_5\
        );

    \I__229\ : LocalMux
    port map (
            O => \N__1209\,
            I => \trans_countZ0Z_5\
        );

    \I__228\ : CascadeMux
    port map (
            O => \N__1204\,
            I => \N__1201\
        );

    \I__227\ : InMux
    port map (
            O => \N__1201\,
            I => \N__1197\
        );

    \I__226\ : InMux
    port map (
            O => \N__1200\,
            I => \N__1194\
        );

    \I__225\ : LocalMux
    port map (
            O => \N__1197\,
            I => \N_8_2\
        );

    \I__224\ : LocalMux
    port map (
            O => \N__1194\,
            I => \N_8_2\
        );

    \I__223\ : InMux
    port map (
            O => \N__1189\,
            I => \N__1185\
        );

    \I__222\ : InMux
    port map (
            O => \N__1188\,
            I => \N__1182\
        );

    \I__221\ : LocalMux
    port map (
            O => \N__1185\,
            I => \N_60\
        );

    \I__220\ : LocalMux
    port map (
            O => \N__1182\,
            I => \N_60\
        );

    \I__219\ : InMux
    port map (
            O => \N__1177\,
            I => \N__1174\
        );

    \I__218\ : LocalMux
    port map (
            O => \N__1174\,
            I => \load_dZ0Z2\
        );

    \I__217\ : InMux
    port map (
            O => \N__1171\,
            I => \N__1168\
        );

    \I__216\ : LocalMux
    port map (
            O => \N__1168\,
            I => \N_18_i\
        );

    \I__215\ : InMux
    port map (
            O => \N__1165\,
            I => \N__1156\
        );

    \I__214\ : InMux
    port map (
            O => \N__1164\,
            I => \N__1156\
        );

    \I__213\ : InMux
    port map (
            O => \N__1163\,
            I => \N__1156\
        );

    \I__212\ : LocalMux
    port map (
            O => \N__1156\,
            I => \N_41\
        );

    \I__211\ : InMux
    port map (
            O => \N__1153\,
            I => \N__1144\
        );

    \I__210\ : InMux
    port map (
            O => \N__1152\,
            I => \N__1144\
        );

    \I__209\ : InMux
    port map (
            O => \N__1151\,
            I => \N__1141\
        );

    \I__208\ : InMux
    port map (
            O => \N__1150\,
            I => \N__1138\
        );

    \I__207\ : InMux
    port map (
            O => \N__1149\,
            I => \N__1135\
        );

    \I__206\ : LocalMux
    port map (
            O => \N__1144\,
            I => \N_20_i\
        );

    \I__205\ : LocalMux
    port map (
            O => \N__1141\,
            I => \N_20_i\
        );

    \I__204\ : LocalMux
    port map (
            O => \N__1138\,
            I => \N_20_i\
        );

    \I__203\ : LocalMux
    port map (
            O => \N__1135\,
            I => \N_20_i\
        );

    \I__202\ : CascadeMux
    port map (
            O => \N__1126\,
            I => \N__1122\
        );

    \I__201\ : CascadeMux
    port map (
            O => \N__1125\,
            I => \N__1117\
        );

    \I__200\ : InMux
    port map (
            O => \N__1122\,
            I => \N__1105\
        );

    \I__199\ : InMux
    port map (
            O => \N__1121\,
            I => \N__1105\
        );

    \I__198\ : InMux
    port map (
            O => \N__1120\,
            I => \N__1105\
        );

    \I__197\ : InMux
    port map (
            O => \N__1117\,
            I => \N__1105\
        );

    \I__196\ : InMux
    port map (
            O => \N__1116\,
            I => \N__1105\
        );

    \I__195\ : LocalMux
    port map (
            O => \N__1105\,
            I => \N_40\
        );

    \I__194\ : InMux
    port map (
            O => \N__1102\,
            I => \N__1099\
        );

    \I__193\ : LocalMux
    port map (
            O => \N__1099\,
            I => \hard_SBADRi_1_0_i_1\
        );

    \I__192\ : InMux
    port map (
            O => \N__1096\,
            I => \N__1088\
        );

    \I__191\ : InMux
    port map (
            O => \N__1095\,
            I => \N__1088\
        );

    \I__190\ : InMux
    port map (
            O => \N__1094\,
            I => \N__1085\
        );

    \I__189\ : InMux
    port map (
            O => \N__1093\,
            I => \N__1082\
        );

    \I__188\ : LocalMux
    port map (
            O => \N__1088\,
            I => \N_37\
        );

    \I__187\ : LocalMux
    port map (
            O => \N__1085\,
            I => \N_37\
        );

    \I__186\ : LocalMux
    port map (
            O => \N__1082\,
            I => \N_37\
        );

    \I__185\ : InMux
    port map (
            O => \N__1075\,
            I => \N__1072\
        );

    \I__184\ : LocalMux
    port map (
            O => \N__1072\,
            I => \N_10\
        );

    \I__183\ : CascadeMux
    port map (
            O => \N__1069\,
            I => \N_10_cascade_\
        );

    \I__182\ : InMux
    port map (
            O => \N__1066\,
            I => \N__1063\
        );

    \I__181\ : LocalMux
    port map (
            O => \N__1063\,
            I => \N_5\
        );

    \I__180\ : InMux
    port map (
            O => \N__1060\,
            I => \N__1057\
        );

    \I__179\ : LocalMux
    port map (
            O => \N__1057\,
            I => \N__1054\
        );

    \I__178\ : Span4Mux_s1_v
    port map (
            O => \N__1054\,
            I => \N__1051\
        );

    \I__177\ : Sp12to4
    port map (
            O => \N__1051\,
            I => \N__1048\
        );

    \I__176\ : Span12Mux_s7_h
    port map (
            O => \N__1048\,
            I => \N__1045\
        );

    \I__175\ : Span12Mux_v
    port map (
            O => \N__1045\,
            I => \N__1042\
        );

    \I__174\ : Span12Mux_v
    port map (
            O => \N__1042\,
            I => \N__1039\
        );

    \I__173\ : Span12Mux_h
    port map (
            O => \N__1039\,
            I => \N__1036\
        );

    \I__172\ : Odrv12
    port map (
            O => \N__1036\,
            I => \SBWRi_c\
        );

    \I__171\ : InMux
    port map (
            O => \N__1033\,
            I => \N__1030\
        );

    \I__170\ : LocalMux
    port map (
            O => \N__1030\,
            I => \hard_SBWRi_0_i\
        );

    \I__169\ : InMux
    port map (
            O => \N__1027\,
            I => \N__1012\
        );

    \I__168\ : InMux
    port map (
            O => \N__1026\,
            I => \N__1012\
        );

    \I__167\ : InMux
    port map (
            O => \N__1025\,
            I => \N__1012\
        );

    \I__166\ : InMux
    port map (
            O => \N__1024\,
            I => \N__1012\
        );

    \I__165\ : CascadeMux
    port map (
            O => \N__1023\,
            I => \N__1009\
        );

    \I__164\ : InMux
    port map (
            O => \N__1022\,
            I => \N__1006\
        );

    \I__163\ : InMux
    port map (
            O => \N__1021\,
            I => \N__1003\
        );

    \I__162\ : LocalMux
    port map (
            O => \N__1012\,
            I => \N__1000\
        );

    \I__161\ : InMux
    port map (
            O => \N__1009\,
            I => \N__997\
        );

    \I__160\ : LocalMux
    port map (
            O => \N__1006\,
            I => \trans_countZ0Z_0\
        );

    \I__159\ : LocalMux
    port map (
            O => \N__1003\,
            I => \trans_countZ0Z_0\
        );

    \I__158\ : Odrv4
    port map (
            O => \N__1000\,
            I => \trans_countZ0Z_0\
        );

    \I__157\ : LocalMux
    port map (
            O => \N__997\,
            I => \trans_countZ0Z_0\
        );

    \I__156\ : InMux
    port map (
            O => \N__988\,
            I => \N__982\
        );

    \I__155\ : InMux
    port map (
            O => \N__987\,
            I => \N__982\
        );

    \I__154\ : LocalMux
    port map (
            O => \N__982\,
            I => trans_count_s_0
        );

    \I__153\ : InMux
    port map (
            O => \N__979\,
            I => \bfn_2_29_0_\
        );

    \I__152\ : InMux
    port map (
            O => \N__976\,
            I => \N__973\
        );

    \I__151\ : LocalMux
    port map (
            O => \N__973\,
            I => \N_36\
        );

    \I__150\ : CascadeMux
    port map (
            O => \N__970\,
            I => \N_36_cascade_\
        );

    \I__149\ : InMux
    port map (
            O => \N__967\,
            I => \N__963\
        );

    \I__148\ : InMux
    port map (
            O => \N__966\,
            I => \N__960\
        );

    \I__147\ : LocalMux
    port map (
            O => \N__963\,
            I => \N__957\
        );

    \I__146\ : LocalMux
    port map (
            O => \N__960\,
            I => \N_12\
        );

    \I__145\ : Odrv4
    port map (
            O => \N__957\,
            I => \N_12\
        );

    \I__144\ : CascadeMux
    port map (
            O => \N__952\,
            I => \N_37_cascade_\
        );

    \I__143\ : CascadeMux
    port map (
            O => \N__949\,
            I => \N_40_cascade_\
        );

    \I__142\ : InMux
    port map (
            O => \N__946\,
            I => \N__943\
        );

    \I__141\ : LocalMux
    port map (
            O => \N__943\,
            I => \N_8\
        );

    \I__140\ : InMux
    port map (
            O => \N__940\,
            I => \N__937\
        );

    \I__139\ : LocalMux
    port map (
            O => \N__937\,
            I => \N_14_i\
        );

    \I__138\ : InMux
    port map (
            O => \N__934\,
            I => \N__931\
        );

    \I__137\ : LocalMux
    port map (
            O => \N__931\,
            I => \N_16_i\
        );

    \I__136\ : InMux
    port map (
            O => \N__928\,
            I => \N__923\
        );

    \I__135\ : InMux
    port map (
            O => \N__927\,
            I => \N__918\
        );

    \I__134\ : InMux
    port map (
            O => \N__926\,
            I => \N__918\
        );

    \I__133\ : LocalMux
    port map (
            O => \N__923\,
            I => \runZ0\
        );

    \I__132\ : LocalMux
    port map (
            O => \N__918\,
            I => \runZ0\
        );

    \I__131\ : CascadeMux
    port map (
            O => \N__913\,
            I => \N__910\
        );

    \I__130\ : InMux
    port map (
            O => \N__910\,
            I => \N__904\
        );

    \I__129\ : InMux
    port map (
            O => \N__909\,
            I => \N__904\
        );

    \I__128\ : LocalMux
    port map (
            O => \N__904\,
            I => \sb_idleZ0\
        );

    \I__127\ : InMux
    port map (
            O => \N__901\,
            I => \N__898\
        );

    \I__126\ : LocalMux
    port map (
            O => \N__898\,
            I => \N__895\
        );

    \I__125\ : Span4Mux_s2_v
    port map (
            O => \N__895\,
            I => \N__892\
        );

    \I__124\ : Odrv4
    port map (
            O => \N__892\,
            I => \IPDONE_c_i\
        );

    \I__123\ : InMux
    port map (
            O => \N__889\,
            I => \N__886\
        );

    \I__122\ : LocalMux
    port map (
            O => \N__886\,
            I => \N__883\
        );

    \I__121\ : Span12Mux_v
    port map (
            O => \N__883\,
            I => \N__880\
        );

    \I__120\ : Span12Mux_v
    port map (
            O => \N__880\,
            I => \N__877\
        );

    \I__119\ : Span12Mux_h
    port map (
            O => \N__877\,
            I => \N__874\
        );

    \I__118\ : Odrv12
    port map (
            O => \N__874\,
            I => \SBSTBi_c\
        );

    \I__117\ : InMux
    port map (
            O => \N__871\,
            I => \N__867\
        );

    \I__116\ : InMux
    port map (
            O => \N__870\,
            I => \N__864\
        );

    \I__115\ : LocalMux
    port map (
            O => \N__867\,
            I => \strobeZ0\
        );

    \I__114\ : LocalMux
    port map (
            O => \N__864\,
            I => \strobeZ0\
        );

    \I__113\ : InMux
    port map (
            O => \N__859\,
            I => \N__856\
        );

    \I__112\ : LocalMux
    port map (
            O => \N__856\,
            I => \N__853\
        );

    \I__111\ : Span4Mux_s2_v
    port map (
            O => \N__853\,
            I => \N__850\
        );

    \I__110\ : Odrv4
    port map (
            O => \N__850\,
            I => \hard_SBSTBi\
        );

    \I__109\ : InMux
    port map (
            O => \N__847\,
            I => \N__844\
        );

    \I__108\ : LocalMux
    port map (
            O => \N__844\,
            I => \N_22_i\
        );

    \I__107\ : InMux
    port map (
            O => \N__841\,
            I => \N__838\
        );

    \I__106\ : LocalMux
    port map (
            O => \N__838\,
            I => \N__835\
        );

    \I__105\ : Span12Mux_s1_h
    port map (
            O => \N__835\,
            I => \N__832\
        );

    \I__104\ : Span12Mux_h
    port map (
            O => \N__832\,
            I => \N__829\
        );

    \I__103\ : Odrv12
    port map (
            O => \N__829\,
            I => \I2C2_SCL_in\
        );

    \I__102\ : InMux
    port map (
            O => \N__826\,
            I => \N__823\
        );

    \I__101\ : LocalMux
    port map (
            O => \N__823\,
            I => \N__820\
        );

    \I__100\ : Span4Mux_s3_v
    port map (
            O => \N__820\,
            I => \N__817\
        );

    \I__99\ : Sp12to4
    port map (
            O => \N__817\,
            I => \N__814\
        );

    \I__98\ : Span12Mux_s8_h
    port map (
            O => \N__814\,
            I => \N__811\
        );

    \I__97\ : Span12Mux_h
    port map (
            O => \N__811\,
            I => \N__808\
        );

    \I__96\ : Odrv12
    port map (
            O => \N__808\,
            I => filter_out_0
        );

    \I__95\ : IoInMux
    port map (
            O => \N__805\,
            I => \N__802\
        );

    \I__94\ : LocalMux
    port map (
            O => \N__802\,
            I => \N__799\
        );

    \I__93\ : Span12Mux_s4_v
    port map (
            O => \N__799\,
            I => \N__796\
        );

    \I__92\ : Span12Mux_h
    port map (
            O => \N__796\,
            I => \N__793\
        );

    \I__91\ : Odrv12
    port map (
            O => \N__793\,
            I => \I2C2_SDAo\
        );

    \I__90\ : IoInMux
    port map (
            O => \N__790\,
            I => \N__787\
        );

    \I__89\ : LocalMux
    port map (
            O => \N__787\,
            I => \N__784\
        );

    \I__88\ : Span12Mux_s11_v
    port map (
            O => \N__784\,
            I => \N__781\
        );

    \I__87\ : Span12Mux_h
    port map (
            O => \N__781\,
            I => \N__778\
        );

    \I__86\ : Odrv12
    port map (
            O => \N__778\,
            I => \I2C2_SDAoe\
        );

    \I__85\ : IoInMux
    port map (
            O => \N__775\,
            I => \N__772\
        );

    \I__84\ : LocalMux
    port map (
            O => \N__772\,
            I => \N__769\
        );

    \I__83\ : Span12Mux_s9_v
    port map (
            O => \N__769\,
            I => \N__766\
        );

    \I__82\ : Span12Mux_h
    port map (
            O => \N__766\,
            I => \N__763\
        );

    \I__81\ : Odrv12
    port map (
            O => \N__763\,
            I => \I2C2_SCLoe\
        );

    \I__80\ : InMux
    port map (
            O => \N__760\,
            I => \N__757\
        );

    \I__79\ : LocalMux
    port map (
            O => \N__757\,
            I => \N__754\
        );

    \I__78\ : Span12Mux_h
    port map (
            O => \N__754\,
            I => \N__751\
        );

    \I__77\ : Odrv12
    port map (
            O => \N__751\,
            I => \I2C2_SDA_in\
        );

    \I__76\ : IoInMux
    port map (
            O => \N__748\,
            I => \N__745\
        );

    \I__75\ : LocalMux
    port map (
            O => \N__745\,
            I => \N__742\
        );

    \I__74\ : Span12Mux_s9_v
    port map (
            O => \N__742\,
            I => \N__739\
        );

    \I__73\ : Span12Mux_h
    port map (
            O => \N__739\,
            I => \N__736\
        );

    \I__72\ : Span12Mux_h
    port map (
            O => \N__736\,
            I => \N__733\
        );

    \I__71\ : Span12Mux_v
    port map (
            O => \N__733\,
            I => \N__730\
        );

    \I__70\ : Odrv12
    port map (
            O => \N__730\,
            I => \I2CPWKUP_c_0\
        );

    \I__69\ : IoInMux
    port map (
            O => \N__727\,
            I => \N__724\
        );

    \I__68\ : LocalMux
    port map (
            O => \N__724\,
            I => \N__721\
        );

    \I__67\ : Span12Mux_s2_v
    port map (
            O => \N__721\,
            I => \N__718\
        );

    \I__66\ : Span12Mux_h
    port map (
            O => \N__718\,
            I => \N__715\
        );

    \I__65\ : Odrv12
    port map (
            O => \N__715\,
            I => \I2C2_SCLo\
        );

    \I__64\ : IoInMux
    port map (
            O => \N__712\,
            I => \N__709\
        );

    \I__63\ : LocalMux
    port map (
            O => \N__709\,
            I => \N__706\
        );

    \I__62\ : Span4Mux_s0_v
    port map (
            O => \N__706\,
            I => \N__703\
        );

    \I__61\ : Sp12to4
    port map (
            O => \N__703\,
            I => \N__700\
        );

    \I__60\ : Span12Mux_h
    port map (
            O => \N__700\,
            I => \N__697\
        );

    \I__59\ : Odrv12
    port map (
            O => \N__697\,
            I => \I2CPIRQ_c_0\
        );

    \IN_MUX_bfv_2_29_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_2_29_0_\
        );

    \VCC\ : VCC
    port map (
            Y => \VCCG0\
        );

    \GND\ : GND
    port map (
            Y => \GNDG0\
        );

    \filterInst_1\ : SB_FILTER_50NS
    port map (
            FILTEROUT => filter_out_0,
            FILTERIN => \N__841\
        );

    \SB_I2C_INST_LT\ : SB_I2C
    generic map (
            I2C_SLAVE_INIT_ADDR => "0b1000001",
            BUS_ADDR74 => "0b0001"
        )
    port map (
            SBADRI2 => \N__934\,
            SDAOE => \I2C2_SDAoe\,
            SDAI => \N__760\,
            SCLOE => \I2C2_SCLoe\,
            SBDATO7 => OPEN,
            SBDATI0 => \N__847\,
            SBCLKI => \N__1762\,
            SBADRI3 => \N__940\,
            SBDATO0 => OPEN,
            SBDATI1 => \N__966\,
            SBADRI0 => \N__946\,
            SDAO => \I2C2_SDAo\,
            SBDATO1 => OPEN,
            SBDATI6 => \N__1153\,
            SBADRI1 => \N__1102\,
            SBACKO => \hard01_SBACKO\,
            I2CWKUP => \I2CPWKUP_c_0\,
            I2CIRQ => \I2CPIRQ_c_0\,
            SBDATO2 => OPEN,
            SBDATI7 => \N__1066\,
            SBADRI6 => \N__1151\,
            SCLI => \N__826\,
            SBSTBI => \N__859\,
            SBDATO3 => OPEN,
            SBDATI4 => \N__1171\,
            SBADRI7 => \N__1150\,
            SBDATO4 => OPEN,
            SBDATI5 => \N__1075\,
            SBADRI4 => \N__901\,
            SCLO => \I2C2_SCLo\,
            SBDATO5 => OPEN,
            SBDATI2 => \N__1149\,
            SBADRI5 => \N__1152\,
            SBRWI => \N__1033\,
            SBDATO6 => OPEN,
            SBDATI3 => \N__967\
        );

    \GND_Inst\ : GND
    port map (
            Y => \_gnd_net_\
        );

    \sb_idle_LC_1_26_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "0111011100110011"
        )
    port map (
            in0 => \N__909\,
            in1 => \N__927\,
            in2 => \_gnd_net_\,
            in3 => \N__1288\,
            lcout => \sb_idleZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1758\,
            ce => 'H',
            sr => \N__1733\
        );

    \run_LC_1_26_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1100110011101110"
        )
    port map (
            in0 => \N__926\,
            in1 => \N__1500\,
            in2 => \_gnd_net_\,
            in3 => \N__1373\,
            lcout => \runZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1758\,
            ce => 'H',
            sr => \N__1733\
        );

    \strobe_LC_1_26_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1110000011101000"
        )
    port map (
            in0 => \N__928\,
            in1 => \N__871\,
            in2 => \N__913\,
            in3 => \N__1289\,
            lcout => \strobeZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1758\,
            ce => 'H',
            sr => \N__1733\
        );

    \SB_I2C_INST_LT_RNO_1_LC_1_27_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1370\,
            lcout => \IPDONE_c_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \SB_I2C_INST_LT_RNO_0_LC_1_27_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1101110110001000"
        )
    port map (
            in0 => \N__1371\,
            in1 => \N__889\,
            in2 => \_gnd_net_\,
            in3 => \N__870\,
            lcout => \hard_SBSTBi\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \SB_I2C_INST_LT_RNO_8_LC_1_28_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000111100001010"
        )
    port map (
            in0 => \N__1096\,
            in1 => \_gnd_net_\,
            in2 => \N__1372\,
            in3 => \N__976\,
            lcout => \N_22_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \trans_count_RNIB1T71_0_LC_1_28_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110111010001000"
        )
    port map (
            in0 => \N__1021\,
            in1 => \N__1633\,
            in2 => \_gnd_net_\,
            in3 => \N__1594\,
            lcout => \N_36\,
            ltout => \N_36_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \IPDONE_i_RNI98H42_LC_1_28_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1356\,
            in2 => \N__970\,
            in3 => \N__1095\,
            lcout => \N_12\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \trans_count_RNINGJQ_3_LC_1_29_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1528\,
            in2 => \_gnd_net_\,
            in3 => \N__1423\,
            lcout => \N_37\,
            ltout => \N_37_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \trans_count_RNIH7T71_2_LC_1_29_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111110000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__952\,
            in3 => \N__1631\,
            lcout => \N_40\,
            ltout => \N_40_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \SB_I2C_INST_LT_RNO_5_LC_1_29_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111101111111110"
        )
    port map (
            in0 => \N__1200\,
            in1 => \N__1022\,
            in2 => \N__949\,
            in3 => \N__1592\,
            lcout => \N_8\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \IPDONE_i_LC_1_29_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011001110101010"
        )
    port map (
            in0 => \N__1402\,
            in1 => \N__1496\,
            in2 => \_gnd_net_\,
            in3 => \N__1189\,
            lcout => \IPDONE_c\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1761\,
            ce => 'H',
            sr => \N__1732\
        );

    \trans_count_RNIFH7N1_0_LC_1_29_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101010101011"
        )
    port map (
            in0 => \N__1343\,
            in1 => \N__1591\,
            in2 => \N__1023\,
            in3 => \N__1093\,
            lcout => \N_41\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \SB_I2C_INST_LT_RNO_2_LC_1_30_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101010001010001"
        )
    port map (
            in0 => \N__1346\,
            in1 => \N__1596\,
            in2 => \N__1125\,
            in3 => \N__1026\,
            lcout => \N_14_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \SB_I2C_INST_LT_RNO_3_LC_1_30_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011011101"
        )
    port map (
            in0 => \N__1024\,
            in1 => \N__1116\,
            in2 => \_gnd_net_\,
            in3 => \N__1163\,
            lcout => \N_16_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \SB_I2C_INST_LT_RNO_7_LC_1_30_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101000101010001"
        )
    port map (
            in0 => \N__1165\,
            in1 => \N__1598\,
            in2 => \N__1126\,
            in3 => \_gnd_net_\,
            lcout => \N_18_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \trans_count_RNI0P4V2_0_LC_1_30_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1121\,
            in2 => \_gnd_net_\,
            in3 => \N__1164\,
            lcout => \N_20_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \SB_I2C_INST_LT_RNO_4_LC_1_30_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__1120\,
            in1 => \N__1597\,
            in2 => \N__1204\,
            in3 => \N__1025\,
            lcout => \hard_SBADRi_1_0_i_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \IPDONE_i_RNIMI422_LC_1_30_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111101110"
        )
    port map (
            in0 => \N__1094\,
            in1 => \N__1345\,
            in2 => \_gnd_net_\,
            in3 => \N__1188\,
            lcout => \N_10\,
            ltout => \N_10_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \SB_I2C_INST_LT_RNO_6_LC_1_30_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111000011110001"
        )
    port map (
            in0 => \N__1635\,
            in1 => \N__1599\,
            in2 => \N__1069\,
            in3 => \N__1027\,
            lcout => \N_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \SB_I2C_INST_LT_RNO_LC_1_30_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101011111111"
        )
    port map (
            in0 => \N__1060\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1347\,
            lcout => \hard_SBWRi_0_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \trans_count_fast_0_LC_2_28_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0000000011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__988\,
            in2 => \_gnd_net_\,
            in3 => \N__1474\,
            lcout => \trans_count_fastZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1759\,
            ce => \N__1542\,
            sr => \N__1734\
        );

    \trans_count_0_LC_2_28_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0000000011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__987\,
            in2 => \_gnd_net_\,
            in3 => \N__1473\,
            lcout => \trans_countZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1759\,
            ce => \N__1542\,
            sr => \N__1734\
        );

    \trans_count_fast_RNI5VSA_0_LC_2_29_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1656\,
            in2 => \_gnd_net_\,
            in3 => \N__979\,
            lcout => trans_count_s_0,
            ltout => OPEN,
            carryin => \bfn_2_29_0_\,
            carryout => trans_count_cry_0,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \trans_count_1_LC_2_29_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__1506\,
            in1 => \N__1600\,
            in2 => \_gnd_net_\,
            in3 => \N__1231\,
            lcout => \trans_countZ0Z_1\,
            ltout => OPEN,
            carryin => trans_count_cry_0,
            carryout => trans_count_cry_1,
            clk => \N__1760\,
            ce => \N__1543\,
            sr => \N__1738\
        );

    \trans_count_2_LC_2_29_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__1497\,
            in1 => \N__1636\,
            in2 => \_gnd_net_\,
            in3 => \N__1228\,
            lcout => \trans_countZ0Z_2\,
            ltout => OPEN,
            carryin => trans_count_cry_1,
            carryout => trans_count_cry_2,
            clk => \N__1760\,
            ce => \N__1543\,
            sr => \N__1738\
        );

    \trans_count_3_LC_2_29_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__1507\,
            in1 => \N__1426\,
            in2 => \_gnd_net_\,
            in3 => \N__1225\,
            lcout => \trans_countZ0Z_3\,
            ltout => OPEN,
            carryin => trans_count_cry_2,
            carryout => trans_count_cry_3,
            clk => \N__1760\,
            ce => \N__1543\,
            sr => \N__1738\
        );

    \trans_count_4_LC_2_29_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000101000100"
        )
    port map (
            in0 => \N__1498\,
            in1 => \N__1531\,
            in2 => \_gnd_net_\,
            in3 => \N__1222\,
            lcout => \trans_countZ0Z_4\,
            ltout => OPEN,
            carryin => trans_count_cry_3,
            carryout => trans_count_cry_4,
            clk => \N__1760\,
            ce => \N__1543\,
            sr => \N__1738\
        );

    \trans_count_5_LC_2_29_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0001000100100010"
        )
    port map (
            in0 => \N__1216\,
            in1 => \N__1499\,
            in2 => \_gnd_net_\,
            in3 => \N__1219\,
            lcout => \trans_countZ0Z_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1760\,
            ce => \N__1543\,
            sr => \N__1738\
        );

    \trans_count_RNI4GAF_5_LC_2_30_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1215\,
            in2 => \_gnd_net_\,
            in3 => \N__1344\,
            lcout => \N_8_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \trans_count_fast_RNIOBG51_0_LC_2_30_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100110010001000"
        )
    port map (
            in0 => \N__1593\,
            in1 => \N__1632\,
            in2 => \_gnd_net_\,
            in3 => \N__1657\,
            lcout => \N_60\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \load_d2_LC_3_27_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1771\,
            lcout => \load_dZ0Z2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1757\,
            ce => 'H',
            sr => \N__1731\
        );

    \start_LC_3_27_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "0011001100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1177\,
            in2 => \_gnd_net_\,
            in3 => \N__1770\,
            lcout => \startZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1757\,
            ce => 'H',
            sr => \N__1731\
        );

    \pup_LC_3_27_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1011",
            LUT_INIT => "0000000011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1797\,
            in2 => \_gnd_net_\,
            in3 => \N__1475\,
            lcout => \pupZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1757\,
            ce => 'H',
            sr => \N__1731\
        );

    \load_d1_LC_3_27_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1010",
            LUT_INIT => "1111111110101010"
        )
    port map (
            in0 => \N__1798\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1789\,
            lcout => \load_dZ0Z1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1757\,
            ce => 'H',
            sr => \N__1731\
        );

    \trans_count_fast_RNIOBG51_0_0_LC_3_28_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0011001101110111"
        )
    port map (
            in0 => \N__1655\,
            in1 => \N__1634\,
            in2 => \_gnd_net_\,
            in3 => \N__1595\,
            lcout => trans_countlde_i_0_1,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \SB_I2C_INST_LT_RNIJVJA1_LC_3_28_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101010111010"
        )
    port map (
            in0 => \N__1461\,
            in1 => \N__1530\,
            in2 => \N__1293\,
            in3 => \N__1425\,
            lcout => OPEN,
            ltout => \SB_I2C_INST_LT_RNIJVJAZ0Z1_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \start_RNIPOMK2_LC_3_28_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111000011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1462\,
            in2 => \N__1552\,
            in3 => \N__1549\,
            lcout => \N_24\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \IPDONE_i_RNO_0_LC_3_29_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000111100001110"
        )
    port map (
            in0 => \N__1369\,
            in1 => \N__1529\,
            in2 => \N__1495\,
            in3 => \N__1424\,
            lcout => \IPDONE_i_RNOZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \SBACKo_obuf_RNO_LC_10_11_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101000000000"
        )
    port map (
            in0 => \N__1386\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1294\,
            lcout => \N_32_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );
end \INTERFACE\;
