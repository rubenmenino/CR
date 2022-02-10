
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CounterDemo is
    Port (
        clk     :   in std_logic;
        btnL    :   in std_logic;
        btnD    :   in std_logic;
        btnC    :   in std_logic;
        btnU    :   in std_logic;
        btnR    :   in std_logic;
        an      :   out std_logic_vector(7 downto 0);
        seg     :   out std_logic_vector(6 downto 0);
        led     :   out std_logic_vector(4 downto 0)
    );
end CounterDemo;

architecture Behavioral of CounterDemo is
    signal s_startPause                     :   std_logic;
    signal s_reset, s_left, s_right, s_up   :   std_logic;
begin

    counter:    entity work.Counter(Behavioral)
                port map(
                    reset => s_reset,
                    clk => clk,
                    start_pause => s_startPause,
                    left => s_left,
                    right => s_right,
                    up => s_up,
                    an => an,
                    dp => open,
                    seg => seg,
                    led => led
                );
    
    resetModule:    entity work.ResetModule(Behavioral)
                    generic map(N => 4)
                    port map(
                        clk => clk,
                        resetIn => btnD,
                        resetOut => s_reset
                    );
    
    debouncer1: entity work.DebounceUnit(Behavioral)
                generic map(clkFrekHz => 100000,
                            blindmSec => 100,
                            inPol     => '1',
                            outPol    => '1')
                port map(reset => s_reset,
                        refClk => clk,
                        dirtyIn => btnC,
                        pulsedOut => s_startPause);
    
     debouncer2: entity work.DebounceUnit(Behavioral)
                 generic map(clkFrekHz => 100000,
                             blindmSec => 100,
                             inPol     => '1',
                             outPol    => '1')
                 port map(reset => s_reset,
                         refClk => clk,
                         dirtyIn => btnL,
                         pulsedOut => s_left);   
 
     debouncer3: entity work.DebounceUnit(Behavioral)
                 generic map(clkFrekHz => 100000,
                             blindmSec => 100,
                             inPol     => '1',
                             outPol    => '1')
                 port map(reset => s_reset,
                         refClk => clk,
                         dirtyIn => btnR,
                         pulsedOut => s_right);
                         
     debouncer4: entity work.DebounceUnit(Behavioral)
                 generic map(clkFrekHz => 100000,
                             blindmSec => 100,
                             inPol     => '1',
                             outPol    => '1')
                 port map(reset => s_reset,
                         refClk => clk,
                         dirtyIn => btnU,
                         pulsedOut => s_up);
                         
end Behavioral;
