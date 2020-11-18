--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Tue Nov 17 20:02:59 2020
--Host        : DESKTOP-KK7SPE7 running 64-bit major release  (build 9200)
--Command     : generate_target spi_pl_wrapper.bd
--Design      : spi_pl_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_pl_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    SPI0_MISO_I : in STD_LOGIC;
    SPI0_MOSI_O : out STD_LOGIC;
    SPI0_SCLK_O : out STD_LOGIC;
    SPI0_SS_O : out STD_LOGIC;
    SPI1_MISO_I : in STD_LOGIC;
    SPI1_MOSI_O : out STD_LOGIC;
    SPI1_SCLK_O : out STD_LOGIC;
    SPI1_SS_O : out STD_LOGIC;
    can_phy_rx_0 : in STD_LOGIC;
    can_phy_rx_1 : in STD_LOGIC;
    can_phy_rx_2 : in STD_LOGIC;
    can_phy_tx_0 : out STD_LOGIC;
    can_phy_tx_1 : out STD_LOGIC;
    can_phy_tx_2 : out STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_i_1 : in STD_LOGIC;
    io0_i_2 : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_o_1 : out STD_LOGIC;
    io0_o_2 : out STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_o_1 : out STD_LOGIC;
    sck_o_2 : out STD_LOGIC;
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o_2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end spi_pl_wrapper;

architecture STRUCTURE of spi_pl_wrapper is
  component spi_pl is
  port (
    sck_o : out STD_LOGIC;
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    io0_o : out STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_i_1 : in STD_LOGIC;
    io0_o_1 : out STD_LOGIC;
    sck_o_1 : out STD_LOGIC;
    ss_o_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI1_SCLK_O : out STD_LOGIC;
    SPI1_MOSI_O : out STD_LOGIC;
    SPI1_MISO_I : in STD_LOGIC;
    SPI1_SS_O : out STD_LOGIC;
    io0_i_2 : in STD_LOGIC;
    io0_o_2 : out STD_LOGIC;
    sck_o_2 : out STD_LOGIC;
    can_phy_rx_0 : in STD_LOGIC;
    can_phy_tx_0 : out STD_LOGIC;
    can_phy_tx_1 : out STD_LOGIC;
    can_phy_rx_1 : in STD_LOGIC;
    can_phy_rx_2 : in STD_LOGIC;
    can_phy_tx_2 : out STD_LOGIC;
    ss_o_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    SPI0_SCLK_O : out STD_LOGIC;
    SPI0_MOSI_O : out STD_LOGIC;
    SPI0_MISO_I : in STD_LOGIC;
    SPI0_SS_O : out STD_LOGIC
  );
  end component spi_pl;
begin
spi_pl_i: component spi_pl
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      SPI0_MISO_I => SPI0_MISO_I,
      SPI0_MOSI_O => SPI0_MOSI_O,
      SPI0_SCLK_O => SPI0_SCLK_O,
      SPI0_SS_O => SPI0_SS_O,
      SPI1_MISO_I => SPI1_MISO_I,
      SPI1_MOSI_O => SPI1_MOSI_O,
      SPI1_SCLK_O => SPI1_SCLK_O,
      SPI1_SS_O => SPI1_SS_O,
      can_phy_rx_0 => can_phy_rx_0,
      can_phy_rx_1 => can_phy_rx_1,
      can_phy_rx_2 => can_phy_rx_2,
      can_phy_tx_0 => can_phy_tx_0,
      can_phy_tx_1 => can_phy_tx_1,
      can_phy_tx_2 => can_phy_tx_2,
      io0_i => io0_i,
      io0_i_1 => io0_i_1,
      io0_i_2 => io0_i_2,
      io0_o => io0_o,
      io0_o_1 => io0_o_1,
      io0_o_2 => io0_o_2,
      sck_o => sck_o,
      sck_o_1 => sck_o_1,
      sck_o_2 => sck_o_2,
      ss_o(0) => ss_o(0),
      ss_o_1(0) => ss_o_1(0),
      ss_o_2(0) => ss_o_2(0)
    );
end STRUCTURE;
