-- Load the standard libraries

library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;

-- Define the 4-bit adder inputs and outputs

entity ADDER4HLSWRAPPER is
  port (
    A4     : in    std_logic_vector(3 downto 0);
    B4     : in    std_logic_vector(3 downto 0);
    SUM4   : out   std_logic_vector(3 downto 0);
    C_OUT4 : out   std_logic
  );
end entity ADDER4HLSWRAPPER;

-- Define the behavior of the 4-bit adder

architecture BEHAVIORAL of ADDER4HLSWRAPPER is

  component ARTYADDER4HLS is
    port (
      AP_START     : in    std_logic;
      AP_DONE      : out   std_logic;
      AP_IDLE      : out   std_logic;
      AP_READY     : out   std_logic;
      A            : in    std_logic_vector(3 downto 0);
      B            : in    std_logic_vector(3 downto 0);
      SUM          : out   std_logic_vector(3 downto 0);
      SUM_AP_VLD   : out   std_logic;
      C_OUT        : out   std_logic_vector(0 downto 0);
      C_OUT_AP_VLD : out   std_logic
    );
  end component;

  signal c_out_vec : std_logic_vector(0 downto 0);

begin

  -- The carry input to the first adder is set to 0
  ARTYADDER4HLS_INSTANCE : ARTYADDER4HLS
    port map (
      AP_START     => '1',
      AP_DONE      => open,
      AP_IDLE      => open,
      AP_READY     => open,
      A            => A4,
      B            => B4,
      SUM          => SUM4,
      SUM_AP_VLD   => open,
      C_OUT        => c_out_vec,
      C_OUT_AP_VLD => open
    );

  C_OUT4 <= c_out_vec(0);

end architecture BEHAVIORAL;
