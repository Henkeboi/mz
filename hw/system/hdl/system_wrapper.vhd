--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Fri Oct 30 19:46:41 2020
--Host        : DESKTOP-KK7SPE7 running 64-bit major release  (build 9200)
--Command     : generate_target spi_pl_wrapper.bd
--Design      : ams_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ams_wrapper is
  port (
    CAN_0_rx : in STD_LOGIC;
    CAN_0_tx : out STD_LOGIC;
    CAN_1_rx : in STD_LOGIC;
    CAN_1_tx : out STD_LOGIC;
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
    SPI1_MISO_I : in STD_LOGIC;
    SPI1_MOSI_O : out STD_LOGIC;
    SPI1_SCLK_O : out STD_LOGIC;
    SPI1_SS_O : out STD_LOGIC;
    SPI_0_io0_io : inout STD_LOGIC;
    SPI_0_io1_io : inout STD_LOGIC;
    SPI_0_sck_io : inout STD_LOGIC;
    SPI_0_ss1_o : out STD_LOGIC;
    SPI_0_ss2_o : out STD_LOGIC;
    SPI_0_ss_io : inout STD_LOGIC;
    can_phy_rx : in STD_LOGIC;
    can_phy_tx : out STD_LOGIC;
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
end ams_wrapper;

architecture STRUCTURE of ams_wrapper is
  component ams is
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
    ss_o_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    io0_o_2 : out STD_LOGIC;
    sck_o_2 : out STD_LOGIC;
    can_phy_rx : in STD_LOGIC;
    can_phy_tx : out STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
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
    SPI_0_sck_i : in STD_LOGIC;
    SPI_0_sck_o : out STD_LOGIC;
    SPI_0_sck_t : out STD_LOGIC;
    SPI_0_io0_i : in STD_LOGIC;
    SPI_0_io0_o : out STD_LOGIC;
    SPI_0_io0_t : out STD_LOGIC;
    SPI_0_io1_i : in STD_LOGIC;
    SPI_0_io1_o : out STD_LOGIC;
    SPI_0_io1_t : out STD_LOGIC;
    SPI_0_ss_i : in STD_LOGIC;
    SPI_0_ss_o : out STD_LOGIC;
    SPI_0_ss1_o : out STD_LOGIC;
    SPI_0_ss2_o : out STD_LOGIC;
    SPI_0_ss_t : out STD_LOGIC;
    CAN_0_tx : out STD_LOGIC;
    CAN_0_rx : in STD_LOGIC;
    CAN_1_tx : out STD_LOGIC;
    CAN_1_rx : in STD_LOGIC
  );
  end component ams;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal SPI_0_io0_i : STD_LOGIC;
  signal SPI_0_io0_o : STD_LOGIC;
  signal SPI_0_io0_t : STD_LOGIC;
  signal SPI_0_io1_i : STD_LOGIC;
  signal SPI_0_io1_o : STD_LOGIC;
  signal SPI_0_io1_t : STD_LOGIC;
  signal SPI_0_sck_i : STD_LOGIC;
  signal SPI_0_sck_o : STD_LOGIC;
  signal SPI_0_sck_t : STD_LOGIC;
  signal SPI_0_ss_i : STD_LOGIC;
  signal SPI_0_ss_o : STD_LOGIC;
  signal SPI_0_ss_t : STD_LOGIC;
begin
SPI_0_io0_iobuf: component IOBUF
     port map (
      I => SPI_0_io0_o,
      IO => SPI_0_io0_io,
      O => SPI_0_io0_i,
      T => SPI_0_io0_t
    );
SPI_0_io1_iobuf: component IOBUF
     port map (
      I => SPI_0_io1_o,
      IO => SPI_0_io1_io,
      O => SPI_0_io1_i,
      T => SPI_0_io1_t
    );
SPI_0_sck_iobuf: component IOBUF
     port map (
      I => SPI_0_sck_o,
      IO => SPI_0_sck_io,
      O => SPI_0_sck_i,
      T => SPI_0_sck_t
    );
SPI_0_ss_iobuf: component IOBUF
     port map (
      I => SPI_0_ss_o,
      IO => SPI_0_ss_io,
      O => SPI_0_ss_i,
      T => SPI_0_ss_t
    );
spi_pl_i: component ams
     port map (
      CAN_0_rx => CAN_0_rx,
      CAN_0_tx => CAN_0_tx,
      CAN_1_rx => CAN_1_rx,
      CAN_1_tx => CAN_1_tx,
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
      SPI1_MISO_I => SPI1_MISO_I,
      SPI1_MOSI_O => SPI1_MOSI_O,
      SPI1_SCLK_O => SPI1_SCLK_O,
      SPI1_SS_O => SPI1_SS_O,
      SPI_0_io0_i => SPI_0_io0_i,
      SPI_0_io0_o => SPI_0_io0_o,
      SPI_0_io0_t => SPI_0_io0_t,
      SPI_0_io1_i => SPI_0_io1_i,
      SPI_0_io1_o => SPI_0_io1_o,
      SPI_0_io1_t => SPI_0_io1_t,
      SPI_0_sck_i => SPI_0_sck_i,
      SPI_0_sck_o => SPI_0_sck_o,
      SPI_0_sck_t => SPI_0_sck_t,
      SPI_0_ss1_o => SPI_0_ss1_o,
      SPI_0_ss2_o => SPI_0_ss2_o,
      SPI_0_ss_i => SPI_0_ss_i,
      SPI_0_ss_o => SPI_0_ss_o,
      SPI_0_ss_t => SPI_0_ss_t,
      can_phy_rx => can_phy_rx,
      can_phy_tx => can_phy_tx,
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
