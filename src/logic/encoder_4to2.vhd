library ieee;
use ieee.std_logic_1164.all;

entity encoder_4to2 is
    Port (
        A : in std_logic_vector(3 downto 0);
        Y : out std_logic_vector(1 downto 0)
    );
end encoder_4to2;

architecture Behavioral of encoder_4to2 is
begin
    process(A)
    begin
        case A is
            when "0001" =>
                Y <= "00";
            when "0010" =>
                Y <= "01";
            when "0100" =>
                Y <= "10";
            when "1000" =>
                Y <= "11";
            when others =>
                Y <= (others => '0');
        end case;
    end process;

end Behavioral;