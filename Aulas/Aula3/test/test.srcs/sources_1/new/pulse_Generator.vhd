----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2021 12:13:07
-- Design Name: 
-- Module Name: pulse_Generator - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PulseGenerator is
    generic( N  :   natural);
    Port (
        clk     :   in std_logic;
        pulse   :   out std_logic
    );
end PulseGenerator;

architecture Behavioral of PulseGenerator is
    signal s_counter    :   natural := 0;
begin

    process(clk)
    begin
        if(rising_edge(clk)) then
            if (s_counter = N-1) then
                s_counter <= 0;
                pulse <= '1';
            else
                s_counter <= s_counter + 1;
                pulse <= '0';
            end if;
        end if;
    
    end process;

end Behavioral;
