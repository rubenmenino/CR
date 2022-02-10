library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity wrapperParte1 is
    port ( clk: in std_logic;
           btnC : in std_logic;
           btnU : in std_logic;
           btnD : in std_logic;
           btnR : in std_logic;
           seg: out std_logic_vector(6 downto 0);
           led: out std_logic_vector(3 downto 0);
           an:  out std_logic_vector(7 downto 0));
           
            
end wrapperParte1;

architecture Behavioral of wrapperParte1 is
    signal s_enable, s_reset, s_segOut : std_logic;
    signal s_btnD, s_btnU: std_logic;
    signal s_OutU, s_OutD : std_logic;
    signal  s_hex : std_logic_vector(3 downto 0);
    signal s_adjust : std_logic;
    
begin

-- register asynchronis inputs

process(clk)
begin
    if (rising_edge(clk)) then
        s_reset <= btnC;
        s_btnU  <= btnU;
        s_btnD  <= btnD;
        s_adjust <=btnR;
        
    end if;
end process;

--freq1Hz: entity work.freq1Hz(Behavioral)
--    port map ( clk => clk,
--               reset => s_reset,
--               pulse => s_enable );
               
 DebounceUnitU: entity work.DebounceUnit(Behavioral)
    port map ( refClk  => clk,
               dirtyIn => s_btnU,
               pulsedOut =>  s_OutU);     
               
DebounceUnitD: entity work.DebounceUnit(Behavioral)
    port map ( refClk  => clk,
               dirtyIn => s_btnD,
               pulsedOut => s_OutD);  
               
counter4bits: entity work.counter4_bits(Behavioral)
    port map ( clk => clk,
               reset => s_reset,
               enable => s_enable,
               increment   => s_btnU,
               decrement  => s_btnD,
               adjust    => s_adjust,
               an_L  => an,  
               count => led   );
               
hex2seg:      entity work.hex2seg(Behavioral)
    port map ( hex => s_hex, 
               en_L => s_enable,
               --an_L => an,
               seg_L => seg);
               
               
      
         
           
end Behavioral;