--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Fri Oct  9 11:02:09 2020
--Host        : DESKTOP-2SM91GV running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    clk_1khz_out : out STD_LOGIC;
    ddr3_sdram_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    ddr3_sdram_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_sdram_cas_n : out STD_LOGIC;
    ddr3_sdram_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_sdram_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr3_sdram_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_sdram_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_sdram_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ras_n : out STD_LOGIC;
    ddr3_sdram_reset_n : out STD_LOGIC;
    ddr3_sdram_we_n : out STD_LOGIC;
    dip_switches_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    enc_n : out STD_LOGIC;
    enc_p : out STD_LOGIC;
    eth_mdio_mdc_mdc : out STD_LOGIC;
    eth_mdio_mdc_mdio_io : inout STD_LOGIC;
    eth_mii_col : in STD_LOGIC;
    eth_mii_crs : in STD_LOGIC;
    eth_mii_rst_n : out STD_LOGIC;
    eth_mii_rx_clk : in STD_LOGIC;
    eth_mii_rx_dv : in STD_LOGIC;
    eth_mii_rx_er : in STD_LOGIC;
    eth_mii_rxd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    eth_mii_tx_clk : in STD_LOGIC;
    eth_mii_tx_en : out STD_LOGIC;
    eth_mii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    eth_ref_clk : out STD_LOGIC;
    led_4bits_tri_io : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    push_buttons_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    rgb_led_tri_io : inout STD_LOGIC_VECTOR ( 11 downto 0 );
    spi_io0_io : inout STD_LOGIC;
    spi_io1_io : inout STD_LOGIC;
    spi_sck_io : inout STD_LOGIC;
    spi_ss_io : inout STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_clock : in STD_LOGIC;
    eth_ref_clk : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_1khz_out : out STD_LOGIC;
    enc_n : out STD_LOGIC;
    enc_p : out STD_LOGIC;
    eth_mii_col : in STD_LOGIC;
    eth_mii_crs : in STD_LOGIC;
    eth_mii_rst_n : out STD_LOGIC;
    eth_mii_rx_clk : in STD_LOGIC;
    eth_mii_rx_dv : in STD_LOGIC;
    eth_mii_rx_er : in STD_LOGIC;
    eth_mii_rxd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    eth_mii_tx_clk : in STD_LOGIC;
    eth_mii_tx_en : out STD_LOGIC;
    eth_mii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr3_sdram_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr3_sdram_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_sdram_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_sdram_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    ddr3_sdram_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_sdram_ras_n : out STD_LOGIC;
    ddr3_sdram_cas_n : out STD_LOGIC;
    ddr3_sdram_we_n : out STD_LOGIC;
    ddr3_sdram_reset_n : out STD_LOGIC;
    ddr3_sdram_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_sdram_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    eth_mdio_mdc_mdc : out STD_LOGIC;
    eth_mdio_mdc_mdio_i : in STD_LOGIC;
    eth_mdio_mdc_mdio_o : out STD_LOGIC;
    eth_mdio_mdc_mdio_t : out STD_LOGIC;
    push_buttons_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dip_switches_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led_4bits_tri_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgb_led_tri_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rgb_led_tri_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rgb_led_tri_t : out STD_LOGIC_VECTOR ( 11 downto 0 );
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    spi_io0_i : in STD_LOGIC;
    spi_io0_o : out STD_LOGIC;
    spi_io0_t : out STD_LOGIC;
    spi_io1_i : in STD_LOGIC;
    spi_io1_o : out STD_LOGIC;
    spi_io1_t : out STD_LOGIC;
    spi_sck_i : in STD_LOGIC;
    spi_sck_o : out STD_LOGIC;
    spi_sck_t : out STD_LOGIC;
    spi_ss_i : in STD_LOGIC;
    spi_ss_o : out STD_LOGIC;
    spi_ss_t : out STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal eth_mdio_mdc_mdio_i : STD_LOGIC;
  signal eth_mdio_mdc_mdio_o : STD_LOGIC;
  signal eth_mdio_mdc_mdio_t : STD_LOGIC;
  signal led_4bits_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal led_4bits_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal led_4bits_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal led_4bits_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal led_4bits_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal led_4bits_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal led_4bits_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal led_4bits_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal led_4bits_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal led_4bits_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal led_4bits_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal led_4bits_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal led_4bits_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal led_4bits_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal led_4bits_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal led_4bits_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rgb_led_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rgb_led_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rgb_led_tri_i_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal rgb_led_tri_i_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal rgb_led_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal rgb_led_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rgb_led_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal rgb_led_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal rgb_led_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal rgb_led_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal rgb_led_tri_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rgb_led_tri_i_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal rgb_led_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rgb_led_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rgb_led_tri_io_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal rgb_led_tri_io_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal rgb_led_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal rgb_led_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rgb_led_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal rgb_led_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal rgb_led_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal rgb_led_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal rgb_led_tri_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rgb_led_tri_io_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal rgb_led_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rgb_led_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rgb_led_tri_o_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal rgb_led_tri_o_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal rgb_led_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal rgb_led_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rgb_led_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal rgb_led_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal rgb_led_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal rgb_led_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal rgb_led_tri_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rgb_led_tri_o_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal rgb_led_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rgb_led_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rgb_led_tri_t_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal rgb_led_tri_t_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal rgb_led_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal rgb_led_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rgb_led_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal rgb_led_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal rgb_led_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal rgb_led_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal rgb_led_tri_t_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rgb_led_tri_t_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal spi_io0_i : STD_LOGIC;
  signal spi_io0_o : STD_LOGIC;
  signal spi_io0_t : STD_LOGIC;
  signal spi_io1_i : STD_LOGIC;
  signal spi_io1_o : STD_LOGIC;
  signal spi_io1_t : STD_LOGIC;
  signal spi_sck_i : STD_LOGIC;
  signal spi_sck_o : STD_LOGIC;
  signal spi_sck_t : STD_LOGIC;
  signal spi_ss_i : STD_LOGIC;
  signal spi_ss_o : STD_LOGIC;
  signal spi_ss_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      clk_1khz_out => clk_1khz_out,
      ddr3_sdram_addr(13 downto 0) => ddr3_sdram_addr(13 downto 0),
      ddr3_sdram_ba(2 downto 0) => ddr3_sdram_ba(2 downto 0),
      ddr3_sdram_cas_n => ddr3_sdram_cas_n,
      ddr3_sdram_ck_n(0) => ddr3_sdram_ck_n(0),
      ddr3_sdram_ck_p(0) => ddr3_sdram_ck_p(0),
      ddr3_sdram_cke(0) => ddr3_sdram_cke(0),
      ddr3_sdram_cs_n(0) => ddr3_sdram_cs_n(0),
      ddr3_sdram_dm(1 downto 0) => ddr3_sdram_dm(1 downto 0),
      ddr3_sdram_dq(15 downto 0) => ddr3_sdram_dq(15 downto 0),
      ddr3_sdram_dqs_n(1 downto 0) => ddr3_sdram_dqs_n(1 downto 0),
      ddr3_sdram_dqs_p(1 downto 0) => ddr3_sdram_dqs_p(1 downto 0),
      ddr3_sdram_odt(0) => ddr3_sdram_odt(0),
      ddr3_sdram_ras_n => ddr3_sdram_ras_n,
      ddr3_sdram_reset_n => ddr3_sdram_reset_n,
      ddr3_sdram_we_n => ddr3_sdram_we_n,
      dip_switches_4bits_tri_i(3 downto 0) => dip_switches_4bits_tri_i(3 downto 0),
      enc_n => enc_n,
      enc_p => enc_p,
      eth_mdio_mdc_mdc => eth_mdio_mdc_mdc,
      eth_mdio_mdc_mdio_i => eth_mdio_mdc_mdio_i,
      eth_mdio_mdc_mdio_o => eth_mdio_mdc_mdio_o,
      eth_mdio_mdc_mdio_t => eth_mdio_mdc_mdio_t,
      eth_mii_col => eth_mii_col,
      eth_mii_crs => eth_mii_crs,
      eth_mii_rst_n => eth_mii_rst_n,
      eth_mii_rx_clk => eth_mii_rx_clk,
      eth_mii_rx_dv => eth_mii_rx_dv,
      eth_mii_rx_er => eth_mii_rx_er,
      eth_mii_rxd(3 downto 0) => eth_mii_rxd(3 downto 0),
      eth_mii_tx_clk => eth_mii_tx_clk,
      eth_mii_tx_en => eth_mii_tx_en,
      eth_mii_txd(3 downto 0) => eth_mii_txd(3 downto 0),
      eth_ref_clk => eth_ref_clk,
      led_4bits_tri_i(3) => led_4bits_tri_i_3(3),
      led_4bits_tri_i(2) => led_4bits_tri_i_2(2),
      led_4bits_tri_i(1) => led_4bits_tri_i_1(1),
      led_4bits_tri_i(0) => led_4bits_tri_i_0(0),
      led_4bits_tri_o(3) => led_4bits_tri_o_3(3),
      led_4bits_tri_o(2) => led_4bits_tri_o_2(2),
      led_4bits_tri_o(1) => led_4bits_tri_o_1(1),
      led_4bits_tri_o(0) => led_4bits_tri_o_0(0),
      led_4bits_tri_t(3) => led_4bits_tri_t_3(3),
      led_4bits_tri_t(2) => led_4bits_tri_t_2(2),
      led_4bits_tri_t(1) => led_4bits_tri_t_1(1),
      led_4bits_tri_t(0) => led_4bits_tri_t_0(0),
      push_buttons_4bits_tri_i(3 downto 0) => push_buttons_4bits_tri_i(3 downto 0),
      reset => reset,
      rgb_led_tri_i(11) => rgb_led_tri_i_11(11),
      rgb_led_tri_i(10) => rgb_led_tri_i_10(10),
      rgb_led_tri_i(9) => rgb_led_tri_i_9(9),
      rgb_led_tri_i(8) => rgb_led_tri_i_8(8),
      rgb_led_tri_i(7) => rgb_led_tri_i_7(7),
      rgb_led_tri_i(6) => rgb_led_tri_i_6(6),
      rgb_led_tri_i(5) => rgb_led_tri_i_5(5),
      rgb_led_tri_i(4) => rgb_led_tri_i_4(4),
      rgb_led_tri_i(3) => rgb_led_tri_i_3(3),
      rgb_led_tri_i(2) => rgb_led_tri_i_2(2),
      rgb_led_tri_i(1) => rgb_led_tri_i_1(1),
      rgb_led_tri_i(0) => rgb_led_tri_i_0(0),
      rgb_led_tri_o(11) => rgb_led_tri_o_11(11),
      rgb_led_tri_o(10) => rgb_led_tri_o_10(10),
      rgb_led_tri_o(9) => rgb_led_tri_o_9(9),
      rgb_led_tri_o(8) => rgb_led_tri_o_8(8),
      rgb_led_tri_o(7) => rgb_led_tri_o_7(7),
      rgb_led_tri_o(6) => rgb_led_tri_o_6(6),
      rgb_led_tri_o(5) => rgb_led_tri_o_5(5),
      rgb_led_tri_o(4) => rgb_led_tri_o_4(4),
      rgb_led_tri_o(3) => rgb_led_tri_o_3(3),
      rgb_led_tri_o(2) => rgb_led_tri_o_2(2),
      rgb_led_tri_o(1) => rgb_led_tri_o_1(1),
      rgb_led_tri_o(0) => rgb_led_tri_o_0(0),
      rgb_led_tri_t(11) => rgb_led_tri_t_11(11),
      rgb_led_tri_t(10) => rgb_led_tri_t_10(10),
      rgb_led_tri_t(9) => rgb_led_tri_t_9(9),
      rgb_led_tri_t(8) => rgb_led_tri_t_8(8),
      rgb_led_tri_t(7) => rgb_led_tri_t_7(7),
      rgb_led_tri_t(6) => rgb_led_tri_t_6(6),
      rgb_led_tri_t(5) => rgb_led_tri_t_5(5),
      rgb_led_tri_t(4) => rgb_led_tri_t_4(4),
      rgb_led_tri_t(3) => rgb_led_tri_t_3(3),
      rgb_led_tri_t(2) => rgb_led_tri_t_2(2),
      rgb_led_tri_t(1) => rgb_led_tri_t_1(1),
      rgb_led_tri_t(0) => rgb_led_tri_t_0(0),
      spi_io0_i => spi_io0_i,
      spi_io0_o => spi_io0_o,
      spi_io0_t => spi_io0_t,
      spi_io1_i => spi_io1_i,
      spi_io1_o => spi_io1_o,
      spi_io1_t => spi_io1_t,
      spi_sck_i => spi_sck_i,
      spi_sck_o => spi_sck_o,
      spi_sck_t => spi_sck_t,
      spi_ss_i => spi_ss_i,
      spi_ss_o => spi_ss_o,
      spi_ss_t => spi_ss_t,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
