-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/24/2025 22:42:17"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	access_control_system IS
    PORT (
	T1 : IN std_logic;
	S1 : IN std_logic;
	T2 : IN std_logic;
	S2 : IN std_logic;
	E : IN std_logic;
	B1Gate : OUT std_logic;
	B2Gate : OUT std_logic;
	B1Valid : OUT std_logic;
	B2Valid : OUT std_logic;
	P1 : OUT std_logic
	);
END access_control_system;

-- Design Ports Information
-- B1Gate	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2Gate	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1Valid	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2Valid	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P1	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF access_control_system IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_T1 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_T2 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_B1Gate : std_logic;
SIGNAL ww_B2Gate : std_logic;
SIGNAL ww_B1Valid : std_logic;
SIGNAL ww_B2Valid : std_logic;
SIGNAL ww_P1 : std_logic;
SIGNAL \B1Gate~output_o\ : std_logic;
SIGNAL \B2Gate~output_o\ : std_logic;
SIGNAL \B1Valid~output_o\ : std_logic;
SIGNAL \B2Valid~output_o\ : std_logic;
SIGNAL \P1~output_o\ : std_logic;
SIGNAL \T1~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \tempB1Gate~0_combout\ : std_logic;
SIGNAL \S2~input_o\ : std_logic;
SIGNAL \T2~input_o\ : std_logic;
SIGNAL \tempB2Gate~0_combout\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \tempB1Valid~0_combout\ : std_logic;
SIGNAL \tempB2Valid~0_combout\ : std_logic;
SIGNAL \P1~0_combout\ : std_logic;

BEGIN

ww_T1 <= T1;
ww_S1 <= S1;
ww_T2 <= T2;
ww_S2 <= S2;
ww_E <= E;
B1Gate <= ww_B1Gate;
B2Gate <= ww_B2Gate;
B1Valid <= ww_B1Valid;
B2Valid <= ww_B2Valid;
P1 <= ww_P1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N9
\B1Gate~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tempB1Gate~0_combout\,
	devoe => ww_devoe,
	o => \B1Gate~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\B2Gate~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tempB2Gate~0_combout\,
	devoe => ww_devoe,
	o => \B2Gate~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\B1Valid~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tempB1Valid~0_combout\,
	devoe => ww_devoe,
	o => \B1Valid~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\B2Valid~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tempB2Valid~0_combout\,
	devoe => ww_devoe,
	o => \B2Valid~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\P1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1~0_combout\,
	devoe => ww_devoe,
	o => \P1~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\T1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1,
	o => \T1~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\S1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: LCCOMB_X29_Y8_N0
\tempB1Gate~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempB1Gate~0_combout\ = (\T1~input_o\ & \S1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T1~input_o\,
	datac => \S1~input_o\,
	combout => \tempB1Gate~0_combout\);

-- Location: IOIBUF_X12_Y0_N1
\S2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S2,
	o => \S2~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\T2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2,
	o => \T2~input_o\);

-- Location: LCCOMB_X29_Y8_N10
\tempB2Gate~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempB2Gate~0_combout\ = (\S2~input_o\ & \T2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S2~input_o\,
	datad => \T2~input_o\,
	combout => \tempB2Gate~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\E~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

-- Location: LCCOMB_X29_Y8_N20
\tempB1Valid~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempB1Valid~0_combout\ = (\T1~input_o\ & (\S1~input_o\ & \E~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T1~input_o\,
	datac => \S1~input_o\,
	datad => \E~input_o\,
	combout => \tempB1Valid~0_combout\);

-- Location: LCCOMB_X29_Y8_N6
\tempB2Valid~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempB2Valid~0_combout\ = (\T2~input_o\ & (\S2~input_o\ & \E~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2~input_o\,
	datac => \S2~input_o\,
	datad => \E~input_o\,
	combout => \tempB2Valid~0_combout\);

-- Location: LCCOMB_X29_Y8_N8
\P1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \P1~0_combout\ = (\E~input_o\ & (\tempB1Gate~0_combout\ $ (((\T2~input_o\ & \S2~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2~input_o\,
	datab => \tempB1Gate~0_combout\,
	datac => \S2~input_o\,
	datad => \E~input_o\,
	combout => \P1~0_combout\);

ww_B1Gate <= \B1Gate~output_o\;

ww_B2Gate <= \B2Gate~output_o\;

ww_B1Valid <= \B1Valid~output_o\;

ww_B2Valid <= \B2Valid~output_o\;

ww_P1 <= \P1~output_o\;
END structure;


