library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Wrapper is
port(     clk         : in  std_logic;
         btnCpuReset : in  std_logic;
         btnC        : in  std_logic;
         btnU        : in  std_logic;
         btnR        : in  std_logic;
         btnD        : in  std_logic;
         an          : out std_logic_vector(7 downto 0);
         seg         : out std_logic_vector(6 downto 0);
         dp          : out std_logic;
         led         : out std_logic_vector(0 downto 0));
end Wrapper;

architecture Behavioral of Wrapper is
    signal s_reset                      : std_logic;
    
    signal s_pulse1HZ,s_pulse2HZ, s_pulse800HZ        : std_logic;
    signal s_blink2Hz, s_blink1Hz       : std_logic;
    
    signal s_btnStart, s_btnAdjust      : std_logic;
    signal s_btnUp, s_btnDown           : std_logic;
    signal s_btnR, s_btnC               : std_logic;
    
    signal s_zero, s_run                : std_logic;
    signal s_setDisplay                 : std_logic_vector(3 downto 0);
       
    signal s_secLInc, s_secLDec : std_logic;
    signal s_secHInc, s_secHDec : std_logic;
    
    signal s_minLInc, s_minLDec : std_logic;
    signal s_minHInc, s_minHDec : std_logic;
    
    signal s_secHCntVal, s_secLCntVal : std_logic_vector(3 downto 0);
    signal s_minHCntVal, s_minLCntVal : std_logic_vector(3 downto 0);
    
    signal s_displayEn, s_pointEn       : std_logic_vector(7 downto 0);
    
  
       
begin

 process(clk)
    begin
        if (rising_edge(clk)) then
            s_btnUp <= btnU;
            s_btnDown <= btnD;
        end if;
    end process;
    
    pulse_generator1Hz : entity work.pulseeGenerator(Behavioral)
                        generic map(N  => 100_000_000)
                        port map(clk   => clk,
                                 pulse => s_pulse1HZ);
                                 
    blink1HZ          :entity work.generator(Behavioral)
                        generic map(NUMBER_STEPS  => 100_000_000)
                        port map(clk   => clk,
                                 reset => '0',
                                 blink => s_blink1HZ);
                                 
    pulse_generator2Hz : entity work.pulseeGenerator(Behavioral)
                        generic map(N  => 50_000_000)
                        port map(clk   => clk,
                                 pulse => s_pulse2HZ);
                                 
    blink2Hz : entity work.generator(Behavioral)
                        generic map(NUMBER_STEPS  => 50_000_000)
                        port map(clk   => clk,
                                 reset => '0',
                                 blink => s_blink2HZ);
                                 
    pulse_generator800Hz : entity work.pulseeGenerator(Behavioral) --display pulse
                        generic map(N  =>  125000)
                        port map(clk   => clk,
                                 pulse => s_pulse800HZ);


    but_R_debouncer   : entity work.DebounceUnit(Behavioral) --btnR responsable for getting into the adjust mode
                        generic map(kHzClkFreq      => 100000,
                                    mSecMinInWidth  => 100,
                                    inPolarity      => '1',
                                    outPolarity     => '1')
                        port map(refClk     => clk,
                                 dirtyIn    => btnR,
                                 pulsedOut  => s_btnAdjust);
                                 
    but_C_debouncer : entity work.DebounceUnit(Behavioral) --btnC start and stop the count
                        generic map(kHzClkFreq      => 100000,
                                    mSecMinInWidth  => 100,
                                    inPolarity      => '1',
                                    outPolarity     => '1')
                        port map(refClk     => clk,
                                 dirtyIn    => btnC,
                                 pulsedOut  => s_btnStart);
    
            
    control_unit : entity work.ControlUnit(Behavioral)
                   
                    port map( reset      => s_reset,
                            clk        => clk,
                            btnUp      => s_btnUp,
                            btnDown    => s_btnDown,
                            btnStart   => s_btnStart,
                            btnAdjust  => s_btnAdjust,
                            upDownEn   => s_blink2HZ, 
                            zero       => s_zero, 
                            run        => s_run, --out
                            setDisplay => s_setDisplay,
                            setLsecInc => s_secLInc, 
                            setLsecDec => s_secLDec, 
                            setHsecInc => s_secHInc,
                            setHsecDec => s_secHDec,
                            setLminInc => s_minLInc,
                            setLminDec => s_minLDec,
                            setHminInc => s_minHInc, 
                            setHminDec => s_minHDec);                           

    datapath    : entity work.DataPathCountDown(Behavioral) 
    
                    port map(reset          => s_reset,
                             clk            => clk,
                             clkEnable      => s_pulse1HZ,
                             run            => s_run,
                             setLsecInc     => s_secLInc, 
                             setLsecDec     => s_secLDec, 
                             setHsecInc     => s_secHInc,
                             setHsecDec     => s_secHDec,
                             setLminInc     => s_minLInc,
                             setLminDec     => s_minLDec,
                             setHminInc     => s_minHInc, 
                             setHminDec     => s_minHDec,
                             secLCntVal    => s_secLCntVal,-- out
                             secHCntVal    => s_secHCntVal,
                             minLCntVal    => s_minLCntVal,
                             minHCntVal    => s_minHCntVal,
                             zero          => s_zero);
              
    s_displayEn <= "11" & (s_setDisplay(3) and s_blink2Hz) & (s_setDisplay(2) and s_blink2Hz) & (s_setDisplay(1) and s_blink2Hz) & (s_setDisplay(0) and s_blink2Hz) & "11";
    s_pointEn      <= "111" & s_blink1Hz & "1111";   

    display_driver : entity work.Nexys4DispDriver(Behavioral)
                    port map(clk            => clk,
                             clk_enable     => s_pulse800HZ, 
                             controlDisplay => s_displayEn,   
                             controlDecimal =>  s_pointEn,
                             value0         => "0000",
                             value1         => "0000",
                             value2         => s_secLCntVal,      
                             value3         => s_secHCntVal,       
                             value4         => s_minLCntVal,       
                             value5         => s_minHCntVal,      
                             value6         => "0000",
                             value7         => "0000",
                             an             => an,
                             seg            => seg,
                             dp             => dp);
                                  
    led(0) <=  s_zero;

end Behavioral;
