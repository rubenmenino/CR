
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
           clk_enable: in std_logic;
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
           seg: out STD_LOGIC_VECTOR (6 downto 0);
           dp     : out STD_LOGIC);
        
end Nexys4DispDriver;

architecture Behavioral of Nexys4DispDriver is
    signal s_idx: unsigned(2 downto 0);
    signal s_value: std_logic_vector(value0'range) := "0000";
    signal s_an: std_logic_vector(7 downto 0) := x"7F";
    signal s_opposite: std_logic_vector(7 downto 0);
    signal s_seg: std_logic_vector(6 downto 0);
    
    
    
    component hex2seg is
        Port ( hex : in STD_LOGIC_VECTOR (3 downto 0);
           en_L : in STD_LOGIC;
           --an_L : out STD_LOGIC_VECTOR(7 downto 0);
           seg_L : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    
    
begin

 u1: hex2seg 
        port map ( hex => s_value,
                   en_L => '1',
                   seg_L => s_seg);
process(clk)
begin
    if (rising_edge(clk) and clk_enable ='1') then
   
        s_value <= value0 when s_idx = "000" else
                   value1 when s_idx = "001" else
                   value2 when s_idx = "010" else
                   value3 when s_idx = "011" else
                   value4 when s_idx = "100" else
                   value5 when s_idx = "101" else
                   value6 when s_idx = "110" else
                   value7 when s_idx = "111";
             
        
        s_an <= s_an rol 1; --rotate left 
        s_idx <= s_idx + 1;
        
     end if; 

     an  <= s_an or controlDisplay; 
     seg <= s_seg;
     dp <= '0'; 
     
     s_opposite <= controlDisplay xor controlDecimal;


    if s_opposite(to_integer(s_idx - 1)) = '1' then
            if controlDisplay(TO_INTEGER(s_idx - 1)) = '1' then
                dp <= '0';
                an(TO_INTEGER(s_idx - 1)) <= '0';
                seg <= "1111111"; --all turn off
            else
                dp <= '1';
            end if;
    
    end if;
    
    
     
end process;

end Behavioral;