
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;


entity part1_wrapper is
    Port ( clk : in STD_LOGIC;
           btnC : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (3 downto 0));
end part1_wrapper;

architecture Behavioral of part1_wrapper is
    signal s_en, s_reset: std_logic;
begin
process(clk)
begin
    if (rising_edge(clk)) then
        s_reset <= btnC;
        
    end if;
end process;

pulse_generator: entity work.generator1HZ(Behavioral)
    port map( clk => clk,
              reset => s_reset,
              pulse => s_en);
                
counter4b: entity work.counter4_bits(Behavioral)
    port map( clk => clk,
              reset => s_reset,
              enable  => s_en,
              count   => led);

end Behavioral;
