library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;


entity CounterDown is
    generic(maximum_count  :   integer := 9);
    Port (
        reset           :   in std_logic;
        enStartPause    :   in std_logic;
        enClk           :   in std_logic;
        enCounter       :   in std_logic;
        enIncrement     :   in std_logic;
        increment       :   in std_logic;
        clk             :   in std_logic;
        output          :   out std_logic_vector(3 downto 0);
        terminalCounter :   out std_logic
    );
end CounterDown;

architecture Behavioral of CounterDown is
    signal s_counter    :   integer := 0;
begin
    assert(maximum_count<10);
    
    process(clk)
    begin
        if(rising_edge(clk)) then
            if (reset='1') then
                s_counter <= maximum_count;
            elsif (enIncrement='1') then
                if (increment='1') then
                    if(s_counter = maximum_count) then
                        s_counter <= 0;
                    else
                        s_counter <= s_counter + 1;
                    end if;
                end if;
            elsif (enStartPause='1') then
                if (enClk='1') then
                    if(enCounter='1') then
                        if(s_counter = 0) then
                            s_counter <= maximum_count;
                        else
                            s_counter <= s_counter - 1;
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;
    terminalCounter <= '1' when s_counter=0 else '0';
    output <= std_logic_vector(to_unsigned(s_counter, output'length));
end Behavioral;
