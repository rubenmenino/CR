
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter4_bits is
    Port ( clk       : in STD_LOGIC;
           reset     : in STD_LOGIC;
           enable    : in STD_LOGIC;
           increment : in std_logic;
           decrement : in std_logic;
           adjust    : in std_logic;
           an_L      : out STD_LOGIC_VECTOR(7 downto 0);
           count     : out STD_LOGIC_VECTOR (3 downto 0));
end counter4_bits;

architecture Behavioral of counter4_bits is
    signal s_count: unsigned(count'range);
    signal s_an: unsigned(an_L'range);
    --signal s_stop : std_logic;
    signal s_stop: bit := '0';
    
begin
    --s_stop <= '0';
    process(clk)
    begin
        
        if rising_edge(clk) then
            if reset = '1' then
                s_stop <= '0';
                s_an <= "11111110";
                s_count <= (others=>'0');
            elsif (adjust = '1') then 
                    if s_stop = '0' then
                        s_stop <= '1';
                    else
                        s_stop <= '0';
                    end if;
            end if;
            if s_stop = '1' then
                   if enable = '1' then 
                        if s_an = "11111110" then --- blinking
                            s_an <= "11111111";
                        else
                            s_an <= "11111110";
                        end if;
                   end if;
                    
                    if (increment = '1') then 
                        s_count <= s_count + 1;
                    elsif (decrement = '1') then 
                        s_count <= s_count - 1;
                    end if;
             
                    
             elsif(enable = '1') then
                    s_an  <= "11111110";
                    s_count <= s_count + 1;
             end if;
        end if;
        
    end process;
    
    count <= std_logic_vector(s_count);
    an_l <= std_logic_vector(s_an);
        
end Behavioral;
