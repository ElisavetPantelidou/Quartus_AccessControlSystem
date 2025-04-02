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

-- DATE "03/31/2025 22:57:56"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	AccessControlSystem IS
    PORT (
	T1 : IN std_logic;
	T2 : IN std_logic;
	S1 : IN std_logic;
	S2 : IN std_logic;
	\Time\ : IN std_logic_vector(31 DOWNTO 0);
	SupervisorVerify : IN std_logic;
	FinalAccess : BUFFER std_logic
	);
END AccessControlSystem;

-- Design Ports Information
-- FinalAccess	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[1]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[4]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[5]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[7]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[8]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[9]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[10]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[11]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[12]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[13]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[14]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[15]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[16]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[17]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[18]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[19]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[20]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[21]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[22]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[23]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[24]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[25]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[26]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[27]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[28]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SupervisorVerify	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[29]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[30]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time[31]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AccessControlSystem IS
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
SIGNAL ww_T2 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL \ww_Time\ : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SupervisorVerify : std_logic;
SIGNAL ww_FinalAccess : std_logic;
SIGNAL \FinalAccess~output_o\ : std_logic;
SIGNAL \Time[29]~input_o\ : std_logic;
SIGNAL \Time[31]~input_o\ : std_logic;
SIGNAL \SupervisorVerify~input_o\ : std_logic;
SIGNAL \Time[30]~input_o\ : std_logic;
SIGNAL \AccessControl_inst|FinalAccess~8_combout\ : std_logic;
SIGNAL \Time[23]~input_o\ : std_logic;
SIGNAL \Time[22]~input_o\ : std_logic;
SIGNAL \Time[21]~input_o\ : std_logic;
SIGNAL \Time[24]~input_o\ : std_logic;
SIGNAL \AccessControl_inst|FinalAccess~6_combout\ : std_logic;
SIGNAL \Time[25]~input_o\ : std_logic;
SIGNAL \Time[28]~input_o\ : std_logic;
SIGNAL \Time[26]~input_o\ : std_logic;
SIGNAL \Time[27]~input_o\ : std_logic;
SIGNAL \AccessControl_inst|FinalAccess~7_combout\ : std_logic;
SIGNAL \AccessControl_inst|FinalAccess~9_combout\ : std_logic;
SIGNAL \T2~input_o\ : std_logic;
SIGNAL \S2~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \T1~input_o\ : std_logic;
SIGNAL \AccessControl_inst|FinalAccess~0_combout\ : std_logic;
SIGNAL \Time[5]~input_o\ : std_logic;
SIGNAL \Time[8]~input_o\ : std_logic;
SIGNAL \Time[7]~input_o\ : std_logic;
SIGNAL \Time[6]~input_o\ : std_logic;
SIGNAL \AccessControl_inst|FinalAccess~1_combout\ : std_logic;
SIGNAL \Time[10]~input_o\ : std_logic;
SIGNAL \Time[12]~input_o\ : std_logic;
SIGNAL \Time[11]~input_o\ : std_logic;
SIGNAL \Time[9]~input_o\ : std_logic;
SIGNAL \AccessControl_inst|FinalAccess~2_combout\ : std_logic;
SIGNAL \Time[20]~input_o\ : std_logic;
SIGNAL \Time[19]~input_o\ : std_logic;
SIGNAL \Time[18]~input_o\ : std_logic;
SIGNAL \Time[17]~input_o\ : std_logic;
SIGNAL \AccessControl_inst|FinalAccess~4_combout\ : std_logic;
SIGNAL \Time[14]~input_o\ : std_logic;
SIGNAL \Time[15]~input_o\ : std_logic;
SIGNAL \Time[16]~input_o\ : std_logic;
SIGNAL \Time[13]~input_o\ : std_logic;
SIGNAL \AccessControl_inst|FinalAccess~3_combout\ : std_logic;
SIGNAL \AccessControl_inst|FinalAccess~5_combout\ : std_logic;
SIGNAL \Time[4]~input_o\ : std_logic;
SIGNAL \Time[3]~input_o\ : std_logic;
SIGNAL \Time[0]~input_o\ : std_logic;
SIGNAL \Time[2]~input_o\ : std_logic;
SIGNAL \Time[1]~input_o\ : std_logic;
SIGNAL \ShiftIdentification_inst|ShiftValid~0_combout\ : std_logic;
SIGNAL \ShiftIdentification_inst|ShiftValid~1_combout\ : std_logic;
SIGNAL \AccessControl_inst|FinalAccess~10_combout\ : std_logic;

BEGIN

ww_T1 <= T1;
ww_T2 <= T2;
ww_S1 <= S1;
ww_S2 <= S2;
\ww_Time\ <= \Time\;
ww_SupervisorVerify <= SupervisorVerify;
FinalAccess <= ww_FinalAccess;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X1_Y0_N23
\FinalAccess~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AccessControl_inst|FinalAccess~10_combout\,
	devoe => ww_devoe,
	o => \FinalAccess~output_o\);

