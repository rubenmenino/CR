library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity counter4bits is 
    port( clk       :      in std_logic;
          reset     :      in std_logic;
          enable    :      in std_logic;
          increment :      in std_logic;
          decrement :      in std_logic;
          valCount  :      out std_logic_vector(3 downto 0);
          valCountSeg :      out std_logic_vector(3 downto 0));
end counter4bits;

architecture Behavioral of counter4bits is 
    signal s_count : unsigned(valCount'range);
    signal s_countHex : unsigned(valCountSeg'range);

begin
    process(clk)
    begin
    if(rising_edge(clk)) then
        if (reset = '1') then
            s_countHex <= (others => '0');
        elsif (enable = '1') then
            if (increment = '1') then
		      s_countHex <= s_countHex + 1;
		    elsif (decrement = '1') then
		      s_countHex <= s_countHex - 1;
		     end if;
		     
		 end if;
	   end if;
	end process;
	
	valCount <= std_logic_vector(s_countHex);
	valCountSeg <= std_logic_vector(s_countHex);
	

end Behavioral;
         
      