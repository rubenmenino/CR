library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity wrapper is
    port ( clk: in std_logic;
           btnC : in std_logic;
           btnU : in std_logic;
           btnD : in std_logic;
           btnR : in std_logic;
           seg: out std_logic_vector(6 downto 0);
           led: out std_logic_vector(3 downto 0);
           an:  out std_logic_vector(7 downto 0));
           
            
end wrapper;

architecture Behavioral of wrapper is
    signal s_enable, s_reset, s_segOut : std_logic;
    signal s_btnD, s_btnU, s_btnR: std_logic;
    signal s_DebouncedD, s_DebouncedU, s_DebouncedR: std_logic;
    signal  s_count : std_logic_vector(3 downto 0);
    
begin

process(clk)
begin
    if (rising_edge(clk)) then
        s_reset <= btnC;
        s_btnU  <= btnU;
        s_btnD  <= btnD;
        s_btnR  <= btnR;
        led     <= s_count;
        
    end if;
end process;

generator1Hz: entity work.generator1Hz(Behavioral)
    port map ( clk => clk,
               reset => s_reset,
               pulse => s_enable );
               
 DebounceUnitU: entity work.DebounceUnit(Behavioral)
    port map ( refClk  => clk,
               dirtyIn => s_btnU,
               pulsedOut =>  s_DebouncedU);     
               
DebounceUnitD: entity work.DebounceUnit(Behavioral)
    port map ( refClk  => clk,
               dirtyIn => s_btnD,
               pulsedOut => s_DebouncedD);  
               

DebounceUnitR: entity work.DebounceUnit(Behavioral)
    port map ( refClk  => clk,
               dirtyIn => s_btnR,
               pulsedOut => s_DebouncedR);  
               
counter4bits: entity work.counter4_bits(Behavioral)
    port map ( clk => clk,
               reset => s_reset,
               enable => s_enable,
               count => s_count,
               an_L => an,
               adjust => s_DebouncedR,
               increment   => s_DebouncedU,
               decrement  => s_DebouncedD);
               
hex2seg:      entity work.hex2seg(Behavioral)
    port map ( hex => s_count, 
               en_L => s_enable,
               seg_L => seg);
               
                
           
end Behavioral;