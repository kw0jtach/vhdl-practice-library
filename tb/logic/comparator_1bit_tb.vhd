library ieee;
use ieee.std_logic_1164.all;

entity comparator_1bit_tb is
end comparator_1bit_tb;

architecture behavior of comparator_1bit_tb is
    signal a : std_logic := '0';
    signal b : std_logic := '0';
    signal a_gt_b : std_logic;
    signal a_lt_b : std_logic;
    signal a_eq_b : std_logic;

    component comparator_1bit
        Port (
            a : in std_logic;
            b : in std_logic;
            a_gt_b : out std_logic;
            a_lt_b : out std_logic;
            a_eq_b : out std_logic
        );
    end component;

begin
    uut: comparator_1bit port map(
        a => a,
        b => b,
        a_gt_b => a_gt_b,
        a_lt_b => a_lt_b,
        a_eq_b => a_eq_b
    );

    stim_proc: process
    begin
        a <= '0'; b <= '0'; wait for 10 ns;
        a <= '0'; b <= '1'; wait for 10 ns;
        a <= '1'; b <= '0'; wait for 10 ns;
        a <= '1'; b <= '1'; wait for 10 ns;
        wait;
    end process;

end behavior;