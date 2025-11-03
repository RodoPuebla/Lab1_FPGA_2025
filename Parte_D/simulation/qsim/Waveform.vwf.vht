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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/02/2025 21:12:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Parte_D
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Parte_D_vhd_vec_tst IS
END Parte_D_vhd_vec_tst;
ARCHITECTURE Parte_D_arch OF Parte_D_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL B0 : STD_LOGIC;
SIGNAL B1 : STD_LOGIC;
SIGNAL Bnadera_Z : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
SIGNAL S3 : STD_LOGIC;
SIGNAL Selec : STD_LOGIC;
COMPONENT Parte_D
	PORT (
	A0 : IN STD_LOGIC;
	A1 : IN STD_LOGIC;
	B0 : IN STD_LOGIC;
	B1 : IN STD_LOGIC;
	Bnadera_Z : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	S0 : OUT STD_LOGIC;
	S1 : OUT STD_LOGIC;
	S2 : OUT STD_LOGIC;
	S3 : OUT STD_LOGIC;
	Selec : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Parte_D
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	A1 => A1,
	B0 => B0,
	B1 => B1,
	Bnadera_Z => Bnadera_Z,
	CLK => CLK,
	S0 => S0,
	S1 => S1,
	S2 => S2,
	S3 => S3,
	Selec => Selec
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		CLK <= '0';
		WAIT FOR 25000 ps;
		CLK <= '1';
		WAIT FOR 25000 ps;
	END LOOP;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- A1
t_prcs_A1: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		A1 <= '0';
		WAIT FOR 25000 ps;
		A1 <= '1';
		WAIT FOR 25000 ps;
	END LOOP;
	A1 <= '0';
WAIT;
END PROCESS t_prcs_A1;

-- A0
t_prcs_A0: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		A0 <= '0';
		WAIT FOR 50000 ps;
		A0 <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	A0 <= '0';
WAIT;
END PROCESS t_prcs_A0;

-- B1
t_prcs_B1: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		B1 <= '0';
		WAIT FOR 100000 ps;
		B1 <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	B1 <= '0';
WAIT;
END PROCESS t_prcs_B1;

-- B0
t_prcs_B0: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		B0 <= '0';
		WAIT FOR 200000 ps;
		B0 <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	B0 <= '0';
WAIT;
END PROCESS t_prcs_B0;

-- Selec
t_prcs_Selec: PROCESS
BEGIN
	Selec <= '0';
	WAIT FOR 400000 ps;
	Selec <= '1';
	WAIT FOR 400000 ps;
	Selec <= '0';
WAIT;
END PROCESS t_prcs_Selec;
END Parte_D_arch;
