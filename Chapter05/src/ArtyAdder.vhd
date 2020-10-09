-- Load the standard libraries

library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity ARTY_ADDER is
  port (
    sw     : in    std_logic_vector(3 downto 0);
    btn    : in    std_logic_vector(3 downto 0);
    led    : out   std_logic_vector(3 downto 0);
    led0_g : out   std_logic
  );
end entity ARTY_ADDER;

architecture BEHAVIORAL of ARTY_ADDER is

  -- Reference the previous definition of the 4-bit adder

  component ADDER4NATIVE is
    port (
      A4     : in    std_logic_vector(3 downto 0);
      B4     : in    std_logic_vector(3 downto 0);
      SUM4   : out   std_logic_vector(3 downto 0);
      C_OUT4 : out   std_logic
    );
  end component;

begin

  ADDER : ADDER4NATIVE
    port map (
      A4     => sw,
      B4     => btn,
      SUM4   => led,
      C_OUT4 => led0_g
    );

end architecture BEHAVIORAL;
