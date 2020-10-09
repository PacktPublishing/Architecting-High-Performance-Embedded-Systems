-- Load the standard libraries

library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;

-- Define the 4-bit adder inputs and outputs

entity ADDER4NATIVE is
  port (
    A4     : in    std_logic_vector(3 downto 0);
    B4     : in    std_logic_vector(3 downto 0);
    SUM4   : out   std_logic_vector(3 downto 0);
    C_OUT4 : out   std_logic
  );
end entity ADDER4NATIVE;

-- Define the behavior of the 4-bit adder

architecture BEHAVIORAL of ADDER4NATIVE is

begin

  ADDER_NATIVE : process (A4, B4) is

    variable sum5 : unsigned(4 downto 0);

  begin

    sum5 := unsigned('0' & A4) + unsigned('0' & B4);

    SUM4   <= std_logic_vector(sum5(3 downto 0));
    C_OUT4 <= std_logic(sum5(4));

  end process ADDER_NATIVE;

end architecture BEHAVIORAL;
