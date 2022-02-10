
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CounterFSM is
    Port (
        reset   :   in std_logic;
        clk     :   in std_logic;
        left    :   in std_logic;
        right   :   in std_logic;
        start   :   in std_logic;
        dataOut :   out std_logic_vector(3 downto 0)
    );
end CounterFSM;

architecture Behavioral of CounterFSM is
    type TState is (ST_START, ST_FIRSTD, ST_SECONDD, ST_THIRDD, ST_FOURTHD);
    signal s_currentState, s_nextState  :   TState;
begin

    process(clk)
    begin
        if(rising_edge(clk)) then
            if(reset='1') then
                s_currentState <= ST_FIRSTD;
            else
                s_currentState <= s_nextState;
            end if;
        end if;
    end process;
    
    process(s_currentState, left, right, start)
    begin
        dataOut <= "0000";
        
        case s_currentState is
        
        
        when ST_FIRSTD =>
            dataOut <= "0001";
            
            if (start='1') then
                s_nextState <= ST_START;
            elsif (left='1') then
                s_nextState <= ST_SECONDD;
            elsif (right='1') then
                s_nextState <= ST_FOURTHD;
            else
                s_nextState <= ST_FIRSTD;
            end if;
        
        when ST_SECONDD =>
            dataOut <= "0010";
            
            if (start='1') then
                s_nextState <= ST_START;
            elsif (left='1') then
                s_nextState <= ST_THIRDD;
            elsif (right='1') then
                s_nextState <= ST_FIRSTD;
            else
                s_nextState <= ST_SECONDD;
            end if;
            
        when ST_THIRDD => 
            dataOut <= "0100";
            
            if (start='1') then
                s_nextState <= ST_START;
            elsif (left='1') then
                s_nextState <= ST_FOURTHD;
            elsif (right='1') then
                s_nextState <= ST_SECONDD;
            else
                s_nextState <= ST_THIRDD;
            end if;
            
        when ST_FOURTHD =>
            dataOut <= "1000";
        
            if (start='1') then
                s_nextState <= ST_START;
            elsif (left='1') then
                s_nextState <= ST_FIRSTD;
            elsif (right='1') then
                s_nextState <= ST_THIRDD;
            else
                s_nextState <= ST_FOURTHD;
            end if;
            
        when others => 
            s_nextState <= ST_START;
        end case;
    end process;

end Behavioral;
