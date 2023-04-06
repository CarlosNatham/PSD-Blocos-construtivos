-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/10/2020 19:22:15"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	projeto1 IS
    PORT (
	i_CLR : IN std_logic;
	i_SET : IN std_logic;
	i_LD : IN std_logic;
	i_SHL : IN std_logic;
	i_SHLIN : IN std_logic;
	i_CLK : IN std_logic;
	i_I0 : IN std_logic;
	i_I1 : IN std_logic;
	i_I2 : IN std_logic;
	i_I3 : IN std_logic;
	i_I4 : IN std_logic;
	i_I5 : IN std_logic;
	i_I6 : IN std_logic;
	i_I7 : IN std_logic;
	o_Q0 : BUFFER std_logic;
	o_Q1 : BUFFER std_logic;
	o_Q2 : BUFFER std_logic;
	o_Q3 : BUFFER std_logic;
	o_Q4 : BUFFER std_logic;
	o_Q5 : BUFFER std_logic;
	o_Q6 : BUFFER std_logic;
	o_Q7 : BUFFER std_logic
	);
END projeto1;

-- Design Ports Information
-- i_SHLIN	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q0	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q1	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q2	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q3	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q4	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q5	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q6	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q7	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLR	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SET	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_LD	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I1	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I0	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SHL	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I2	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I3	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I4	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I5	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I6	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_I7	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CLR : std_logic;
SIGNAL ww_i_SET : std_logic;
SIGNAL ww_i_LD : std_logic;
SIGNAL ww_i_SHL : std_logic;
SIGNAL ww_i_SHLIN : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_I0 : std_logic;
SIGNAL ww_i_I1 : std_logic;
SIGNAL ww_i_I2 : std_logic;
SIGNAL ww_i_I3 : std_logic;
SIGNAL ww_i_I4 : std_logic;
SIGNAL ww_i_I5 : std_logic;
SIGNAL ww_i_I6 : std_logic;
SIGNAL ww_i_I7 : std_logic;
SIGNAL ww_o_Q0 : std_logic;
SIGNAL ww_o_Q1 : std_logic;
SIGNAL ww_o_Q2 : std_logic;
SIGNAL ww_o_Q3 : std_logic;
SIGNAL ww_o_Q4 : std_logic;
SIGNAL ww_o_Q5 : std_logic;
SIGNAL ww_o_Q6 : std_logic;
SIGNAL ww_o_Q7 : std_logic;
SIGNAL \i_SHLIN~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \i_I1~input_o\ : std_logic;
SIGNAL \i_I0~input_o\ : std_logic;
SIGNAL \i_LD~input_o\ : std_logic;
SIGNAL \i_CLR~input_o\ : std_logic;
SIGNAL \i_SET~input_o\ : std_logic;
SIGNAL \u_1|o_Q0~0_combout\ : std_logic;
SIGNAL \i_SHL~input_o\ : std_logic;
SIGNAL \u_1|o_Q0~1_combout\ : std_logic;
SIGNAL \u_1|o_Q0~q\ : std_logic;
SIGNAL \i_I2~input_o\ : std_logic;
SIGNAL \u_1|o_Q1~0_combout\ : std_logic;
SIGNAL \u_1|o_Q1~q\ : std_logic;
SIGNAL \i_I3~input_o\ : std_logic;
SIGNAL \u_1|o_Q2~0_combout\ : std_logic;
SIGNAL \u_1|o_Q2~q\ : std_logic;
SIGNAL \i_I4~input_o\ : std_logic;
SIGNAL \u_1|o_Q3~0_combout\ : std_logic;
SIGNAL \u_1|o_Q3~q\ : std_logic;
SIGNAL \i_I5~input_o\ : std_logic;
SIGNAL \u_1|o_Q4~0_combout\ : std_logic;
SIGNAL \u_1|o_Q4~q\ : std_logic;
SIGNAL \i_I6~input_o\ : std_logic;
SIGNAL \u_1|o_Q5~0_combout\ : std_logic;
SIGNAL \u_1|o_Q5~q\ : std_logic;
SIGNAL \i_I7~input_o\ : std_logic;
SIGNAL \u_1|o_Q6~0_combout\ : std_logic;
SIGNAL \u_1|o_Q6~q\ : std_logic;
SIGNAL \u_1|o_Q7~0_combout\ : std_logic;
SIGNAL \u_1|o_Q7~q\ : std_logic;
SIGNAL \ALT_INV_i_I7~input_o\ : std_logic;
SIGNAL \ALT_INV_i_I6~input_o\ : std_logic;
SIGNAL \ALT_INV_i_I5~input_o\ : std_logic;
SIGNAL \ALT_INV_i_I4~input_o\ : std_logic;
SIGNAL \ALT_INV_i_I3~input_o\ : std_logic;
SIGNAL \ALT_INV_i_I2~input_o\ : std_logic;
SIGNAL \ALT_INV_i_SHL~input_o\ : std_logic;
SIGNAL \ALT_INV_i_I0~input_o\ : std_logic;
SIGNAL \ALT_INV_i_I1~input_o\ : std_logic;
SIGNAL \ALT_INV_i_LD~input_o\ : std_logic;
SIGNAL \ALT_INV_i_SET~input_o\ : std_logic;
SIGNAL \ALT_INV_i_CLR~input_o\ : std_logic;
SIGNAL \u_1|ALT_INV_o_Q7~q\ : std_logic;

