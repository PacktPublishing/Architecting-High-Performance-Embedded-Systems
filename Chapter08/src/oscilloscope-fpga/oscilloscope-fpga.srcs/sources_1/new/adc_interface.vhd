library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.vcomponents.all;

entity adc_interface is
  port (
    adc_enc         : in std_logic;

    enc_p           : out std_logic;
    enc_n           : out std_logic;
    clk_1khz_out    : out std_logic
  );
end entity;

architecture Behavioral of adc_interface is
  signal clk_1khz       : std_logic;
begin

  process(adc_enc) is
    variable count            : integer := 0;
    constant clk_1khz_period  : integer := 10 * 1000;
  begin
    if (rising_edge(adc_enc)) then
      count := count + 1;
  
      if (count >= (clk_1khz_period / 2)) then
        clk_1khz <= NOT clk_1khz;
        count         := 0;
      end if;
    end if;
  end process;
  
  CAL_1KHZ_OBUF : OBUF
    generic map (IOSTANDARD => "LVCMOS33")
  port map (
    I  => clk_1khz,
    O  => clk_1khz_out
  );

  ADC_ENC_OBUFDS : OBUFDS
    generic map (IOSTANDARD => "TMDS_33")
  port map (
    O  => enc_p,
    OB => enc_n,
    I  => adc_enc
  );
end Behavioral;
