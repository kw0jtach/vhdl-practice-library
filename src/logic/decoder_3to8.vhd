library ieee;
use ieee.std_logic_1164.all;

entity decoder_3to8 is
    Port (
        A : in std_logic_vector(2 downto 0);
        Y : out std_logic_vector(7 downto 0)
    );
end decoder_3to8;

architecture Behavioral of decoder_3to8 is
begin
    process(A)
    begin
        case A is
            when "000" =>
                Y <= "00000001";
            when "001" =>
                Y <= "00000010";
            when "010" =>
                Y <= "00000100";
            when "011" =>
                Y <= "00001000";
            when "100" =>
                Y <= "00010000";
            when "101" =>
                Y <= "00100000";
            when "110" =>
                Y <= "01000000";
            when "111" =>
                Y <= "10000000";
            when others =>
                Y <= (others => '0');
        end case;
    end process;
    
end Behavioral;