library ieee;
use ieee.std_logic_1164.all;

entity Test_Bench_MultiplicadorSS is
end Test_Bench_MultiplicadorSS;

architecture arquitectura of Test_Bench_MultiplicadorSS is
	component Parte_B
	port(A0 :  in std_logic;
		  A1 :  in std_logic;
		  B0 :  in std_logic;
		  B1 :  in std_logic;
		  S0 :  out std_logic;
		  S1 :  out std_logic;
		  S2 :  out std_logic;
		  C1 :  out std_logic
		 );
	end component;


	signal A0 : std_logic := '0';
	signal A1 : std_logic := '0';
	signal B0 : std_logic := '0';
	signal B1 : std_logic := '0';


	signal S0 : std_logic;
	signal S1 : std_logic;
	signal S2 : std_logic;
	signal C1 : std_logic;

begin
	uut: Parte_B port map (
		A0  => A0,
		A1  => A1,
		B0  => B0,
		B1  => B1,
		S0  => S0,
		S1  => S1,
		S2  => S2,
		C1  => C1
	);

	stim_proc: process
	begin
		A0 <= '0'; A1 <= '0'; B0 <= '0'; B1 <= '0'; wait for 10ns;
		A0 <= '0'; A1 <= '0'; B0 <= '0'; B1 <= '1'; wait for 10ns;
		A0 <= '0'; A1 <= '0'; B0 <= '1'; B1 <= '0'; wait for 10ns;
		A0 <= '0'; A1 <= '0'; B0 <= '1'; B1 <= '1'; wait for 10ns;
		A0 <= '0'; A1 <= '1'; B0 <= '0'; B1 <= '0'; wait for 10ns;
		A0 <= '0'; A1 <= '1'; B0 <= '0'; B1 <= '1'; wait for 10ns;
		A0 <= '0'; A1 <= '1'; B0 <= '1'; B1 <= '0'; wait for 10ns;
		A0 <= '0'; A1 <= '1'; B0 <= '1'; B1 <= '1'; wait for 10ns;
		A0 <= '1'; A1 <= '0'; B0 <= '0'; B1 <= '0'; wait for 10ns;
		A0 <= '1'; A1 <= '0'; B0 <= '0'; B1 <= '1'; wait for 10ns;
		A0 <= '1'; A1 <= '0'; B0 <= '1'; B1 <= '0'; wait for 10ns;
		A0 <= '1'; A1 <= '0'; B0 <= '1'; B1 <= '1'; wait for 10ns;
		A0 <= '1'; A1 <= '1'; B0 <= '0'; B1 <= '0'; wait for 10ns;
		A0 <= '1'; A1 <= '1'; B0 <= '0'; B1 <= '1'; wait for 10ns;
		A0 <= '1'; A1 <= '1'; B0 <= '1'; B1 <= '0'; wait for 10ns;
		A0 <= '1'; A1 <= '1'; B0 <= '1'; B1 <= '1'; wait for 10ns;
		wait;
	end process;
end;