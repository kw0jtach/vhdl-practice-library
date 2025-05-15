library ieee;
use ieee.std_logic_1164.all;

entity comparator_1bit is
    Port (
        a : in std_logic;
        b : in std_logic;
        a_gt_b : out std_logic;
        a_lt_b : out std_logic;
        a_eq_b : out std_logic
    );
end comparator_1bit;

architecture Behavioral of comparator_1bit is
begin
    process(a, b)
    begin
        if (a = '1' and b = '0') then
            a_gt_b <= '1';
            a_lt_b <= '0';
            a_eq_b <= '0';
        elsif (a = '0' and b = '1') then
            a_gt_b <= '0';
            a_lt_b <= '1';
            a_eq_b <= '0';
        else
            a_gt_b <= '0';
            a_lt_b <= '0';
            a_eq_b <= '1';
        end if;
    end process;

end architecture;