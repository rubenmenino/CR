
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Start is
    Port (
        reset           :   in std_logic;
        start_pause_in  :   in std_logic;
        start           :   out std_logic
    );
end Start;

architecture Behavioral of Start is
    signal s_start  :   std_logic;
begin
    process(reset, start_pause_in)
    begin
        if(reset='1') then
            s_start <= '0';
        elsif(rising_edge(start_pause_in)) then
            s_start <= not s_start;
        end if;
    end process;
    start <= s_start;
end Behavioral;