BEGIN

ww_i_CLR <= i_CLR;
ww_i_SET <= i_SET;
ww_i_LD <= i_LD;
ww_i_SHL <= i_SHL;
ww_i_SHLIN <= i_SHLIN;
ww_i_CLK <= i_CLK;
ww_i_I0 <= i_I0;
ww_i_I1 <= i_I1;
ww_i_I2 <= i_I2;
ww_i_I3 <= i_I3;
ww_i_I4 <= i_I4;
ww_i_I5 <= i_I5;
ww_i_I6 <= i_I6;
ww_i_I7 <= i_I7;
o_Q0 <= ww_o_Q0;
o_Q1 <= ww_o_Q1;
o_Q2 <= ww_o_Q2;
o_Q3 <= ww_o_Q3;
o_Q4 <= ww_o_Q4;
o_Q5 <= ww_o_Q5;
o_Q6 <= ww_o_Q6;
o_Q7 <= ww_o_Q7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_i_I7~input_o\ <= NOT \i_I7~input_o\;
\ALT_INV_i_I6~input_o\ <= NOT \i_I6~input_o\;
\ALT_INV_i_I5~input_o\ <= NOT \i_I5~input_o\;
\ALT_INV_i_I4~input_o\ <= NOT \i_I4~input_o\;
\ALT_INV_i_I3~input_o\ <= NOT \i_I3~input_o\;
\ALT_INV_i_I2~input_o\ <= NOT \i_I2~input_o\;
\ALT_INV_i_SHL~input_o\ <= NOT \i_SHL~input_o\;
\ALT_INV_i_I0~input_o\ <= NOT \i_I0~input_o\;
\ALT_INV_i_I1~input_o\ <= NOT \i_I1~input_o\;
\ALT_INV_i_LD~input_o\ <= NOT \i_LD~input_o\;
\ALT_INV_i_SET~input_o\ <= NOT \i_SET~input_o\;
\ALT_INV_i_CLR~input_o\ <= NOT \i_CLR~input_o\;
\u_1|ALT_INV_o_Q7~q\ <= NOT \u_1|o_Q7~q\;

-- Location: IOOBUF_X80_Y0_N2
\o_Q0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q0~q\,
	devoe => ww_devoe,
	o => ww_o_Q0);

-- Location: IOOBUF_X80_Y0_N53
\o_Q1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q1~q\,
	devoe => ww_devoe,
	o => ww_o_Q1);

-- Location: IOOBUF_X76_Y0_N53
\o_Q2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q2~q\,
	devoe => ww_devoe,
	o => ww_o_Q2);

