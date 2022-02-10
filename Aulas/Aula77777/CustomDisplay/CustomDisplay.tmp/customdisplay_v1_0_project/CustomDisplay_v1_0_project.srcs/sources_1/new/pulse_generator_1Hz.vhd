library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pulse_generator_1Hz is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           brCtrl: in STD_LOGIC_VECTOR(2 downto 0);
           refrRate: in STD_LOGIC_VECTOR(2 downto 0);
           br_an_out: out std_logic;
           pulse_1Hz : out STD_LOGIC);
end pulse_generator_1Hz;

architecture Behavioral of pulse_generator_1Hz is

    constant MAX: natural:= 2_000_000;
    signal maximo : natural range 0 to MAX;
    type LUTable is array (0 to 7, 0 to 7) of natural range 0 to MAX;
    constant BRIGHTNESS_LUT: LUTable :=
    (
        (0, 0, 0, 0, 0, 0, 0, 0),
        (280_000, 14_0000, 70_000, 35_000, 17_500, 8_750, 4_375, 2_187),
        (580_000, 290_000, 145_000, 72_500, 36_250, 18_125, 9_062, 4_531),
        (860_000, 430_000, 215_000, 107_500, 53_750, 26_875, 13_437, 6_718),
        (1_140_000, 570_000, 285_000, 142_500, 71_250, 35_625, 17_812, 8_906),
        (1_420_000, 710_000, 355_000, 177_500, 88_750, 44_375, 22_187, 11_093),
        (1_720_000, 860_000, 430_000, 215_000, 107_500, 53_750, 26_875, 13_437),
        (2_000_000, 1_000_000, 500_000, 250_000, 125_000, 62_500, 31_250, 15_625)
    );-- decimal values were rounded to the nearest smaller integer value
    signal n_brLimit: natural range 0 to MAX;
    signal s_counter : natural range 0 to MAX-1;
    
begin
        
    -- PART 4 related
    n_brLimit <= BRIGHTNESS_LUT(to_integer(unsigned(brCtrl)),
        to_integer(unsigned(refrRate))); -- for duty-cycle    
    maximo <= BRIGHTNESS_LUT(7, TO_INTEGER(unsigned(refrRate)));
    -- for generating enable
    
    process(clk)
    begin
        if rising_edge(clk) then
        
            br_an_out <= '1';
            pulse_1Hz <= '0';
            if (reset = '0') then
                s_counter <= 0;
            else
                s_counter <= s_counter + 1;
                if(s_counter = maximo-1) then
                    pulse_1Hz <= '1';
                    s_counter <= 0;
                end if;
                -- PART 4 related
                if(s_counter <= n_brLimit) then
                    br_an_out <= '0';
                end if;
            end if;
        end if;
    end process;

end Behavioral;
