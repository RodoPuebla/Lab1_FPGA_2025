-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Mon Oct 27 08:53:32 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Parte_D IS 
	PORT
	(
		A0 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		Selec :  IN  STD_LOGIC;
		S0 :  OUT  STD_LOGIC;
		S1 :  OUT  STD_LOGIC;
		S2 :  OUT  STD_LOGIC;
		S3 :  OUT  STD_LOGIC
	);
END Parte_D;

ARCHITECTURE bdf_type OF Parte_D IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT mux_0
	PORT(S_S0 : IN STD_LOGIC;
		 S_S1 : IN STD_LOGIC;
		 S_S2 : IN STD_LOGIC;
		 S_S3 : IN STD_LOGIC;
		 C_S0 : IN STD_LOGIC;
		 C_S1 : IN STD_LOGIC;
		 C_S2 : IN STD_LOGIC;
		 C_S3 : IN STD_LOGIC;
		 Sel : IN STD_LOGIC;
		 S0 : OUT STD_LOGIC;
		 S1 : OUT STD_LOGIC;
		 S2 : OUT STD_LOGIC;
		 S3 : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF mux_0: COMPONENT IS true;
ATTRIBUTE noopt OF mux_0: COMPONENT IS true;

COMPONENT multiplicador_cs
	PORT(A0 : IN STD_LOGIC;
		 A1 : IN STD_LOGIC;
		 B0 : IN STD_LOGIC;
		 B1 : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 S0 : OUT STD_LOGIC;
		 S1 : OUT STD_LOGIC;
		 S2 : OUT STD_LOGIC;
		 C1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT multiplicador_ss
	PORT(A0 : IN STD_LOGIC;
		 B0 : IN STD_LOGIC;
		 A1 : IN STD_LOGIC;
		 B1 : IN STD_LOGIC;
		 S0 : OUT STD_LOGIC;
		 S1 : OUT STD_LOGIC;
		 S2 : OUT STD_LOGIC;
		 C1 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	DFF_inst8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;


BEGIN 



b2v_inst : multiplicador_cs
PORT MAP(A0 => A0,
		 A1 => A1,
		 B0 => B0,
		 B1 => B1,
		 CLK => CLK,
		 S0 => SYNTHESIZED_WIRE_4,
		 S1 => SYNTHESIZED_WIRE_5,
		 S2 => SYNTHESIZED_WIRE_6,
		 C1 => SYNTHESIZED_WIRE_7);


b2v_inst2 : multiplicador_ss
PORT MAP(A0 => A0,
		 B0 => B0,
		 A1 => A1,
		 B1 => B1,
		 S0 => SYNTHESIZED_WIRE_0,
		 S1 => SYNTHESIZED_WIRE_1,
		 S2 => SYNTHESIZED_WIRE_2,
		 C1 => SYNTHESIZED_WIRE_3);


b2v_inst3 : mux_0
PORT MAP(S_S0 => SYNTHESIZED_WIRE_0,
		 S_S1 => SYNTHESIZED_WIRE_1,
		 S_S2 => SYNTHESIZED_WIRE_2,
		 S_S3 => SYNTHESIZED_WIRE_3,
		 C_S0 => SYNTHESIZED_WIRE_4,
		 C_S1 => SYNTHESIZED_WIRE_5,
		 C_S2 => SYNTHESIZED_WIRE_6,
		 C_S3 => SYNTHESIZED_WIRE_7,
		 Sel => DFF_inst8,
		 S0 => SYNTHESIZED_WIRE_8,
		 S1 => SYNTHESIZED_WIRE_9,
		 S2 => SYNTHESIZED_WIRE_10,
		 S3 => SYNTHESIZED_WIRE_11);


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	S0 <= SYNTHESIZED_WIRE_8;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	S1 <= SYNTHESIZED_WIRE_9;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	S2 <= SYNTHESIZED_WIRE_10;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	S3 <= SYNTHESIZED_WIRE_11;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_inst8 <= Selec;
END IF;
END PROCESS;


END bdf_type;