-- Location: IOOBUF_X78_Y0_N19
\o_Q3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q3~q\,
	devoe => ww_devoe,
	o => ww_o_Q3);

-- Location: IOOBUF_X78_Y0_N53
\o_Q4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q4~q\,
	devoe => ww_devoe,
	o => ww_o_Q4);

-- Location: IOOBUF_X76_Y0_N2
\o_Q5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q5~q\,
	devoe => ww_devoe,
	o => ww_o_Q5);

-- Location: IOOBUF_X78_Y0_N36
\o_Q6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q6~q\,
	devoe => ww_devoe,
	o => ww_o_Q6);

-- Location: IOOBUF_X78_Y0_N2
\o_Q7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q7~q\,
	devoe => ww_devoe,
	o => ww_o_Q7);

-- Location: IOIBUF_X89_Y25_N21
\i_CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G10
\i_CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK~input_o\,
	outclk => \i_CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X84_Y0_N18
\i_I1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I1,
	o => \i_I1~input_o\);

-- Location: IOIBUF_X84_Y0_N52
\i_I0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I0,
	o => \i_I0~input_o\);

-- Location: IOIBUF_X80_Y0_N18
\i_LD~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_LD,
	o => \i_LD~input_o\);

-- Location: IOIBUF_X84_Y0_N35
\i_CLR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLR,
	o => \i_CLR~input_o\);

-- Location: IOIBUF_X82_Y0_N58
\i_SET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SET,
	o => \i_SET~input_o\);

-- Location: LABCELL_X81_Y1_N39
\u_1|o_Q0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q0~0_combout\ = ( !\i_CLR~input_o\ & ( \i_SET~input_o\ ) ) # ( !\i_CLR~input_o\ & ( !\i_SET~input_o\ & ( (!\i_LD~input_o\ & (\i_I1~input_o\)) # (\i_LD~input_o\ & ((\i_I0~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_I1~input_o\,
	datab => \ALT_INV_i_I0~input_o\,
	datac => \ALT_INV_i_LD~input_o\,
	datae => \ALT_INV_i_CLR~input_o\,
	dataf => \ALT_INV_i_SET~input_o\,
	combout => \u_1|o_Q0~0_combout\);

-- Location: IOIBUF_X86_Y0_N1
\i_SHL~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SHL,
	o => \i_SHL~input_o\);

-- Location: LABCELL_X81_Y1_N51
\u_1|o_Q0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q0~1_combout\ = ( \i_SHL~input_o\ ) # ( !\i_SHL~input_o\ & ( ((\i_SET~input_o\) # (\i_LD~input_o\)) # (\i_CLR~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111111111111111111101111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_CLR~input_o\,
	datab => \ALT_INV_i_LD~input_o\,
	datac => \ALT_INV_i_SET~input_o\,
	datae => \ALT_INV_i_SHL~input_o\,
	combout => \u_1|o_Q0~1_combout\);

-- Location: FF_X81_Y1_N41
\u_1|o_Q0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q0~0_combout\,
	ena => \u_1|o_Q0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q0~q\);

-- Location: IOIBUF_X82_Y0_N41
\i_I2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I2,
	o => \i_I2~input_o\);

-- Location: LABCELL_X81_Y1_N30
\u_1|o_Q1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q1~0_combout\ = ( !\i_CLR~input_o\ & ( \i_SET~input_o\ ) ) # ( !\i_CLR~input_o\ & ( !\i_SET~input_o\ & ( (!\i_LD~input_o\ & ((\i_I2~input_o\))) # (\i_LD~input_o\ & (\i_I1~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_I1~input_o\,
	datab => \ALT_INV_i_LD~input_o\,
	datac => \ALT_INV_i_I2~input_o\,
	datae => \ALT_INV_i_CLR~input_o\,
	dataf => \ALT_INV_i_SET~input_o\,
	combout => \u_1|o_Q1~0_combout\);

