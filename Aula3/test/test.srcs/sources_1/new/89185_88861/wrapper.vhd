
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;


entity wrapper is
    Port ( clk : in STD_LOGIC;
           sw : in STD_LOGIC_VECTOR (15 downto 0);
           btnC : in STD_LOGIC;
           an : out STD_LOGIC_VECTOR (7 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           dp : out STD_LOGIC);
end wrapper;

architecture Behavioral of wrapper is
   signal s_reset, s_clk800: std_logic;
   signal s_hexSeg, s_value0, s_value1, s_value2, s_value3, s_value4, s_value5, s_value6, s_value7: std_logic_vector(3 downto 0);
   signal s_selDisp, s_selDp, s_omegalul: std_logic_vector(7 downto 0);
   signal s_pulse: std_logic;
   
begin

process(clk)
begin
    if (rising_edge(clk)) then 
        s_reset <= btnC;
        s_value0   <= sw (3 downto 0); --value
        s_selDisp  <= not sw (11 downto 4); --sel display, active low
        s_selDp    <= "1111" &  not sw (15 downto 12); --sel decimal point, 4msb default off 
        
        
        s_value1 <= "0001"; 
        s_value2 <= "0010"; 
        s_value3 <= "0101"; 
        s_value4 <= "0111"; 
        s_value5 <= "1111"; 
        s_value6 <= "0000"; 
        s_value7 <= "1101"; 
        
     
    end if;
    
end process;
 
         
pulsegenerator: entity work.pulseeGenerator(Behavioral)
    generic map(N => 125000)
    port map(clk => clk,
             pulse => s_pulse
    );         
                  
driver:     entity work.Nexys4DispDriver(Behavioral)
    port map    ( clk   => clk,
                  clk_enable => s_pulse,
                  controlDisplay => s_selDisp,
                  controlDecimal => s_selDp, 
                  value0 => s_value0,
                  value1 => s_value1,
                  value2 => s_value2,
                  value3 => s_value3,
                  value4 => s_value4,
                  value5 => s_value5,
                  value6 => s_value6,
                  value7 => s_value7,
                  an  => an,
                  seg => seg,
                  dp  => dp);

       
end Behavioral;