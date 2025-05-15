library ieee;
use ieee.std_logic_1164.all;

entity encoder_4to2_tb is
end encoder_4to2_tb;

architecture behavior of encoder_4to2_tb is
    signal A : std_logic_vector(3 downto 0) := "0000";
    signal Y : std_logic_vector(1 downto 0);

    component encoder_4to2
        Port (
            A : in std_logic_vector(3 downto 0);
            Y : out std_logic_vector(1 downto 0)
        );
    end component;

begin
    uut: encoder_4to2 port map( A => A, Y => Y );

    stim_proc: process
    begin
        A <= "0001"; wait for 10 ns;
        A <= "0010"; wait for 10 ns;
        A <= "0100"; wait for 10 ns;
        A <= "1000"; wait for 10 ns;
        A <= "0000"; wait for 10 ns;
        wait;
    end process;

end behavior;