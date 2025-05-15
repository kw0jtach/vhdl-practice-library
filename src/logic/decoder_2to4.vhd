library ieee;
use ieee.std_logic_1164.all;

entity decoder_2to4 is
    Port (
        A : in std_logic_vector(1 downto 0);
        Y : out std_logic_vector(3 downto 0)
    );
end decoder_2to4;


architecture Behavioral of decoder_2to4 is
begin
    process(A)
    begin
        case A is
            when "00" =>
                Y <= "0001";
            when "01" =>
                Y <= "0010";
            when "10" =>
                Y <= "0100";
            when "11" =>
                Y <= "1000";
            when others =>
                Y <= (others => '0');
        end case;
    end process;

end Behavioral;