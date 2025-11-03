library ieee;
use ieee.std_logic_1164.all;

entity Test_Bench_FullAdder is
end Test_Bench_FullAdder;

architecture behavior of Test_Bench_FullAdder is

	component Parte_A
	
		port(A:     in std_logic;
			  B:     in std_logic;
			  C_in:  in std_logic;
			  S:     out std_logic;
			  C_out: out std_logic);
			
	end component;
	
	signal A:     std_logic := '0'; --Entrada A
	signal B:     std_logic := '0'; --Entradas B
	signal C_in:  std_logic := '0'; --Entradas C_in

	signal S:     std_logic; --Salida S
	signal C_out: std_logic; --Salida C_out

Begin
	uut: Parte_A port map (
		A 	  => A,
		B 	  => B,
		C_in  => C_in,
		S 	  => S,
		C_out => C_out
	   );

	stim_proc: process
	begin
		A <= '0'; B <= '0'; C_in <= '0'; wait for 10ns;
		A <= '0'; B <= '0'; C_in <= '1'; wait for 10ns;
		A <= '0'; B <= '1'; C_in <= '0'; wait for 10ns;
		A <= '0'; B <= '1'; C_in <= '1'; wait for 10ns;
		A <= '1'; B <= '0'; C_in <= '0'; wait for 10ns;
		A <= '1'; B <= '0'; C_in <= '1'; wait for 10ns;
		A <= '1'; B <= '1'; C_in <= '0'; wait for 10ns;
		A <= '1'; B <= '1'; C_in <= '1'; wait for 10ns;
		wait;
	end process;
end;