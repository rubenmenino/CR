library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity wrapperPart1 is
    port ( clk: in std_logic;
           btnC : in std_logic;
           led: out std_logic_vector(3 downto 0)); 
end wrapperPart1;

architecture Behavioral of wrapperPart1 is
    signal s_en, s_reset : std_logic;
    
begin

-- register asynchronis inputs

process(clk)
begin
    if (rising_edge(clk)) then
        s_reset <= btnC;
    end if;
end process;

freq1Hz: entity work.pulse_generator_1Hz(Behavioral)
    port map ( clk => clk,
               reset => s_reset,
               pulse => s_en );
 
counter4bits: entity work.counter4b(Behavioral)
    port map ( clk => clk,
               reset => s_reset,
               en => s_en,
               count => led );
           
end Behavioral;
