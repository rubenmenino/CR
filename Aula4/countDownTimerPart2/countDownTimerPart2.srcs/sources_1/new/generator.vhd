----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.04.2021 17:15:18
-- Design Name: 
-- Module Name: generator - Behavioral
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

entity generator is
    generic(NUMBER_STEPS : positive := 50_000_000);
    Port ( clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    blink: out STD_LOGIC);
end generator;

architecture Behavioral of generator is
signal s_counter : natural range 0 to NUMBER_STEPS-1;
begin
    count_proc: process(clk)
begin
    if rising_edge(clk) then
        if (reset = '1') or (s_counter >= NUMBER_STEPS-1) then
            s_counter <= 0;
        else
            s_counter <= s_counter + 1;
        end if;
        blink <= '1' when s_counter >= (NUMBER_STEPS/2) else '0'; -- VHDL-2008 !
    end if;
end process;
end Behavioral;
