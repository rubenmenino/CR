
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

entity Nexys4DispDriver is
    Port ( clk : in STD_LOGIC;
           controlDisplay : in STD_LOGIC_VECTOR (7 downto 0);
           controlDecimal : in STD_LOGIC_VECTOR (7 downto 0);
           value0 : in STD_LOGIC_VECTOR (3 downto 0);
           value1 : in STD_LOGIC_VECTOR (3 downto 0);
           value2 : in STD_LOGIC_VECTOR (3 downto 0);
           value3 : in STD_LOGIC_VECTOR (3 downto 0);
           value4 : in STD_LOGIC_VECTOR (3 downto 0);
           value5 : in STD_LOGIC_VECTOR (3 downto 0);
           value6 : in STD_LOGIC_VECTOR (3 downto 0);
           value7 : in STD_LOGIC_VECTOR (3 downto 0);
           an     : out STD_LOGIC_VECTOR (7 downto 0);
           hexSeg: out STD_LOGIC_VECTOR (3 downto 0);
           dp     : out STD_LOGIC);
        
end Nexys4DispDriver;

architecture Behavioral of Nexys4DispDriver is
    hex2seg:      entity work.hex2seg(Behavioral)
    port map ( hex => s_hexSeg, 
               en_L => '1',
               seg_L => seg);
    
    signal s_idx: unsigned(2 downto 0);
    signal s_value: std_logic_vector(value0'range);
    signal s_an: std_logic_vector(7 downto 0) := x"7F";
    signal s_opposite: std_logic_vector(7 downto 0);

   
begin
process(clk)
begin
    if rising_edge(clk) then
   
        s_value <= value0 when s_idx = "000" else
                   value1 when s_idx = "001" else
                   value2 when s_idx = "010" else
                   value3 when s_idx = "011" else
                   value4 when s_idx = "100" else
                   value5 when s_idx = "101" else
                   value6 when s_idx = "110" else
                   value7 when s_idx = "111";
             
        s_idx <= s_idx + 1;
        s_an <= s_an rol 1; --rotate left 
        
     end if; 
     
     
     an  <= s_an or controlDisplay; 
     hexSeg <= s_value;
     dp <= '0'; 
end process;
  

end Behavioral;