-- Location: IOIBUF_X34_Y17_N1
\Time[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(29),
	o => \Time[29]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\Time[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(31),
	o => \Time[31]~input_o\);

-- Location: IOIBUF_X34_Y20_N1
\SupervisorVerify~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SupervisorVerify,
	o => \SupervisorVerify~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\Time[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(30),
	o => \Time[30]~input_o\);

-- Location: LCCOMB_X31_Y17_N0
\AccessControl_inst|FinalAccess~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AccessControl_inst|FinalAccess~8_combout\ = (!\Time[29]~input_o\ & (!\Time[31]~input_o\ & (\SupervisorVerify~input_o\ & !\Time[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Time[29]~input_o\,
	datab => \Time[31]~input_o\,
	datac => \SupervisorVerify~input_o\,
	datad => \Time[30]~input_o\,
	combout => \AccessControl_inst|FinalAccess~8_combout\);

-- Location: IOIBUF_X0_Y6_N15
\Time[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(23),
	o => \Time[23]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\Time[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(22),
	o => \Time[22]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\Time[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(21),
	o => \Time[21]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\Time[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(24),
	o => \Time[24]~input_o\);

-- Location: LCCOMB_X2_Y7_N16
\AccessControl_inst|FinalAccess~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AccessControl_inst|FinalAccess~6_combout\ = (!\Time[23]~input_o\ & (!\Time[22]~input_o\ & (!\Time[21]~input_o\ & !\Time[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Time[23]~input_o\,
	datab => \Time[22]~input_o\,
	datac => \Time[21]~input_o\,
	datad => \Time[24]~input_o\,
	combout => \AccessControl_inst|FinalAccess~6_combout\);

-- Location: IOIBUF_X34_Y16_N8
\Time[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(25),
	o => \Time[25]~input_o\);

-- Location: IOIBUF_X34_Y16_N1
\Time[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(28),
	o => \Time[28]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\Time[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(26),
	o => \Time[26]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\Time[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(27),
	o => \Time[27]~input_o\);

-- Location: LCCOMB_X33_Y16_N24
\AccessControl_inst|FinalAccess~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AccessControl_inst|FinalAccess~7_combout\ = (!\Time[25]~input_o\ & (!\Time[28]~input_o\ & (!\Time[26]~input_o\ & !\Time[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Time[25]~input_o\,
	datab => \Time[28]~input_o\,
	datac => \Time[26]~input_o\,
	datad => \Time[27]~input_o\,
	combout => \AccessControl_inst|FinalAccess~7_combout\);

-- Location: LCCOMB_X2_Y7_N26
\AccessControl_inst|FinalAccess~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AccessControl_inst|FinalAccess~9_combout\ = (\AccessControl_inst|FinalAccess~8_combout\ & (\AccessControl_inst|FinalAccess~6_combout\ & \AccessControl_inst|FinalAccess~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccessControl_inst|FinalAccess~8_combout\,
	datab => \AccessControl_inst|FinalAccess~6_combout\,
	datac => \AccessControl_inst|FinalAccess~7_combout\,
	combout => \AccessControl_inst|FinalAccess~9_combout\);

-- Location: IOIBUF_X0_Y4_N15
\T2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2,
	o => \T2~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\S2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S2,
	o => \S2~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\S1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\T1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1,
	o => \T1~input_o\);

-- Location: LCCOMB_X2_Y7_N24
\AccessControl_inst|FinalAccess~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AccessControl_inst|FinalAccess~0_combout\ = (\T2~input_o\ & ((\S2~input_o\) # ((\S1~input_o\ & \T1~input_o\)))) # (!\T2~input_o\ & (((\S1~input_o\ & \T1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2~input_o\,
	datab => \S2~input_o\,
	datac => \S1~input_o\,
	datad => \T1~input_o\,
	combout => \AccessControl_inst|FinalAccess~0_combout\);

-- Location: IOIBUF_X0_Y9_N8
\Time[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(5),
	o => \Time[5]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\Time[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(8),
	o => \Time[8]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\Time[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(7),
	o => \Time[7]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\Time[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(6),
	o => \Time[6]~input_o\);

-- Location: LCCOMB_X2_Y7_N6
\AccessControl_inst|FinalAccess~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AccessControl_inst|FinalAccess~1_combout\ = (!\Time[5]~input_o\ & (!\Time[8]~input_o\ & (!\Time[7]~input_o\ & !\Time[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Time[5]~input_o\,
	datab => \Time[8]~input_o\,
	datac => \Time[7]~input_o\,
	datad => \Time[6]~input_o\,
	combout => \AccessControl_inst|FinalAccess~1_combout\);

-- Location: IOIBUF_X0_Y7_N1
\Time[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(10),
	o => \Time[10]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\Time[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(12),
	o => \Time[12]~input_o\);

-- Location: IOIBUF_X34_Y7_N15
\Time[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(11),
	o => \Time[11]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\Time[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(9),
	o => \Time[9]~input_o\);

-- Location: LCCOMB_X2_Y7_N0
\AccessControl_inst|FinalAccess~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AccessControl_inst|FinalAccess~2_combout\ = (!\Time[10]~input_o\ & (!\Time[12]~input_o\ & (!\Time[11]~input_o\ & !\Time[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Time[10]~input_o\,
	datab => \Time[12]~input_o\,
	datac => \Time[11]~input_o\,
	datad => \Time[9]~input_o\,
	combout => \AccessControl_inst|FinalAccess~2_combout\);

-- Location: IOIBUF_X0_Y4_N22
\Time[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(20),
	o => \Time[20]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\Time[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(19),
	o => \Time[19]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\Time[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(18),
	o => \Time[18]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\Time[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(17),
	o => \Time[17]~input_o\);

-- Location: LCCOMB_X2_Y7_N4
\AccessControl_inst|FinalAccess~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AccessControl_inst|FinalAccess~4_combout\ = (!\Time[20]~input_o\ & (!\Time[19]~input_o\ & (!\Time[18]~input_o\ & !\Time[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Time[20]~input_o\,
	datab => \Time[19]~input_o\,
	datac => \Time[18]~input_o\,
	datad => \Time[17]~input_o\,
	combout => \AccessControl_inst|FinalAccess~4_combout\);

-- Location: IOIBUF_X1_Y0_N15
\Time[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(14),
	o => \Time[14]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\Time[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(15),
	o => \Time[15]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\Time[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(16),
	o => \Time[16]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\Time[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(13),
	o => \Time[13]~input_o\);

-- Location: LCCOMB_X2_Y7_N10
\AccessControl_inst|FinalAccess~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AccessControl_inst|FinalAccess~3_combout\ = (!\Time[14]~input_o\ & (!\Time[15]~input_o\ & (!\Time[16]~input_o\ & !\Time[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Time[14]~input_o\,
	datab => \Time[15]~input_o\,
	datac => \Time[16]~input_o\,
	datad => \Time[13]~input_o\,
	combout => \AccessControl_inst|FinalAccess~3_combout\);

-- Location: LCCOMB_X2_Y7_N22
\AccessControl_inst|FinalAccess~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AccessControl_inst|FinalAccess~5_combout\ = (\AccessControl_inst|FinalAccess~1_combout\ & (\AccessControl_inst|FinalAccess~2_combout\ & (\AccessControl_inst|FinalAccess~4_combout\ & \AccessControl_inst|FinalAccess~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccessControl_inst|FinalAccess~1_combout\,
	datab => \AccessControl_inst|FinalAccess~2_combout\,
	datac => \AccessControl_inst|FinalAccess~4_combout\,
	datad => \AccessControl_inst|FinalAccess~3_combout\,
	combout => \AccessControl_inst|FinalAccess~5_combout\);

-- Location: IOIBUF_X0_Y5_N22
\Time[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(4),
	o => \Time[4]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\Time[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(3),
	o => \Time[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\Time[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(0),
	o => \Time[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\Time[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(2),
	o => \Time[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\Time[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_Time\(1),
	o => \Time[1]~input_o\);

-- Location: LCCOMB_X2_Y7_N18
\ShiftIdentification_inst|ShiftValid~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftIdentification_inst|ShiftValid~0_combout\ = (!\Time[2]~input_o\ & !\Time[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Time[2]~input_o\,
	datad => \Time[1]~input_o\,
	combout => \ShiftIdentification_inst|ShiftValid~0_combout\);

-- Location: LCCOMB_X2_Y7_N28
\ShiftIdentification_inst|ShiftValid~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftIdentification_inst|ShiftValid~1_combout\ = (\Time[4]~input_o\ & (!\Time[3]~input_o\)) # (!\Time[4]~input_o\ & ((\Time[3]~input_o\ & ((\Time[0]~input_o\) # (!\ShiftIdentification_inst|ShiftValid~0_combout\))) # (!\Time[3]~input_o\ & 
-- ((\ShiftIdentification_inst|ShiftValid~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Time[4]~input_o\,
	datab => \Time[3]~input_o\,
	datac => \Time[0]~input_o\,
	datad => \ShiftIdentification_inst|ShiftValid~0_combout\,
	combout => \ShiftIdentification_inst|ShiftValid~1_combout\);

-- Location: LCCOMB_X2_Y7_N20
\AccessControl_inst|FinalAccess~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AccessControl_inst|FinalAccess~10_combout\ = (\AccessControl_inst|FinalAccess~9_combout\ & (\AccessControl_inst|FinalAccess~0_combout\ & (\AccessControl_inst|FinalAccess~5_combout\ & \ShiftIdentification_inst|ShiftValid~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AccessControl_inst|FinalAccess~9_combout\,
	datab => \AccessControl_inst|FinalAccess~0_combout\,
	datac => \AccessControl_inst|FinalAccess~5_combout\,
	datad => \ShiftIdentification_inst|ShiftValid~1_combout\,
	combout => \AccessControl_inst|FinalAccess~10_combout\);

ww_FinalAccess <= \FinalAccess~output_o\;
END structure;


