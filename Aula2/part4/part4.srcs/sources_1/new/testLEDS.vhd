library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testLEDS is
    port ( clk: in std_logic;
           btnC : in std_logic;
           led: out std_logic_vector(3 downto 0)); 
end testLEDS;

architecture Behavioral of testLEDS is
    signal s_enable, s_reset : std_logic;
    
begin

-- register asynchronis inputs

process(clk)
begin
    if (rising_edge(clk)) then
        s_reset <= btnC;
    end if;
end process;

freq1Hz: entity work.freq1Hz(Behavioral)
    port map ( clk => clk,
               reset => s_reset,
               pulse => s_enable );
 
counter4bits: entity work.counter4bits(Behavioral)
    port map ( clk => clk,
               reset => s_reset,
               enable => s_enable,
               valcount => led );
           
end Behavioral;