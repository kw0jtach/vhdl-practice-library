library ieee;
use ieee.std_logic_1164.all;

entity decoder_2to4_tb is
end decoder_2to4_tb;

architecture behavior of decoder_2to4_tb is
    signal A : std_logic_vector(1 downto 0) := "00";
    signal Y : std_logic_vector(3 downto 0);

    component decoder_2to4
        Port (
            A : in std_logic_vector(1 downto 0);
            Y : out std_logic_vector(3 downto 0)
        );
    end component;

begin
    uut: decoder_2to4 port map( A => A, Y => Y );

    stim_proc: process
    begin
        A <= "00"; wait for 10 ns;
        A <= "01"; wait for 10 ns;
        A <= "10"; wait for 10 ns;
        A <= "11"; wait for 10 ns;
        wait;
    end process;

end behavior;