eth_mdio_mdc_mdio_iobuf: component IOBUF
     port map (
      I => eth_mdio_mdc_mdio_o,
      IO => eth_mdio_mdc_mdio_io,
      O => eth_mdio_mdc_mdio_i,
      T => eth_mdio_mdc_mdio_t
    );
led_4bits_tri_iobuf_0: component IOBUF
     port map (
      I => led_4bits_tri_o_0(0),
      IO => led_4bits_tri_io(0),
      O => led_4bits_tri_i_0(0),
      T => led_4bits_tri_t_0(0)
    );
led_4bits_tri_iobuf_1: component IOBUF
     port map (
      I => led_4bits_tri_o_1(1),
      IO => led_4bits_tri_io(1),
      O => led_4bits_tri_i_1(1),
      T => led_4bits_tri_t_1(1)
    );
led_4bits_tri_iobuf_2: component IOBUF
     port map (
      I => led_4bits_tri_o_2(2),
      IO => led_4bits_tri_io(2),
      O => led_4bits_tri_i_2(2),
      T => led_4bits_tri_t_2(2)
    );
led_4bits_tri_iobuf_3: component IOBUF
     port map (
      I => led_4bits_tri_o_3(3),
      IO => led_4bits_tri_io(3),
      O => led_4bits_tri_i_3(3),
      T => led_4bits_tri_t_3(3)
    );
