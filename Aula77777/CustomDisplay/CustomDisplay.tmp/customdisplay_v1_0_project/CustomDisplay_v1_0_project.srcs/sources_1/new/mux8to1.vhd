----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.04.2021 15:41:43
-- Design Name: 
-- Module Name: mux8to1 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux8to1 is
    Port ( sel : in STD_LOGIC_VECTOR (2 downto 0);
           data : in STD_LOGIC_VECTOR (7 downto 0);
           choice : out STD_LOGIC);
end mux8to1;

architecture Behavioral of mux8to1 is

begin

    choice <= data(TO_INTEGER(UNSIGNED(sel)));

--    with sel select choice <=
--        data(0) when "000",  -- 0
--        data(1) when "001",  -- 1
--        data(2) when "010",  -- 2
--        data(3) when "011",  -- 3
--        data(4) when "100",  -- 4
--        data(5) when "101",  -- 5
--        data(6) when "110",  -- 6
--        data(7) when "111",  -- 7
--        '-' when others;

end Behavioral;
