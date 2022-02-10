
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith;


entity freq_divider is
    generic(K : positive:= 2);
    Port ( clkIn : in STD_LOGIC;
           reset : in STD_LOGIC;
           clkOut : out STD_LOGIC);
end freq_divider;

architecture Behavioral of freq_divider is
signal s_counter    :   natural;
begin
    process(clkIn)
    begin
        if(rising_edge(clkIn)) then
            if(reset='1') or (s_counter = K-1) then
                s_counter <= 0;
                clkOut <= '0';
            else
                if(s_counter = K/2-1) then
                    clkOut <= '1';
                    s_counter <= s_counter + 1;
                end if;
             
                s_counter <= s_counter + 1;
            end if; 
        end if;
    end process;
end Behavioral;
