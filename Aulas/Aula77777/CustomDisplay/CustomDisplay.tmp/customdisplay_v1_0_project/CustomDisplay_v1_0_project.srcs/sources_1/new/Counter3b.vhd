library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter3b is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (2 downto 0));
end Counter3b;

architecture Behavioral of Counter3b is

    signal s_count : unsigned (count'range); -- 2 downto 0

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                s_count <= (others => '0');
            else if(enable = '1') then
                s_count <= s_count + 1;
                end if;
            end if;
        end if;
    end process;
    
    count <= std_logic_vector(s_count);

end Behavioral;
