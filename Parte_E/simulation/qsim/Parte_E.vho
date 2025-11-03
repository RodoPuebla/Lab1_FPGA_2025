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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/02/2025 21:28:42"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Maquina_De_Estados IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	X : IN std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic
	);
END Maquina_De_Estados;

-- Design Ports Information
-- S1	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Maquina_De_Estados IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S4 : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S4~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \fstate.state_bit_0~1_combout\ : std_logic;
SIGNAL \fstate.state_bit_0~2_combout\ : std_logic;
SIGNAL \fstate.state_bit_0~q\ : std_logic;
SIGNAL \fstate.state_bit_2~0_combout\ : std_logic;
SIGNAL \fstate.state_bit_2~q\ : std_logic;
SIGNAL \fstate.state_bit_1~0_combout\ : std_logic;
SIGNAL \fstate.state_bit_1~q\ : std_logic;
SIGNAL \S4~0_combout\ : std_logic;
SIGNAL \S1~0_combout\ : std_logic;
SIGNAL \S2~0_combout\ : std_logic;
SIGNAL \S4~1_combout\ : std_logic;
SIGNAL \fstate.state_bit_0~0_combout\ : std_logic;
SIGNAL \S3~0_combout\ : std_logic;
SIGNAL \S4~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_X <= X;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
S4 <= ww_S4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y15_N9
\S1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1~0_combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\S2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S2~0_combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\S3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S3~0_combout\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\S4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S4~2_combout\,
	devoe => ww_devoe,
	o => \S4~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\X~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: LCCOMB_X1_Y12_N20
\fstate.state_bit_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fstate.state_bit_0~1_combout\ = (!\reset~input_o\ & ((!\fstate.state_bit_0~q\) # (!\X~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \X~input_o\,
	datad => \fstate.state_bit_0~q\,
	combout => \fstate.state_bit_0~1_combout\);

-- Location: LCCOMB_X1_Y12_N6
\fstate.state_bit_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fstate.state_bit_0~2_combout\ = (\fstate.state_bit_0~1_combout\ & (((!\fstate.state_bit_2~q\ & !\fstate.state_bit_0~q\)) # (!\fstate.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_1~q\,
	datab => \fstate.state_bit_2~q\,
	datac => \fstate.state_bit_0~q\,
	datad => \fstate.state_bit_0~1_combout\,
	combout => \fstate.state_bit_0~2_combout\);

-- Location: FF_X1_Y12_N7
\fstate.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fstate.state_bit_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state_bit_0~q\);

-- Location: LCCOMB_X1_Y12_N30
\fstate.state_bit_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fstate.state_bit_2~0_combout\ = (!\reset~input_o\ & (\fstate.state_bit_1~q\ & \fstate.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \fstate.state_bit_1~q\,
	datad => \fstate.state_bit_0~q\,
	combout => \fstate.state_bit_2~0_combout\);

-- Location: FF_X1_Y12_N13
\fstate.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \fstate.state_bit_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state_bit_2~q\);

-- Location: LCCOMB_X1_Y12_N4
\fstate.state_bit_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fstate.state_bit_1~0_combout\ = (!\reset~input_o\ & (!\fstate.state_bit_2~q\ & ((\fstate.state_bit_1~q\) # (\fstate.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \fstate.state_bit_2~q\,
	datac => \fstate.state_bit_1~q\,
	datad => \fstate.state_bit_0~q\,
	combout => \fstate.state_bit_1~0_combout\);

-- Location: FF_X1_Y12_N5
\fstate.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fstate.state_bit_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state_bit_1~q\);

-- Location: LCCOMB_X1_Y12_N12
\S4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S4~0_combout\ = (!\fstate.state_bit_2~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fstate.state_bit_2~q\,
	datad => \reset~input_o\,
	combout => \S4~0_combout\);

-- Location: LCCOMB_X1_Y12_N18
\S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S1~0_combout\ = (\S4~0_combout\ & ((\fstate.state_bit_1~q\) # ((\X~input_o\) # (\fstate.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_1~q\,
	datab => \X~input_o\,
	datac => \S4~0_combout\,
	datad => \fstate.state_bit_0~q\,
	combout => \S1~0_combout\);

-- Location: LCCOMB_X1_Y12_N16
\S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S2~0_combout\ = (\S4~0_combout\ & ((\fstate.state_bit_1~q\ & ((\X~input_o\) # (!\fstate.state_bit_0~q\))) # (!\fstate.state_bit_1~q\ & ((\fstate.state_bit_0~q\) # (!\X~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_1~q\,
	datab => \X~input_o\,
	datac => \S4~0_combout\,
	datad => \fstate.state_bit_0~q\,
	combout => \S2~0_combout\);

-- Location: LCCOMB_X1_Y12_N22
\S4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S4~1_combout\ = (!\fstate.state_bit_0~q\ & (!\fstate.state_bit_2~q\ & (\fstate.state_bit_1~q\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_0~q\,
	datab => \fstate.state_bit_2~q\,
	datac => \fstate.state_bit_1~q\,
	datad => \reset~input_o\,
	combout => \S4~1_combout\);

-- Location: LCCOMB_X1_Y12_N24
\fstate.state_bit_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fstate.state_bit_0~0_combout\ = (!\fstate.state_bit_1~q\ & (!\X~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_1~q\,
	datac => \X~input_o\,
	datad => \reset~input_o\,
	combout => \fstate.state_bit_0~0_combout\);

-- Location: LCCOMB_X1_Y12_N28
\S3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S3~0_combout\ = (\S4~1_combout\) # ((\fstate.state_bit_0~0_combout\) # ((\fstate.state_bit_2~0_combout\ & \X~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S4~1_combout\,
	datab => \fstate.state_bit_2~0_combout\,
	datac => \X~input_o\,
	datad => \fstate.state_bit_0~0_combout\,
	combout => \S3~0_combout\);

-- Location: LCCOMB_X1_Y12_N26
\S4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S4~2_combout\ = (\S4~1_combout\) # ((!\reset~input_o\ & (!\X~input_o\ & \fstate.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \X~input_o\,
	datac => \S4~1_combout\,
	datad => \fstate.state_bit_0~q\,
	combout => \S4~2_combout\);

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;

ww_S4 <= \S4~output_o\;
END structure;