-- Location: FF_X81_Y1_N31
\u_1|o_Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q1~0_combout\,
	ena => \u_1|o_Q0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1~q\);

-- Location: IOIBUF_X82_Y0_N75
\i_I3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I3,
	o => \i_I3~input_o\);

-- Location: LABCELL_X81_Y1_N3
\u_1|o_Q2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q2~0_combout\ = ( !\i_CLR~input_o\ & ( \i_SET~input_o\ ) ) # ( !\i_CLR~input_o\ & ( !\i_SET~input_o\ & ( (!\i_LD~input_o\ & ((\i_I3~input_o\))) # (\i_LD~input_o\ & (\i_I2~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_I2~input_o\,
	datab => \ALT_INV_i_I3~input_o\,
	datac => \ALT_INV_i_LD~input_o\,
	datae => \ALT_INV_i_CLR~input_o\,
	dataf => \ALT_INV_i_SET~input_o\,
	combout => \u_1|o_Q2~0_combout\);

-- Location: FF_X81_Y1_N4
\u_1|o_Q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q2~0_combout\,
	ena => \u_1|o_Q0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q2~q\);

-- Location: IOIBUF_X86_Y0_N18
\i_I4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I4,
	o => \i_I4~input_o\);

-- Location: LABCELL_X81_Y1_N42
\u_1|o_Q3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q3~0_combout\ = ( \i_I3~input_o\ & ( \i_SET~input_o\ & ( !\i_CLR~input_o\ ) ) ) # ( !\i_I3~input_o\ & ( \i_SET~input_o\ & ( !\i_CLR~input_o\ ) ) ) # ( \i_I3~input_o\ & ( !\i_SET~input_o\ & ( (!\i_CLR~input_o\ & ((\i_LD~input_o\) # 
-- (\i_I4~input_o\))) ) ) ) # ( !\i_I3~input_o\ & ( !\i_SET~input_o\ & ( (\i_I4~input_o\ & (!\i_LD~input_o\ & !\i_CLR~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000011100000111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_I4~input_o\,
	datab => \ALT_INV_i_LD~input_o\,
	datac => \ALT_INV_i_CLR~input_o\,
	datae => \ALT_INV_i_I3~input_o\,
	dataf => \ALT_INV_i_SET~input_o\,
	combout => \u_1|o_Q3~0_combout\);

-- Location: FF_X81_Y1_N43
\u_1|o_Q3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q3~0_combout\,
	ena => \u_1|o_Q0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q3~q\);

-- Location: IOIBUF_X82_Y0_N92
\i_I5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I5,
	o => \i_I5~input_o\);

