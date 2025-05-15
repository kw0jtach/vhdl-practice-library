library ieee;
use ieee.std_logic_1164.all;

entity decoder_3to8_tb is
end decoder_3to8_tb;

architecture behavior of decoder_3to8_tb is
    signal A : std_logic_vector(2 downto 0) := "000";
    signal Y : std_logic_vector(7 downto 0);
    
    component decoder_3to8
        Port (
            A : in std_logic_vector(2 downto 0);
            Y : out std_logic_vector(7 downto 0)
        );
    end component;

begin
    uut: decoder_3to8 port map( A => A, Y => Y );

    stim_proc: process
    begin
        A <= "000"; wait for 10 ns;
        A <= "001"; wait for 10 ns;
        A <= "010"; wait for 10 ns;
        A <= "011"; wait for 10 ns;
        A <= "100"; wait for 10 ns;
        A <= "101"; wait for 10 ns;
        A <= "110"; wait for 10 ns;
        A <= "111"; wait for 10 ns;
        wait;
    end process;

end behavior;