rgb_led_tri_iobuf_0: component IOBUF
     port map (
      I => rgb_led_tri_o_0(0),
      IO => rgb_led_tri_io(0),
      O => rgb_led_tri_i_0(0),
      T => rgb_led_tri_t_0(0)
    );
rgb_led_tri_iobuf_1: component IOBUF
     port map (
      I => rgb_led_tri_o_1(1),
      IO => rgb_led_tri_io(1),
      O => rgb_led_tri_i_1(1),
      T => rgb_led_tri_t_1(1)
    );
rgb_led_tri_iobuf_10: component IOBUF
     port map (
      I => rgb_led_tri_o_10(10),
      IO => rgb_led_tri_io(10),
      O => rgb_led_tri_i_10(10),
      T => rgb_led_tri_t_10(10)
    );
rgb_led_tri_iobuf_11: component IOBUF
     port map (
      I => rgb_led_tri_o_11(11),
      IO => rgb_led_tri_io(11),
      O => rgb_led_tri_i_11(11),
      T => rgb_led_tri_t_11(11)
    );
rgb_led_tri_iobuf_2: component IOBUF
     port map (
      I => rgb_led_tri_o_2(2),
      IO => rgb_led_tri_io(2),
      O => rgb_led_tri_i_2(2),
      T => rgb_led_tri_t_2(2)
    );
