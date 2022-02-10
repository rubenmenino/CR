library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CountDown is
	generic(MAX_VAL : positive);
	port(reset      : in  std_logic;
		 clk        : in  std_logic;
		 clkEnable  : in  std_logic;
		 cntEnable  : in  std_logic;
		 increment  : in  std_logic;
		 decrement  : in  std_logic;
		 valOut     : out std_logic_vector(3 downto 0);
		 termCnt    : out std_logic); 
end CountDown;

architecture Behavioral of CountDown is

    subtype TCount is positive range 0 to MAX_VAL;
	
	signal s_value : TCount := MAX_VAL;
   -- s_value := MAX_VAL;
begin
    
	process(clk)
	begin	
		if (rising_edge(clk)) then
            if (cntEnable = '0' and clkEnable = '1') then	
					-- decrement
					if (decrement = '1') then
						
						if (s_value = 0) then
							s_value <= MAX_VAL;
						else
							s_value <= s_value - 1;
						end if;

					
					-- increment
					elsif (increment = '1') then
						--  wrap value
						if (s_value = MAX_VAL) then
							s_value <= 0;
						else
							s_value <= s_value + 1;
						end if;
                    end if;
                    
            -- Counting
            elsif (clkEnable = '1' and cntEnable = '1') then
               
                if (s_value = 0) then
                    s_value <= MAX_VAL;
                else
                    s_value <= s_value - 1;
                end if;
            end if;
        end if;
	end process;

	valOut  <= std_logic_vector(to_unsigned(s_value, 4));

	termCnt <= '1' when (s_value = 0) else '0';
end Behavioral;
