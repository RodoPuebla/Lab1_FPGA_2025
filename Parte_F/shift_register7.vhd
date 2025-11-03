library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_register7 is
    Port (
        clk        : in  STD_LOGIC;                     
        reset      : in  STD_LOGIC;                    
        serial_in  : in  STD_LOGIC;                    
        Q          : out STD_LOGIC_VECTOR(6 downto 0) 
    );
end shift_register7;

architecture Behavioral of shift_register7 is
    signal reg : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
begin
    process(clk, reset)
    begin
        if reset = '1' then
            reg <= (others => '0');                           -- limpia el registro
        elsif rising_edge(clk) then
            reg <= serial_in & reg(6 downto 1);               -- desplazamiento a la derecha
        end if;
    end process;

    Q <= reg;   -- salida paralela
end Behavioral;