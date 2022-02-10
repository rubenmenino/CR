----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2021 19:27:54
-- Design Name: 
-- Module Name: MuxBus8to1x4 - Behavioral
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

entity MuxBus8to1x4 is
    Port ( data : in STD_LOGIC_VECTOR (31 downto 0);
           sel : in STD_LOGIC_VECTOR (2 downto 0);
           choice : out STD_LOGIC_VECTOR (3 downto 0));
end MuxBus8to1x4;

architecture Behavioral of MuxBus8to1x4 is

    signal index : natural := TO_INTEGER(UNSIGNED(sel));

begin
    
    choice <= data(4*index + 3 downto 4*index);


--    with sel select choice <=
--        data(3 downto 0) when "000",  -- 0
--        data(7 downto 4) when "001",  -- 1
--        data(11 downto 8) when "010",  -- 2
--        data(15 downto 12) when "011",  -- 3
--        data(19 downto 16) when "100",  -- 4
--        data(23 downto 20) when "101",  -- 5
--        data(27 downto 24) when "110",  -- 6
--        data(31 downto 28) when "111",  -- 7
--        "0000" when others;

end Behavioral;
