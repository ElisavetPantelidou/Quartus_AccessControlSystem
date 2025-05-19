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

-- DATE "05/19/2025 18:43:18"

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

ENTITY 	rtl IS
    PORT (
	T1 : IN std_logic;
	S1 : IN std_logic;
	T2 : IN std_logic;
	S2 : IN std_logic;
	E : IN std_logic;
	P1 : OUT std_logic
	);
END rtl;

-- Design Ports Information
-- P1	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rtl IS
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
SIGNAL ww_P1 : std_logic;
SIGNAL \P1~output_o\ : std_logic;
SIGNAL \S2~input_o\ : std_logic;
SIGNAL \T1~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \T2~input_o\ : std_logic;
SIGNAL \P1~0_combout\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \P1~1_combout\ : std_logic;

BEGIN

ww_T1 <= T1;
ww_S1 <= S1;
ww_T2 <= T2;
ww_S2 <= S2;
ww_E <= E;
P1 <= ww_P1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N9
\P1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1~1_combout\,
	devoe => ww_devoe,
	o => \P1~output_o\);

-- Location: IOIBUF_X10_Y31_N1
\S2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S2,
	o => \S2~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\T1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1,
	o => \T1~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\S1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\T2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2,
	o => \T2~input_o\);

-- Location: LCCOMB_X13_Y1_N0
\P1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \P1~0_combout\ = (\S2~input_o\ & (\T2~input_o\ $ (((\T1~input_o\ & \S1~input_o\))))) # (!\S2~input_o\ & (\T1~input_o\ & (\S1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S2~input_o\,
	datab => \T1~input_o\,
	datac => \S1~input_o\,
	datad => \T2~input_o\,
	combout => \P1~0_combout\);

-- Location: IOIBUF_X14_Y0_N8
\E~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

-- Location: LCCOMB_X13_Y1_N26
\P1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \P1~1_combout\ = (\P1~0_combout\ & \E~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P1~0_combout\,
	datad => \E~input_o\,
	combout => \P1~1_combout\);

ww_P1 <= \P1~output_o\;
END structure;


