
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DataPathCountDown is
--  Port ( );
 port (      clk            : in  std_logic;
             clkEnable      : in  std_logic;
             reset          : in  std_logic;
             run            : in  std_logic;
             setLsecInc     : in std_logic;
             setLsecDec     : in std_logic;
             setHsecInc     : in std_logic;
             setHsecDec     : in std_logic;
             setLminInc     : in std_logic;
             setLminDec     : in std_logic;
             setHminInc     : in std_logic;
             setHminDec     : in std_logic;
             minLCntVal     : out std_logic_vector(3 downto 0);
             minHCntVal     : out std_logic_vector(3 downto 0);
             secLCntVal     : out std_logic_vector(3 downto 0);
             secHCntVal     : out std_logic_vector(3 downto 0);
             zero           : out std_logic -- flag is '1' when the count is 00:00 
);
end DataPathCountDown;

architecture Behavioral of DataPathCountDown is
    signal s_SEC_L_FINISHED, s_SEC_H_FINISHED,  s_MIN_H_FINISHED, s_MIN_L_FINISHED : std_logic;
    signal s_SEC_H_cntEnable, s_MIN_L_cntEnable, s_MIN_H_cntEnable : std_logic; -- 3 + run(o second low)
    
begin  
      
      s_SEC_H_cntEnable  <= run and s_SEC_L_FINISHED;--activate high seconds once low seconds finish
      s_MIN_L_cntEnable <= s_SEC_H_cntEnable and s_SEC_H_FINISHED;--activate low minutes once high seconds finish
      s_MIN_H_cntEnable <= s_MIN_L_cntEnable and s_MIN_L_FINISHED;--activate high minutes once low minutes finish
      
      -- Counters
      SEC_L_COUNTER : entity work.CountDown(Behavioral)
                        generic map(MAX_VAL => 9)
                        port map(reset      => reset,
                                 clk        => clk,
                                 clkEnable  => clkEnable,
                                 cntEnable  => run,
                                 increment  => setLsecInc,
                                 decrement  => setHsecInc,
                                 valOut     => secLCntVal,    
                                 termCnt    => s_SEC_L_FINISHED);
                                 
      SEC_H_COUNTER : entity work.CountDown(Behavioral)
                        generic map(MAX_VAL => 5)
                        port map(reset      => reset,
                                 clk        => clk,
                                 clkEnable  => clkEnable,
                                 cntEnable  => s_SEC_H_cntEnable,
                                 increment  => setHsecInc,
                                 decrement  => setHsecDec,
                                 valOut     => secHCntVal,    
                                 termCnt    => s_SEC_H_FINISHED);
      
      MIN_L_COUNTER : entity work.CountDown(Behavioral)
                        generic map(MAX_VAL => 9)
                        port map(reset      => reset,
                                 clk        => clk,
                                 clkEnable  => clkEnable,
                                 cntEnable  => s_MIN_L_cntEnable,
                                 increment  => setLMinInc,
                                 decrement  => setLMinDec,
                                 valOut     => minLCntVal,    
                                 termCnt    => s_MIN_L_FINISHED);
                                 
      MIN_H_COUNTER : entity work.CountDown(Behavioral)
                        generic map(MAX_VAL => 5)
                        port map(reset      => reset,
                                 clk        => clk,
                                 clkEnable  => clkEnable,
                                 cntEnable  => s_MIN_H_cntEnable,
                                 increment  => setHMinInc,
                                 decrement  => setHMinDec,
                                 valOut     => minHCntVal,    
                                 termCnt    => s_MIN_H_FINISHED);

     zero <= s_SEC_L_FINISHED AND s_SEC_H_FINISHED AND s_MIN_L_FINISHED AND s_MIN_H_FINISHED;
end Behavioral;
