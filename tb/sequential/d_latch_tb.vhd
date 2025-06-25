library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_latch_tb is
end d_latch_tb;

architecture behavior of d_latch_tb is
    signal D, EN : std_logic := '0';
    signal Q, Qn : std_logic;

    component d_latch
        Port (
            D  : in std_logic;
            EN : in std_logic;
            Q  : out std_logic;
            Qn : out std_logic;
        );
    end component;

begin
    uut: d_latch port map( D => D, EN => EN, Q => Q, Qn => Qn );

    stim_proc: process
    begin
        D <= '0'; EN <= '0'; wait for 10 ns;
        
        D <= '1'; wait for 10 ns;

        EN <= '1'; wait for 10 ns;

        EN <= '0'; D <= '0'; wait for 10 ns;

        EN <= '1'; wait for 10 ns;

        EN <= '0'; D <= '1'; wait for 10 ns;

        wait;
    end process;
end behavior;