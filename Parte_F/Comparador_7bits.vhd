library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity comparador_7bits is
    Port (
        data_in  : in  STD_LOGIC_VECTOR(6 downto 0);  
        salida   : out STD_LOGIC                      
    );
end comparador_7bits;

architecture Behavioral of comparador_7bits is
    constant DIR : STD_LOGIC_VECTOR(6 downto 0) := "1010101";
begin
    -- Comparación directa
    process(data_in)
    begin
        if data_in = DIR then
            salida <= '1';
        else
            salida <= '0';
        end if;
    end process;
end Behavioral;
