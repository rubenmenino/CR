----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Andre Almeida
-- 
-- Create Date: 06.04.2021 18:53:29
-- Design Name: 
-- Module Name: Nexys4DispDriver - Behavioral
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

entity Nexys4DispDriver is
    Port ( clk : in STD_LOGIC;
           clk_en: in std_logic;
           digitEn_L : in STD_LOGIC_VECTOR (7 downto 0);  -- enable dos digitos
           decpointEn : in STD_LOGIC_VECTOR (7 downto 0); -- enable dos pontos decimais
           digitsValue : in STD_LOGIC_VECTOR (31 downto 0); -- valores dos digitos (de 4 em 4)
           an_L : out STD_LOGIC_VECTOR (7 downto 0);
           seg_L : out STD_LOGIC_VECTOR (6 downto 0);
           dp_L : out STD_LOGIC);
end Nexys4DispDriver;

architecture Behavioral of Nexys4DispDriver is

    signal s_sel, s_dp_L: std_logic;
    signal s_digit, s_an_L: std_logic_vector(7 downto 0);
    signal s_hex: std_logic_vector(3 downto 0);
    signal s_count: std_logic_vector(2 downto 0);

begin

    hex2seg_converter: entity work.Hex2Seg(Behavioral)
    port map(
        hex => s_hex,
        en_L => s_digit,
        an_L => s_an_L,
        seg_L => seg_L
    );

    counter: entity work.counter3b(Behavioral)
    port map(
        clk => clk,
        enable => clk_en,
        reset => std_logic'('0'),
        count => s_count
    );
    
    dec: entity work.decoder3to8(Behavioral)
    port map(
        x => s_count,
        en => std_logic'('1'),
        y => s_digit
    );
    
    mux: entity work.mux8to1(Behavioral)
    port map(
        data => decpointEn,
        sel => s_count,
        choice => s_dp_L
    );
    
    muxbus: entity work.MuxBus8to1x4(Behavioral)
    port map(
        data => digitsValue,
        sel => s_count,
        choice => s_hex
    );
    
    dp_L <= not s_dp_L;
    an_L <= not (s_an_L and not digitEn_L);

end Behavioral;
