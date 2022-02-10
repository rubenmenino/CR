----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2021 18:51:19
-- Design Name: 
-- Module Name: pulse_generator_1Hz - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pulse_generator_1Hz is
    Port ( clk : in STD_LOGIC;      --100 MHz
           reset: in STD_LOGIC;
           pulse : out STD_LOGIC --10 Hz  
          );
end pulse_generator_1Hz;

architecture Behavioral of pulse_generator_1Hz is
    constant MAX: natural := 100_000_000;
    signal s_cnt : natural range 0 to MAX-1;
    
begin

process(clk)
begin
    if rising_edge(clk) then
        pulse <= '0';
        if reset='1' then
            s_cnt <= 0;
        else
            s_cnt <= s_cnt + 1;
            if (s_cnt = MAX-1) then
                s_cnt <= 0;
                pulse <= '1';
            end if;     
        end if;   
    end if;
end process;
end Behavioral;
