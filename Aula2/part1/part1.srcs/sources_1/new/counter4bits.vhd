----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.03.2021 11:00:40
-- Design Name: 
-- Module Name: counter4bits - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;



entity counter4b is
    port (clk   : in std_logic;
          reset : in std_logic;
          en    : in std_logic;
          count : out std_logic_vector(3 downto 0));     
    
end counter4b;

architecture Behavioral of counter4b is
    signal s_count : unsigned(count'range);
begin

process(clk)

begin
    if (rising_edge(clk)) then
        if (reset = '1') then
                s_count <= (others => '0');
        elsif (en = '1') then
            s_count <= s_count + 1;
        end if;
    end if;
end process;

count <= std_logic_vector(s_count);
   
end Behavioral;
