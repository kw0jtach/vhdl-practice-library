library ieee;
use ieee.std_logic_1164.all;

entity nand_gate_tb is
end nand_gate_tb;

architecture behavior of nand_gate_tb is
    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal Y : std_logic;

    component nand_gate
        Port (
            A : in std_logic;
            B : in std_logic;
            Y : out std_logic
        );
    end component;

begin
    uut : nand_gate port map( A => A, B => B, Y => Y );

    stim_proc: process
    begin
        A <= '0'; B <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; wait for 10 ns;
        wait;
    end process;
end behavior;