-- Location: LABCELL_X81_Y1_N27
\u_1|o_Q4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q4~0_combout\ = ( !\i_CLR~input_o\ & ( \i_I4~input_o\ & ( ((\i_SET~input_o\) # (\i_LD~input_o\)) # (\i_I5~input_o\) ) ) ) # ( !\i_CLR~input_o\ & ( !\i_I4~input_o\ & ( ((\i_I5~input_o\ & !\i_LD~input_o\)) # (\i_SET~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111000000000000000001111111011111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_I5~input_o\,
	datab => \ALT_INV_i_LD~input_o\,
	datac => \ALT_INV_i_SET~input_o\,
	datae => \ALT_INV_i_CLR~input_o\,
	dataf => \ALT_INV_i_I4~input_o\,
	combout => \u_1|o_Q4~0_combout\);

-- Location: FF_X81_Y1_N28
\u_1|o_Q4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q4~0_combout\,
	ena => \u_1|o_Q0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q4~q\);

-- Location: IOIBUF_X84_Y0_N1
\i_I6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I6,
	o => \i_I6~input_o\);

-- Location: LABCELL_X81_Y1_N18
\u_1|o_Q5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q5~0_combout\ = ( \i_LD~input_o\ & ( \i_I6~input_o\ & ( (!\i_CLR~input_o\ & ((\i_I5~input_o\) # (\i_SET~input_o\))) ) ) ) # ( !\i_LD~input_o\ & ( \i_I6~input_o\ & ( !\i_CLR~input_o\ ) ) ) # ( \i_LD~input_o\ & ( !\i_I6~input_o\ & ( (!\i_CLR~input_o\ 
-- & ((\i_I5~input_o\) # (\i_SET~input_o\))) ) ) ) # ( !\i_LD~input_o\ & ( !\i_I6~input_o\ & ( (!\i_CLR~input_o\ & \i_SET~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001010100010101010101010101010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_CLR~input_o\,
	datab => \ALT_INV_i_SET~input_o\,
	datac => \ALT_INV_i_I5~input_o\,
	datae => \ALT_INV_i_LD~input_o\,
	dataf => \ALT_INV_i_I6~input_o\,
	combout => \u_1|o_Q5~0_combout\);

-- Location: FF_X81_Y1_N19
\u_1|o_Q5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q5~0_combout\,
	ena => \u_1|o_Q0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q5~q\);

-- Location: IOIBUF_X80_Y0_N35
\i_I7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_I7,
	o => \i_I7~input_o\);

-- Location: LABCELL_X81_Y1_N12
\u_1|o_Q6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q6~0_combout\ = ( \i_LD~input_o\ & ( \i_I6~input_o\ & ( !\i_CLR~input_o\ ) ) ) # ( !\i_LD~input_o\ & ( \i_I6~input_o\ & ( (!\i_CLR~input_o\ & ((\i_I7~input_o\) # (\i_SET~input_o\))) ) ) ) # ( \i_LD~input_o\ & ( !\i_I6~input_o\ & ( (!\i_CLR~input_o\ 
-- & \i_SET~input_o\) ) ) ) # ( !\i_LD~input_o\ & ( !\i_I6~input_o\ & ( (!\i_CLR~input_o\ & ((\i_I7~input_o\) # (\i_SET~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001000100010001000101010001010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_CLR~input_o\,
	datab => \ALT_INV_i_SET~input_o\,
	datac => \ALT_INV_i_I7~input_o\,
	datae => \ALT_INV_i_LD~input_o\,
	dataf => \ALT_INV_i_I6~input_o\,
	combout => \u_1|o_Q6~0_combout\);

-- Location: FF_X81_Y1_N13
\u_1|o_Q6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q6~0_combout\,
	ena => \u_1|o_Q0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q6~q\);

-- Location: LABCELL_X81_Y1_N6
\u_1|o_Q7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q7~0_combout\ = ( \u_1|o_Q7~q\ & ( \i_I7~input_o\ & ( (!\i_CLR~input_o\ & (((!\i_SHL~input_o\) # (\i_LD~input_o\)) # (\i_SET~input_o\))) ) ) ) # ( !\u_1|o_Q7~q\ & ( \i_I7~input_o\ & ( (!\i_CLR~input_o\ & ((\i_LD~input_o\) # (\i_SET~input_o\))) ) ) 
-- ) # ( \u_1|o_Q7~q\ & ( !\i_I7~input_o\ & ( (!\i_CLR~input_o\ & (((!\i_SHL~input_o\ & !\i_LD~input_o\)) # (\i_SET~input_o\))) ) ) ) # ( !\u_1|o_Q7~q\ & ( !\i_I7~input_o\ & ( (!\i_CLR~input_o\ & \i_SET~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010101000100010001000100010101010101010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_CLR~input_o\,
	datab => \ALT_INV_i_SET~input_o\,
	datac => \ALT_INV_i_SHL~input_o\,
	datad => \ALT_INV_i_LD~input_o\,
	datae => \u_1|ALT_INV_o_Q7~q\,
	dataf => \ALT_INV_i_I7~input_o\,
	combout => \u_1|o_Q7~0_combout\);

-- Location: FF_X81_Y1_N7
\u_1|o_Q7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q7~q\);

-- Location: IOIBUF_X89_Y4_N44
\i_SHLIN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SHLIN,
	o => \i_SHLIN~input_o\);

-- Location: LABCELL_X9_Y33_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


