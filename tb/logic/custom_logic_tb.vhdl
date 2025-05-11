library ieee;
use ieee.std_logic_1164.all;

entity custom_logic_tb is
end custom_logic_tb;

architecture behavior of tb_custom_logic is
    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal C : std_logic := '0';
    signal Y       : std_logic;

    component custom_logic
        Port (
            A : in  std_logic;
            B : in  std_logic;
            C : in  std_logic;
            Y : out std_logic
        );
    end component;

begin
    uut: custom_logic port map (A => A, B => B, C => C, Y => Y);

    stim_proc: process
    begin
        A <= '0'; B <= '0'; C <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; C <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; C <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; C <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; C <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; C <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; C <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; C <= '1'; wait for 10 ns;
        wait;
    end process;
end behavior;
