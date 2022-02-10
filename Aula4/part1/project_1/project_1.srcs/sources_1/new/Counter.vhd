
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Counter is
    Port (
        reset       :   in std_logic;
        clk         :   in std_logic;
        start_pause :   in std_logic;
        left        :   in std_logic;
        right       :   in std_logic;
        up          :   in std_logic;
        an          :   out std_logic_vector (7 downto 0);
        dp          :   out std_logic;
        seg         :   out std_logic_vector (6 downto 0);
        led         :   out std_logic_vector (4 downto 0)
    );
end Counter;

architecture Behavioral of Counter is
    signal s_out1, s_out2, s_out3, s_out4               :   std_logic_vector(3 downto 0);
    signal s_terminalCounter1, s_terminalCounter2,
    s_terminalCounter3, s_terminalCounter4              :   std_logic;
    signal s_enCounter3, s_enCounter4                   :   std_logic;
    signal s_start, s_reachedEnd, s_startAndNotEnd      :   std_logic;
    signal s_pulse_out                                  :   std_logic_vector(1 downto 0);
    signal s_state                                      :   std_logic_vector(3 downto 0);
begin
    
    led(4 downto 1) <= s_state;
    
    pulse_generator:    entity work.PulseGenerator(Behavioral)
                        port map(
                            reset => '0',
                            clk => clk,
                            pulse_out => s_pulse_out
                        );
    
    start_generator:    entity work.Start(Behavioral)
                        port map(
                            reset => reset,
                            start_pause_in => start_pause,
                            start => s_start
                        );
    
    fsm:        entity work.CounterFSM(Behavioral)
                port map(reset => reset,
                        clk => clk,
                        start => s_start,
                        left => left,
                        right => right,
                        dataOut => s_state);
    

    counter1:   entity work.CounterDown(Behavioral)
                generic map(maximum_count => 9)
                port map(
                    reset => reset,
                    enStartPause => s_startAndNotEnd,
                    enClk => s_pulse_out(0),
                    enCounter => '1',
                    enIncrement => s_state(0),
                    increment => up,
                    clk => clk,
                    output => s_out1,
                    terminalCounter => s_terminalCounter1
                );

                
    counter2:   entity work.CounterDown(Behavioral)
                generic map(maximum_count => 5)
                port map(
                    reset => reset,
                    enStartPause => s_startAndNotEnd,
                    enClk => s_pulse_out(0),
                    enIncrement => s_state(1),
                    increment => up,
                    enCounter => s_terminalCounter1,
                    clk => clk,
                    output => s_out2,
                    terminalCounter => s_terminalCounter2
                );
    
    s_enCounter3 <= s_terminalCounter1 and s_terminalCounter2;

                
    counter3:   entity work.CounterDown(Behavioral)
                generic map(maximum_count => 9)
                port map(
                    reset => reset,
                    enStartPause => s_startAndNotEnd,
                    enClk => s_pulse_out(0),
                    enCounter => s_enCounter3,
                    enIncrement => s_state(2),
                    increment => up,
                    clk => clk,
                    output => s_out3,
                    terminalCounter => s_terminalCounter3
                );
                
    s_enCounter4 <= s_enCounter3 and s_terminalCounter3;


    counter4:   entity work.CounterDown(Behavioral)
                generic map(maximum_count => 5)
                port map(
                    reset => reset,
                    enStartPause => s_startAndNotEnd,
                    enClk => s_pulse_out(0),
                    enCounter => s_enCounter4,
                    enIncrement => s_state(3),
                    increment => up,
                    clk => clk,
                    output => s_out4,
                    terminalCounter => s_terminalCounter4
                );
    
    led(0) <= s_reachedEnd;
    s_reachedEnd <= s_enCounter4 and s_terminalCounter4;
    s_startAndNotEnd <= '0' when s_reachedEnd='1' else s_start;
    
    
    segdisplay:    entity work.SegDisplay(Behavioral)
                    port map(
                        enDigit => "00001111",
                        enDP => "00000000",
                        value0 => s_out1,
                        value1 => s_out2,
                        value2 => s_out3,
                        value3 => s_out4,
                        value4 => (others => '0'),
                        value5 => (others => '0'),
                        value6 => (others => '0'),
                        value7 => (others => '0'),
                        clk => clk,
                        clkEnable => s_pulse_out(1),
                        an => an,
                        dp => dp,
                        seg => seg
                    );
    
end Behavioral;