rgb_led_tri_iobuf_3: component IOBUF
     port map (
      I => rgb_led_tri_o_3(3),
      IO => rgb_led_tri_io(3),
      O => rgb_led_tri_i_3(3),
      T => rgb_led_tri_t_3(3)
    );
rgb_led_tri_iobuf_4: component IOBUF
     port map (
      I => rgb_led_tri_o_4(4),
      IO => rgb_led_tri_io(4),
      O => rgb_led_tri_i_4(4),
      T => rgb_led_tri_t_4(4)
    );
rgb_led_tri_iobuf_5: component IOBUF
     port map (
      I => rgb_led_tri_o_5(5),
      IO => rgb_led_tri_io(5),
      O => rgb_led_tri_i_5(5),
      T => rgb_led_tri_t_5(5)
    );
rgb_led_tri_iobuf_6: component IOBUF
     port map (
      I => rgb_led_tri_o_6(6),
      IO => rgb_led_tri_io(6),
      O => rgb_led_tri_i_6(6),
      T => rgb_led_tri_t_6(6)
    );
rgb_led_tri_iobuf_7: component IOBUF
     port map (
      I => rgb_led_tri_o_7(7),
      IO => rgb_led_tri_io(7),
      O => rgb_led_tri_i_7(7),
      T => rgb_led_tri_t_7(7)
    );
rgb_led_tri_iobuf_8: component IOBUF
     port map (
      I => rgb_led_tri_o_8(8),
      IO => rgb_led_tri_io(8),
      O => rgb_led_tri_i_8(8),
      T => rgb_led_tri_t_8(8)
    );
rgb_led_tri_iobuf_9: component IOBUF
     port map (
      I => rgb_led_tri_o_9(9),
      IO => rgb_led_tri_io(9),
      O => rgb_led_tri_i_9(9),
      T => rgb_led_tri_t_9(9)
    );
spi_io0_iobuf: component IOBUF
     port map (
      I => spi_io0_o,
      IO => spi_io0_io,
      O => spi_io0_i,
      T => spi_io0_t
    );
spi_io1_iobuf: component IOBUF
     port map (
      I => spi_io1_o,
      IO => spi_io1_io,
      O => spi_io1_i,
      T => spi_io1_t
    );
spi_sck_iobuf: component IOBUF
     port map (
      I => spi_sck_o,
      IO => spi_sck_io,
      O => spi_sck_i,
      T => spi_sck_t
    );
spi_ss_iobuf: component IOBUF
     port map (
      I => spi_ss_o,
      IO => spi_ss_io,
      O => spi_ss_i,
      T => spi_ss_t
    );
end STRUCTURE;
