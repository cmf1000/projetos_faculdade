-- Copyright (C) 1991-2012 Altera Corporation
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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.0 Build 263 08/02/2012 Service Pack 2 SJ Web Edition"

-- DATE "06/05/2017 14:56:28"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Calc IS
    PORT (
	arm : IN std_logic;
	rec : IN std_logic;
	op : IN std_logic_vector(1 DOWNTO 0);
	x : IN std_logic_vector(3 DOWNTO 0);
	y : IN std_logic_vector(3 DOWNTO 0);
	x_d : OUT std_logic_vector(1 TO 7);
	y_d : OUT std_logic_vector(1 TO 7);
	s_d : OUT std_logic_vector(1 TO 7);
	op_d : OUT std_logic_vector(1 TO 7);
	arm_d : OUT std_logic_vector(1 TO 7);
	sinal_x : OUT std_logic_vector(1 TO 7);
	sinal_y : OUT std_logic_vector(1 TO 7);
	sinal_s : OUT std_logic_vector(1 TO 7)
	);
END Calc;

-- Design Ports Information
-- x_d[7]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_d[6]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_d[5]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_d[4]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_d[3]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_d[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_d[1]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_d[7]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_d[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_d[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_d[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_d[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_d[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_d[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_d[7]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_d[6]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_d[5]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_d[4]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_d[3]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_d[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_d[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_d[7]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_d[6]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_d[5]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_d[4]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_d[3]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_d[2]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_d[1]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_d[7]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_d[6]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_d[5]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_d[4]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_d[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_d[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm_d[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_x[7]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_x[6]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_x[5]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_x[4]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_x[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_x[2]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_x[1]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_y[7]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_y[6]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_y[5]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_y[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_y[3]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_y[2]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_y[1]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_s[7]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_s[6]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_s[5]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_s[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_s[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_s[2]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal_s[1]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arm	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Calc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_arm : std_logic;
SIGNAL ww_rec : std_logic;
SIGNAL ww_op : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_x_d : std_logic_vector(1 TO 7);
SIGNAL ww_y_d : std_logic_vector(1 TO 7);
SIGNAL ww_s_d : std_logic_vector(1 TO 7);
SIGNAL ww_op_d : std_logic_vector(1 TO 7);
SIGNAL ww_arm_d : std_logic_vector(1 TO 7);
SIGNAL ww_sinal_x : std_logic_vector(1 TO 7);
SIGNAL ww_sinal_y : std_logic_vector(1 TO 7);
SIGNAL ww_sinal_s : std_logic_vector(1 TO 7);
SIGNAL \stage0|comb~0_combout\ : std_logic;
SIGNAL \stage0|stage1|cout~0_combout\ : std_logic;
SIGNAL \stage0|stage3|s~combout\ : std_logic;
SIGNAL \stage0|stage3|cout~0_combout\ : std_logic;
SIGNAL \x_d[7]~output_o\ : std_logic;
SIGNAL \x_d[6]~output_o\ : std_logic;
SIGNAL \x_d[5]~output_o\ : std_logic;
SIGNAL \x_d[4]~output_o\ : std_logic;
SIGNAL \x_d[3]~output_o\ : std_logic;
SIGNAL \x_d[2]~output_o\ : std_logic;
SIGNAL \x_d[1]~output_o\ : std_logic;
SIGNAL \y_d[7]~output_o\ : std_logic;
SIGNAL \y_d[6]~output_o\ : std_logic;
SIGNAL \y_d[5]~output_o\ : std_logic;
SIGNAL \y_d[4]~output_o\ : std_logic;
SIGNAL \y_d[3]~output_o\ : std_logic;
SIGNAL \y_d[2]~output_o\ : std_logic;
SIGNAL \y_d[1]~output_o\ : std_logic;
SIGNAL \s_d[7]~output_o\ : std_logic;
SIGNAL \s_d[6]~output_o\ : std_logic;
SIGNAL \s_d[5]~output_o\ : std_logic;
SIGNAL \s_d[4]~output_o\ : std_logic;
SIGNAL \s_d[3]~output_o\ : std_logic;
SIGNAL \s_d[2]~output_o\ : std_logic;
SIGNAL \s_d[1]~output_o\ : std_logic;
SIGNAL \op_d[7]~output_o\ : std_logic;
SIGNAL \op_d[6]~output_o\ : std_logic;
SIGNAL \op_d[5]~output_o\ : std_logic;
SIGNAL \op_d[4]~output_o\ : std_logic;
SIGNAL \op_d[3]~output_o\ : std_logic;
SIGNAL \op_d[2]~output_o\ : std_logic;
SIGNAL \op_d[1]~output_o\ : std_logic;
SIGNAL \arm_d[7]~output_o\ : std_logic;
SIGNAL \arm_d[6]~output_o\ : std_logic;
SIGNAL \arm_d[5]~output_o\ : std_logic;
SIGNAL \arm_d[4]~output_o\ : std_logic;
SIGNAL \arm_d[3]~output_o\ : std_logic;
SIGNAL \arm_d[2]~output_o\ : std_logic;
SIGNAL \arm_d[1]~output_o\ : std_logic;
SIGNAL \sinal_x[7]~output_o\ : std_logic;
SIGNAL \sinal_x[6]~output_o\ : std_logic;
SIGNAL \sinal_x[5]~output_o\ : std_logic;
SIGNAL \sinal_x[4]~output_o\ : std_logic;
SIGNAL \sinal_x[3]~output_o\ : std_logic;
SIGNAL \sinal_x[2]~output_o\ : std_logic;
SIGNAL \sinal_x[1]~output_o\ : std_logic;
SIGNAL \sinal_y[7]~output_o\ : std_logic;
SIGNAL \sinal_y[6]~output_o\ : std_logic;
SIGNAL \sinal_y[5]~output_o\ : std_logic;
SIGNAL \sinal_y[4]~output_o\ : std_logic;
SIGNAL \sinal_y[3]~output_o\ : std_logic;
SIGNAL \sinal_y[2]~output_o\ : std_logic;
SIGNAL \sinal_y[1]~output_o\ : std_logic;
SIGNAL \sinal_s[7]~output_o\ : std_logic;
SIGNAL \sinal_s[6]~output_o\ : std_logic;
SIGNAL \sinal_s[5]~output_o\ : std_logic;
SIGNAL \sinal_s[4]~output_o\ : std_logic;
SIGNAL \sinal_s[3]~output_o\ : std_logic;
SIGNAL \sinal_s[2]~output_o\ : std_logic;
SIGNAL \sinal_s[1]~output_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \stage1|Mux6~0_combout\ : std_logic;
SIGNAL \stage1|Mux5~0_combout\ : std_logic;
SIGNAL \stage1|Mux4~0_combout\ : std_logic;
SIGNAL \stage1|Mux3~0_combout\ : std_logic;
SIGNAL \stage1|Mux2~0_combout\ : std_logic;
SIGNAL \stage1|Mux1~0_combout\ : std_logic;
SIGNAL \stage1|Mux0~0_combout\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \stage2|Mux6~0_combout\ : std_logic;
SIGNAL \stage2|Mux5~0_combout\ : std_logic;
SIGNAL \stage2|Mux4~0_combout\ : std_logic;
SIGNAL \stage2|Mux3~0_combout\ : std_logic;
SIGNAL \stage2|Mux2~0_combout\ : std_logic;
SIGNAL \stage2|Mux1~0_combout\ : std_logic;
SIGNAL \stage2|Mux0~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \stage0|stage0|cout~1_combout\ : std_logic;
SIGNAL \stage0|stage0|cout~0_combout\ : std_logic;
SIGNAL \stage0|stage1|s~combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \stagef|Mux6~0_combout\ : std_logic;
SIGNAL \stage0|stage2|cout~0_combout\ : std_logic;
SIGNAL \err~0_combout\ : std_logic;
SIGNAL \stagef|leds[7]~0_combout\ : std_logic;
SIGNAL \stagef|Mux5~0_combout\ : std_logic;
SIGNAL \stagef|leds[6]~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \stage0|stage2|s~0_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \stagef|leds[5]~2_combout\ : std_logic;
SIGNAL \stagef|leds[4]~3_combout\ : std_logic;
SIGNAL \stagef|Mux2~0_combout\ : std_logic;
SIGNAL \stagef|leds[3]~4_combout\ : std_logic;
SIGNAL \stagef|Mux1~0_combout\ : std_logic;
SIGNAL \stagef|leds[2]~5_combout\ : std_logic;
SIGNAL \stagef|Mux0~0_combout\ : std_logic;
SIGNAL \stagef|leds[1]~6_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \stageop|Mux1~1_combout\ : std_logic;
SIGNAL \stageop|Mux1~0_combout\ : std_logic;
SIGNAL \rec~input_o\ : std_logic;
SIGNAL \arm~input_o\ : std_logic;
SIGNAL \stagesalva2|q~combout\ : std_logic;
SIGNAL \stagesalva3|q~combout\ : std_logic;
SIGNAL \stagesalva0|q~combout\ : std_logic;
SIGNAL \stage_rec|leds[7]~3_combout\ : std_logic;
SIGNAL \stagesalva4|q~combout\ : std_logic;
SIGNAL \stage_rec|leds[7]~39_combout\ : std_logic;
SIGNAL \stage_rec|leds[6]~9_combout\ : std_logic;
SIGNAL \stage_rec|leds[6]~40_combout\ : std_logic;
SIGNAL \stagesalva1|q~combout\ : std_logic;
SIGNAL \stage_rec|leds[5]~27_combout\ : std_logic;
SIGNAL \stage_rec|leds[5]~43_combout\ : std_logic;
SIGNAL \stage_rec|leds[4]~36_combout\ : std_logic;
SIGNAL \stage_rec|leds[4]~44_combout\ : std_logic;
SIGNAL \stage_rec|leds[3]~45_combout\ : std_logic;
SIGNAL \stage_rec|leds[3]~46_combout\ : std_logic;
SIGNAL \stage_rec|leds[2]~15_combout\ : std_logic;
SIGNAL \stage_rec|leds[2]~41_combout\ : std_logic;
SIGNAL \stage_rec|leds[1]~21_combout\ : std_logic;
SIGNAL \stage_rec|leds[1]~42_combout\ : std_logic;
SIGNAL \stage_rec|ALT_INV_leds[4]~44_combout\ : std_logic;
SIGNAL \stage_rec|ALT_INV_leds[7]~39_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \stagef|ALT_INV_leds[7]~0_combout\ : std_logic;
SIGNAL \stage2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \stage1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_op[1]~input_o\ : std_logic;

BEGIN

ww_arm <= arm;
ww_rec <= rec;
ww_op <= op;
ww_x <= x;
ww_y <= y;
x_d <= ww_x_d;
y_d <= ww_y_d;
s_d <= ww_s_d;
op_d <= ww_op_d;
arm_d <= ww_arm_d;
sinal_x <= ww_sinal_x;
sinal_y <= ww_sinal_y;
sinal_s <= ww_sinal_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\stage_rec|ALT_INV_leds[4]~44_combout\ <= NOT \stage_rec|leds[4]~44_combout\;
\stage_rec|ALT_INV_leds[7]~39_combout\ <= NOT \stage_rec|leds[7]~39_combout\;
\ALT_INV_Mux0~2_combout\ <= NOT \Mux0~2_combout\;
\stagef|ALT_INV_leds[7]~0_combout\ <= NOT \stagef|leds[7]~0_combout\;
\stage2|ALT_INV_Mux6~0_combout\ <= NOT \stage2|Mux6~0_combout\;
\stage1|ALT_INV_Mux6~0_combout\ <= NOT \stage1|Mux6~0_combout\;
\ALT_INV_op[1]~input_o\ <= NOT \op[1]~input_o\;

-- Location: LCCOMB_X113_Y8_N6
\stage0|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|comb~0_combout\ = \op[0]~input_o\ $ (\y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \y[1]~input_o\,
	combout => \stage0|comb~0_combout\);

-- Location: LCCOMB_X113_Y8_N14
\stage0|stage1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage1|cout~0_combout\ = (\stage0|comb~0_combout\ & ((\stage0|stage0|cout~1_combout\) # ((\x[1]~input_o\) # (\stage0|stage0|cout~0_combout\)))) # (!\stage0|comb~0_combout\ & (\x[1]~input_o\ & ((\stage0|stage0|cout~1_combout\) # 
-- (\stage0|stage0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|comb~0_combout\,
	datab => \stage0|stage0|cout~1_combout\,
	datac => \x[1]~input_o\,
	datad => \stage0|stage0|cout~0_combout\,
	combout => \stage0|stage1|cout~0_combout\);

-- Location: LCCOMB_X114_Y8_N20
\stage0|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage3|s~combout\ = \stage0|stage2|cout~0_combout\ $ (\y[3]~input_o\ $ (\x[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage0|stage2|cout~0_combout\,
	datac => \y[3]~input_o\,
	datad => \x[3]~input_o\,
	combout => \stage0|stage3|s~combout\);

-- Location: LCCOMB_X114_Y8_N14
\stage0|stage3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage3|cout~0_combout\ = (\stage0|stage2|cout~0_combout\ & ((\x[3]~input_o\) # (\op[0]~input_o\ $ (\y[3]~input_o\)))) # (!\stage0|stage2|cout~0_combout\ & (\x[3]~input_o\ & (\op[0]~input_o\ $ (\y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \stage0|stage2|cout~0_combout\,
	datac => \y[3]~input_o\,
	datad => \x[3]~input_o\,
	combout => \stage0|stage3|cout~0_combout\);

-- Location: IOOBUF_X79_Y0_N23
\x_d[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \x_d[7]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\x_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \x_d[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\x_d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \x_d[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\x_d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \x_d[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\x_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \x_d[3]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\x_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \x_d[2]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\x_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \x_d[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\y_d[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \y_d[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\y_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \y_d[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\y_d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \y_d[5]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\y_d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \y_d[4]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\y_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \y_d[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\y_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \y_d[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\y_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \y_d[1]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\s_d[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stagef|ALT_INV_leds[7]~0_combout\,
	devoe => ww_devoe,
	o => \s_d[7]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\s_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stagef|leds[6]~1_combout\,
	devoe => ww_devoe,
	o => \s_d[6]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\s_d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stagef|leds[5]~2_combout\,
	devoe => ww_devoe,
	o => \s_d[5]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\s_d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stagef|leds[4]~3_combout\,
	devoe => ww_devoe,
	o => \s_d[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\s_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stagef|leds[3]~4_combout\,
	devoe => ww_devoe,
	o => \s_d[3]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\s_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stagef|leds[2]~5_combout\,
	devoe => ww_devoe,
	o => \s_d[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\s_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stagef|leds[1]~6_combout\,
	devoe => ww_devoe,
	o => \s_d[1]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\op_d[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_op[1]~input_o\,
	devoe => ww_devoe,
	o => \op_d[7]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\op_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~2_combout\,
	devoe => ww_devoe,
	o => \op_d[6]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\op_d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \op[0]~input_o\,
	devoe => ww_devoe,
	o => \op_d[5]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\op_d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stageop|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \op_d[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\op_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stageop|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \op_d[3]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\op_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \op_d[2]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\op_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stageop|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \op_d[1]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\arm_d[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage_rec|ALT_INV_leds[7]~39_combout\,
	devoe => ww_devoe,
	o => \arm_d[7]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\arm_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage_rec|leds[6]~40_combout\,
	devoe => ww_devoe,
	o => \arm_d[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\arm_d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage_rec|leds[5]~43_combout\,
	devoe => ww_devoe,
	o => \arm_d[5]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\arm_d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage_rec|ALT_INV_leds[4]~44_combout\,
	devoe => ww_devoe,
	o => \arm_d[4]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\arm_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage_rec|leds[3]~46_combout\,
	devoe => ww_devoe,
	o => \arm_d[3]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\arm_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage_rec|leds[2]~41_combout\,
	devoe => ww_devoe,
	o => \arm_d[2]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\arm_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage_rec|leds[1]~42_combout\,
	devoe => ww_devoe,
	o => \arm_d[1]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\sinal_x[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sinal_x[7]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\sinal_x[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x[3]~input_o\,
	devoe => ww_devoe,
	o => \sinal_x[6]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\sinal_x[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x[3]~input_o\,
	devoe => ww_devoe,
	o => \sinal_x[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\sinal_x[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x[3]~input_o\,
	devoe => ww_devoe,
	o => \sinal_x[4]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\sinal_x[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sinal_x[3]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\sinal_x[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sinal_x[2]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\sinal_x[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x[3]~input_o\,
	devoe => ww_devoe,
	o => \sinal_x[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\sinal_y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sinal_y[7]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\sinal_y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3]~input_o\,
	devoe => ww_devoe,
	o => \sinal_y[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\sinal_y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3]~input_o\,
	devoe => ww_devoe,
	o => \sinal_y[5]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\sinal_y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3]~input_o\,
	devoe => ww_devoe,
	o => \sinal_y[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\sinal_y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sinal_y[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\sinal_y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sinal_y[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\sinal_y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3]~input_o\,
	devoe => ww_devoe,
	o => \sinal_y[1]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\sinal_s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sinal_s[7]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\sinal_s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \sinal_s[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\sinal_s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \sinal_s[5]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\sinal_s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \sinal_s[4]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\sinal_s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sinal_s[3]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\sinal_s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sinal_s[2]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\sinal_s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \sinal_s[1]~output_o\);

-- Location: IOIBUF_X115_Y15_N8
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LCCOMB_X114_Y8_N0
\stage1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux6~0_combout\ = (\x[2]~input_o\ & (((!\x[0]~input_o\) # (!\x[1]~input_o\)))) # (!\x[2]~input_o\ & ((\x[1]~input_o\) # ((\x[3]~input_o\ & !\x[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \stage1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y8_N26
\stage1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux5~0_combout\ = (\x[1]~input_o\ & ((\x[2]~input_o\ & ((\x[3]~input_o\) # (\x[0]~input_o\))) # (!\x[2]~input_o\ & (!\x[3]~input_o\)))) # (!\x[1]~input_o\ & (\x[0]~input_o\ & ((\x[3]~input_o\) # (!\x[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \stage1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y8_N4
\stage1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux4~0_combout\ = (\x[0]~input_o\) # ((\x[2]~input_o\ & !\x[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \stage1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y8_N22
\stage1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux3~0_combout\ = (\x[2]~input_o\ & (\x[1]~input_o\ $ (!\x[0]~input_o\))) # (!\x[2]~input_o\ & (!\x[1]~input_o\ & \x[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \stage1|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y8_N8
\stage1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux2~0_combout\ = (\x[1]~input_o\ & (!\x[0]~input_o\ & (\x[2]~input_o\ $ (!\x[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \stage1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y8_N10
\stage1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux1~0_combout\ = (\x[2]~input_o\ & (!\x[3]~input_o\ & (\x[1]~input_o\ $ (\x[0]~input_o\)))) # (!\x[2]~input_o\ & (\x[3]~input_o\ & (\x[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \stage1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y8_N12
\stage1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux0~0_combout\ = (\x[3]~input_o\ & (\x[2]~input_o\ & (\x[1]~input_o\ $ (!\x[0]~input_o\)))) # (!\x[3]~input_o\ & (!\x[1]~input_o\ & (\x[2]~input_o\ $ (\x[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \stage1|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LCCOMB_X113_Y8_N24
\stage2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux6~0_combout\ = (\y[0]~input_o\ & (\y[1]~input_o\ $ (((\y[2]~input_o\))))) # (!\y[0]~input_o\ & ((\y[1]~input_o\) # ((\y[3]~input_o\) # (\y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[3]~input_o\,
	datad => \y[2]~input_o\,
	combout => \stage2|Mux6~0_combout\);

-- Location: LCCOMB_X113_Y8_N18
\stage2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux5~0_combout\ = (\y[1]~input_o\ & ((\y[3]~input_o\ & ((\y[2]~input_o\))) # (!\y[3]~input_o\ & ((\y[0]~input_o\) # (!\y[2]~input_o\))))) # (!\y[1]~input_o\ & (\y[0]~input_o\ & ((\y[3]~input_o\) # (!\y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[3]~input_o\,
	datad => \y[2]~input_o\,
	combout => \stage2|Mux5~0_combout\);

-- Location: LCCOMB_X113_Y8_N12
\stage2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux4~0_combout\ = (\y[0]~input_o\) # ((!\y[1]~input_o\ & \y[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datac => \y[1]~input_o\,
	datad => \y[2]~input_o\,
	combout => \stage2|Mux4~0_combout\);

-- Location: LCCOMB_X113_Y8_N30
\stage2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux3~0_combout\ = (\y[0]~input_o\ & (\y[1]~input_o\ $ (!\y[2]~input_o\))) # (!\y[0]~input_o\ & (!\y[1]~input_o\ & \y[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datac => \y[1]~input_o\,
	datad => \y[2]~input_o\,
	combout => \stage2|Mux3~0_combout\);

-- Location: LCCOMB_X113_Y8_N8
\stage2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux2~0_combout\ = (!\y[0]~input_o\ & (\y[1]~input_o\ & (\y[3]~input_o\ $ (!\y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[3]~input_o\,
	datad => \y[2]~input_o\,
	combout => \stage2|Mux2~0_combout\);

-- Location: LCCOMB_X113_Y8_N26
\stage2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux1~0_combout\ = (\y[3]~input_o\ & (((\y[1]~input_o\ & !\y[2]~input_o\)))) # (!\y[3]~input_o\ & (\y[2]~input_o\ & (\y[0]~input_o\ $ (\y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[3]~input_o\,
	datad => \y[2]~input_o\,
	combout => \stage2|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y8_N28
\stage2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux0~0_combout\ = (\y[3]~input_o\ & (\y[2]~input_o\ & (\y[0]~input_o\ $ (!\y[1]~input_o\)))) # (!\y[3]~input_o\ & (!\y[1]~input_o\ & (\y[0]~input_o\ $ (\y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[3]~input_o\,
	datad => \y[2]~input_o\,
	combout => \stage2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y8_N24
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\y[2]~input_o\ & (\x[2]~input_o\ & (\x[3]~input_o\ $ (!\y[3]~input_o\)))) # (!\y[2]~input_o\ & (!\x[2]~input_o\ & (\x[3]~input_o\ $ (!\y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \y[3]~input_o\,
	datad => \x[2]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X114_Y8_N6
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\y[1]~input_o\ & (\x[1]~input_o\ & (\y[0]~input_o\ $ (!\x[0]~input_o\)))) # (!\y[1]~input_o\ & (!\x[1]~input_o\ & (\y[0]~input_o\ $ (!\x[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~input_o\,
	datab => \y[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X115_Y14_N8
\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: LCCOMB_X113_Y8_N4
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\op[1]~input_o\ & (((\Mux3~1_combout\ & \Mux3~0_combout\)))) # (!\op[1]~input_o\ & (\y[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~0_combout\,
	datad => \op[1]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X113_Y8_N22
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\op[1]~input_o\ & ((\op[0]~input_o\ & ((\Mux3~2_combout\))) # (!\op[0]~input_o\ & (\x[0]~input_o\)))) # (!\op[1]~input_o\ & ((\x[0]~input_o\ $ (\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \x[0]~input_o\,
	datac => \Mux3~2_combout\,
	datad => \op[1]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X114_Y8_N18
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = \x[1]~input_o\ $ (((\x[3]~input_o\ & \x[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[3]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: IOIBUF_X115_Y13_N1
\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: LCCOMB_X113_Y8_N2
\stage0|stage0|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage0|cout~1_combout\ = (\x[0]~input_o\ & ((\y[0]~input_o\) # (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datac => \op[0]~input_o\,
	datad => \x[0]~input_o\,
	combout => \stage0|stage0|cout~1_combout\);

-- Location: LCCOMB_X113_Y8_N16
\stage0|stage0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage0|cout~0_combout\ = (!\y[0]~input_o\ & \op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datac => \op[0]~input_o\,
	combout => \stage0|stage0|cout~0_combout\);

-- Location: LCCOMB_X113_Y8_N20
\stage0|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage1|s~combout\ = \stage0|comb~0_combout\ $ (\x[1]~input_o\ $ (((\stage0|stage0|cout~1_combout\) # (\stage0|stage0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|comb~0_combout\,
	datab => \stage0|stage0|cout~1_combout\,
	datac => \x[1]~input_o\,
	datad => \stage0|stage0|cout~0_combout\,
	combout => \stage0|stage1|s~combout\);

-- Location: LCCOMB_X113_Y8_N0
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\op[1]~input_o\ & (\Mux2~2_combout\ & (!\op[0]~input_o\))) # (!\op[1]~input_o\ & (((\stage0|stage1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux2~2_combout\,
	datac => \op[0]~input_o\,
	datad => \stage0|stage1|s~combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X114_Y8_N16
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\x[2]~input_o\ & (\x[3]~input_o\ & (!\x[1]~input_o\ & !\x[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X114_Y16_N2
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\op[1]~input_o\ & (((!\op[0]~input_o\ & \Mux0~0_combout\)))) # (!\op[1]~input_o\ & (\stage0|stage3|s~combout\ $ ((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|stage3|s~combout\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X114_Y16_N28
\stagef|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagef|Mux6~0_combout\ = (\Mux1~3_combout\ & (((!\Mux2~3_combout\)) # (!\Mux3~3_combout\))) # (!\Mux1~3_combout\ & ((\Mux2~3_combout\) # ((!\Mux3~3_combout\ & \Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux2~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \stagef|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y8_N2
\stage0|stage2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage2|cout~0_combout\ = (\stage0|stage1|cout~0_combout\ & ((\x[2]~input_o\) # (\y[2]~input_o\ $ (\op[0]~input_o\)))) # (!\stage0|stage1|cout~0_combout\ & (\x[2]~input_o\ & (\y[2]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|stage1|cout~0_combout\,
	datab => \y[2]~input_o\,
	datac => \op[0]~input_o\,
	datad => \x[2]~input_o\,
	combout => \stage0|stage2|cout~0_combout\);

-- Location: LCCOMB_X114_Y16_N6
\err~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \err~0_combout\ = (\op[1]~input_o\ & (((\Mux0~0_combout\)))) # (!\op[1]~input_o\ & (\stage0|stage3|cout~0_combout\ $ (((\stage0|stage2|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|stage3|cout~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \op[1]~input_o\,
	datad => \stage0|stage2|cout~0_combout\,
	combout => \err~0_combout\);

-- Location: LCCOMB_X114_Y16_N8
\stagef|leds[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagef|leds[7]~0_combout\ = (\stagef|Mux6~0_combout\) # (\err~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stagef|Mux6~0_combout\,
	datad => \err~0_combout\,
	combout => \stagef|leds[7]~0_combout\);

-- Location: LCCOMB_X114_Y16_N18
\stagef|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagef|Mux5~0_combout\ = (\Mux2~3_combout\ & ((\Mux1~3_combout\ & ((\Mux3~3_combout\) # (\Mux0~1_combout\))) # (!\Mux1~3_combout\ & ((!\Mux0~1_combout\))))) # (!\Mux2~3_combout\ & (\Mux3~3_combout\ & ((\Mux0~1_combout\) # (!\Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux2~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \stagef|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y16_N12
\stagef|leds[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagef|leds[6]~1_combout\ = (\stagef|Mux5~0_combout\ & !\err~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stagef|Mux5~0_combout\,
	datad => \err~0_combout\,
	combout => \stagef|leds[6]~1_combout\);

-- Location: LCCOMB_X114_Y8_N28
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = \x[2]~input_o\ $ (((\x[3]~input_o\ & ((\x[1]~input_o\) # (\x[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X114_Y8_N30
\stage0|stage2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage2|s~0_combout\ = \stage0|stage1|cout~0_combout\ $ (\y[2]~input_o\ $ (\op[0]~input_o\ $ (\x[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|stage1|cout~0_combout\,
	datab => \y[2]~input_o\,
	datac => \op[0]~input_o\,
	datad => \x[2]~input_o\,
	combout => \stage0|stage2|s~0_combout\);

-- Location: LCCOMB_X113_Y8_N10
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\op[1]~input_o\ & (!\op[0]~input_o\ & (\Mux1~2_combout\))) # (!\op[1]~input_o\ & (((\stage0|stage2|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \Mux1~2_combout\,
	datac => \stage0|stage2|s~0_combout\,
	datad => \op[1]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X114_Y16_N14
\stagef|leds[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagef|leds[5]~2_combout\ = (!\err~0_combout\ & ((\Mux3~3_combout\) # ((\Mux1~3_combout\ & !\Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux2~3_combout\,
	datad => \err~0_combout\,
	combout => \stagef|leds[5]~2_combout\);

-- Location: LCCOMB_X114_Y16_N24
\stagef|leds[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagef|leds[4]~3_combout\ = (!\err~0_combout\ & ((\Mux1~3_combout\ & (\Mux3~3_combout\ $ (!\Mux2~3_combout\))) # (!\Mux1~3_combout\ & (\Mux3~3_combout\ & !\Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux2~3_combout\,
	datad => \err~0_combout\,
	combout => \stagef|leds[4]~3_combout\);

-- Location: LCCOMB_X114_Y16_N10
\stagef|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagef|Mux2~0_combout\ = (!\Mux3~3_combout\ & (\Mux2~3_combout\ & (\Mux1~3_combout\ $ (!\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux2~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \stagef|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y16_N4
\stagef|leds[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagef|leds[3]~4_combout\ = (\stagef|Mux2~0_combout\) # (\err~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stagef|Mux2~0_combout\,
	datad => \err~0_combout\,
	combout => \stagef|leds[3]~4_combout\);

-- Location: LCCOMB_X114_Y16_N30
\stagef|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagef|Mux1~0_combout\ = (\Mux1~3_combout\ & (!\Mux0~1_combout\ & (\Mux3~3_combout\ $ (\Mux2~3_combout\)))) # (!\Mux1~3_combout\ & (((\Mux2~3_combout\ & \Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux2~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \stagef|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y16_N0
\stagef|leds[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagef|leds[2]~5_combout\ = (\stagef|Mux1~0_combout\) # (\err~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stagef|Mux1~0_combout\,
	datad => \err~0_combout\,
	combout => \stagef|leds[2]~5_combout\);

-- Location: LCCOMB_X114_Y16_N26
\stagef|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagef|Mux0~0_combout\ = (\Mux0~1_combout\ & (\Mux1~3_combout\ & (\Mux3~3_combout\ $ (!\Mux2~3_combout\)))) # (!\Mux0~1_combout\ & (!\Mux2~3_combout\ & (\Mux1~3_combout\ $ (\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux2~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \stagef|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y16_N20
\stagef|leds[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagef|leds[1]~6_combout\ = (\stagef|Mux0~0_combout\ & !\err~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stagef|Mux0~0_combout\,
	datad => \err~0_combout\,
	combout => \stagef|leds[1]~6_combout\);

-- Location: LCCOMB_X114_Y16_N22
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\op[0]~input_o\ & !\op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X114_Y14_N0
\stageop|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stageop|Mux1~1_combout\ = (\op[0]~input_o\ & !\op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \stageop|Mux1~1_combout\);

-- Location: LCCOMB_X114_Y16_N16
\stageop|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stageop|Mux1~0_combout\ = (!\op[0]~input_o\ & \op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	combout => \stageop|Mux1~0_combout\);

-- Location: IOIBUF_X115_Y9_N22
\rec~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec,
	o => \rec~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\arm~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arm,
	o => \arm~input_o\);

-- Location: LCCOMB_X114_Y10_N20
\stagesalva2|q\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagesalva2|q~combout\ = (\arm~input_o\ & ((\Mux1~3_combout\))) # (!\arm~input_o\ & (\stagesalva2|q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stagesalva2|q~combout\,
	datac => \Mux1~3_combout\,
	datad => \arm~input_o\,
	combout => \stagesalva2|q~combout\);

-- Location: LCCOMB_X114_Y10_N22
\stagesalva3|q\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagesalva3|q~combout\ = (\arm~input_o\ & (\Mux0~1_combout\)) # (!\arm~input_o\ & ((\stagesalva3|q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~1_combout\,
	datac => \stagesalva3|q~combout\,
	datad => \arm~input_o\,
	combout => \stagesalva3|q~combout\);

-- Location: LCCOMB_X114_Y10_N8
\stagesalva0|q\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagesalva0|q~combout\ = (\arm~input_o\ & (\Mux3~3_combout\)) # (!\arm~input_o\ & ((\stagesalva0|q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~3_combout\,
	datac => \stagesalva0|q~combout\,
	datad => \arm~input_o\,
	combout => \stagesalva0|q~combout\);

-- Location: LCCOMB_X114_Y10_N24
\stage_rec|leds[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage_rec|leds[7]~3_combout\ = (\stagesalva1|q~combout\ & (((!\stagesalva0|q~combout\)) # (!\stagesalva2|q~combout\))) # (!\stagesalva1|q~combout\ & ((\stagesalva2|q~combout\) # ((\stagesalva3|q~combout\ & !\stagesalva0|q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stagesalva1|q~combout\,
	datab => \stagesalva2|q~combout\,
	datac => \stagesalva3|q~combout\,
	datad => \stagesalva0|q~combout\,
	combout => \stage_rec|leds[7]~3_combout\);

-- Location: LCCOMB_X114_Y10_N30
\stagesalva4|q\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagesalva4|q~combout\ = (\arm~input_o\ & (\err~0_combout\)) # (!\arm~input_o\ & ((\stagesalva4|q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \err~0_combout\,
	datac => \stagesalva4|q~combout\,
	datad => \arm~input_o\,
	combout => \stagesalva4|q~combout\);

-- Location: LCCOMB_X113_Y10_N0
\stage_rec|leds[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage_rec|leds[7]~39_combout\ = (\stagesalva4|q~combout\) # ((\rec~input_o\ & \stage_rec|leds[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec~input_o\,
	datab => \stage_rec|leds[7]~3_combout\,
	datac => \stagesalva4|q~combout\,
	combout => \stage_rec|leds[7]~39_combout\);

-- Location: LCCOMB_X114_Y10_N2
\stage_rec|leds[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage_rec|leds[6]~9_combout\ = (\stagesalva1|q~combout\ & ((\stagesalva2|q~combout\ & ((\stagesalva3|q~combout\) # (\stagesalva0|q~combout\))) # (!\stagesalva2|q~combout\ & (!\stagesalva3|q~combout\)))) # (!\stagesalva1|q~combout\ & 
-- (\stagesalva0|q~combout\ & ((\stagesalva3|q~combout\) # (!\stagesalva2|q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stagesalva1|q~combout\,
	datab => \stagesalva2|q~combout\,
	datac => \stagesalva3|q~combout\,
	datad => \stagesalva0|q~combout\,
	combout => \stage_rec|leds[6]~9_combout\);

-- Location: LCCOMB_X113_Y10_N26
\stage_rec|leds[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage_rec|leds[6]~40_combout\ = (!\stagesalva4|q~combout\ & (\rec~input_o\ & \stage_rec|leds[6]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stagesalva4|q~combout\,
	datac => \rec~input_o\,
	datad => \stage_rec|leds[6]~9_combout\,
	combout => \stage_rec|leds[6]~40_combout\);

-- Location: LCCOMB_X114_Y10_N18
\stagesalva1|q\ : cycloneive_lcell_comb
-- Equation(s):
-- \stagesalva1|q~combout\ = (\arm~input_o\ & (\Mux2~3_combout\)) # (!\arm~input_o\ & ((\stagesalva1|q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~3_combout\,
	datac => \stagesalva1|q~combout\,
	datad => \arm~input_o\,
	combout => \stagesalva1|q~combout\);

-- Location: LCCOMB_X114_Y10_N10
\stage_rec|leds[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage_rec|leds[5]~27_combout\ = (!\stagesalva1|q~combout\ & \stagesalva2|q~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stagesalva1|q~combout\,
	datad => \stagesalva2|q~combout\,
	combout => \stage_rec|leds[5]~27_combout\);

-- Location: LCCOMB_X114_Y10_N4
\stage_rec|leds[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage_rec|leds[5]~43_combout\ = (!\stagesalva4|q~combout\ & (\rec~input_o\ & ((\stage_rec|leds[5]~27_combout\) # (\stagesalva0|q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage_rec|leds[5]~27_combout\,
	datab => \stagesalva0|q~combout\,
	datac => \stagesalva4|q~combout\,
	datad => \rec~input_o\,
	combout => \stage_rec|leds[5]~43_combout\);

-- Location: LCCOMB_X114_Y10_N6
\stage_rec|leds[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage_rec|leds[4]~36_combout\ = (\stagesalva0|q~combout\ & (\stagesalva2|q~combout\ $ (\stagesalva1|q~combout\))) # (!\stagesalva0|q~combout\ & ((\stagesalva1|q~combout\) # (!\stagesalva2|q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stagesalva0|q~combout\,
	datab => \stagesalva2|q~combout\,
	datac => \stagesalva1|q~combout\,
	combout => \stage_rec|leds[4]~36_combout\);

-- Location: LCCOMB_X114_Y10_N0
\stage_rec|leds[4]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage_rec|leds[4]~44_combout\ = (\stage_rec|leds[4]~36_combout\) # ((\stagesalva4|q~combout\) # (!\rec~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage_rec|leds[4]~36_combout\,
	datac => \stagesalva4|q~combout\,
	datad => \rec~input_o\,
	combout => \stage_rec|leds[4]~44_combout\);

-- Location: LCCOMB_X114_Y10_N26
\stage_rec|leds[3]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage_rec|leds[3]~45_combout\ = (\rec~input_o\ & (\stagesalva1|q~combout\ & !\stagesalva0|q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec~input_o\,
	datab => \stagesalva1|q~combout\,
	datac => \stagesalva0|q~combout\,
	combout => \stage_rec|leds[3]~45_combout\);

-- Location: LCCOMB_X114_Y10_N28
\stage_rec|leds[3]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage_rec|leds[3]~46_combout\ = (\stagesalva4|q~combout\) # ((\stage_rec|leds[3]~45_combout\ & (\stagesalva3|q~combout\ $ (!\stagesalva2|q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage_rec|leds[3]~45_combout\,
	datab => \stagesalva4|q~combout\,
	datac => \stagesalva3|q~combout\,
	datad => \stagesalva2|q~combout\,
	combout => \stage_rec|leds[3]~46_combout\);

-- Location: LCCOMB_X114_Y10_N12
\stage_rec|leds[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage_rec|leds[2]~15_combout\ = (\stagesalva2|q~combout\ & (!\stagesalva3|q~combout\ & (\stagesalva1|q~combout\ $ (\stagesalva0|q~combout\)))) # (!\stagesalva2|q~combout\ & (\stagesalva1|q~combout\ & (\stagesalva3|q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stagesalva1|q~combout\,
	datab => \stagesalva2|q~combout\,
	datac => \stagesalva3|q~combout\,
	datad => \stagesalva0|q~combout\,
	combout => \stage_rec|leds[2]~15_combout\);

-- Location: LCCOMB_X114_Y10_N14
\stage_rec|leds[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage_rec|leds[2]~41_combout\ = (\stagesalva4|q~combout\) # ((\stage_rec|leds[2]~15_combout\ & \rec~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage_rec|leds[2]~15_combout\,
	datac => \stagesalva4|q~combout\,
	datad => \rec~input_o\,
	combout => \stage_rec|leds[2]~41_combout\);

-- Location: LCCOMB_X114_Y10_N16
\stage_rec|leds[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage_rec|leds[1]~21_combout\ = (\stagesalva3|q~combout\ & (\stagesalva2|q~combout\ & (\stagesalva1|q~combout\ $ (!\stagesalva0|q~combout\)))) # (!\stagesalva3|q~combout\ & (!\stagesalva1|q~combout\ & (\stagesalva2|q~combout\ $ 
-- (\stagesalva0|q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stagesalva1|q~combout\,
	datab => \stagesalva2|q~combout\,
	datac => \stagesalva3|q~combout\,
	datad => \stagesalva0|q~combout\,
	combout => \stage_rec|leds[1]~21_combout\);

-- Location: LCCOMB_X113_Y10_N20
\stage_rec|leds[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage_rec|leds[1]~42_combout\ = (\rec~input_o\ & (!\stagesalva4|q~combout\ & \stage_rec|leds[1]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec~input_o\,
	datac => \stagesalva4|q~combout\,
	datad => \stage_rec|leds[1]~21_combout\,
	combout => \stage_rec|leds[1]~42_combout\);

ww_x_d(7) <= \x_d[7]~output_o\;

ww_x_d(6) <= \x_d[6]~output_o\;

ww_x_d(5) <= \x_d[5]~output_o\;

ww_x_d(4) <= \x_d[4]~output_o\;

ww_x_d(3) <= \x_d[3]~output_o\;

ww_x_d(2) <= \x_d[2]~output_o\;

ww_x_d(1) <= \x_d[1]~output_o\;

ww_y_d(7) <= \y_d[7]~output_o\;

ww_y_d(6) <= \y_d[6]~output_o\;

ww_y_d(5) <= \y_d[5]~output_o\;

ww_y_d(4) <= \y_d[4]~output_o\;

ww_y_d(3) <= \y_d[3]~output_o\;

ww_y_d(2) <= \y_d[2]~output_o\;

ww_y_d(1) <= \y_d[1]~output_o\;

ww_s_d(7) <= \s_d[7]~output_o\;

ww_s_d(6) <= \s_d[6]~output_o\;

ww_s_d(5) <= \s_d[5]~output_o\;

ww_s_d(4) <= \s_d[4]~output_o\;

ww_s_d(3) <= \s_d[3]~output_o\;

ww_s_d(2) <= \s_d[2]~output_o\;

ww_s_d(1) <= \s_d[1]~output_o\;

ww_op_d(7) <= \op_d[7]~output_o\;

ww_op_d(6) <= \op_d[6]~output_o\;

ww_op_d(5) <= \op_d[5]~output_o\;

ww_op_d(4) <= \op_d[4]~output_o\;

ww_op_d(3) <= \op_d[3]~output_o\;

ww_op_d(2) <= \op_d[2]~output_o\;

ww_op_d(1) <= \op_d[1]~output_o\;

ww_arm_d(7) <= \arm_d[7]~output_o\;

ww_arm_d(6) <= \arm_d[6]~output_o\;

ww_arm_d(5) <= \arm_d[5]~output_o\;

ww_arm_d(4) <= \arm_d[4]~output_o\;

ww_arm_d(3) <= \arm_d[3]~output_o\;

ww_arm_d(2) <= \arm_d[2]~output_o\;

ww_arm_d(1) <= \arm_d[1]~output_o\;

ww_sinal_x(7) <= \sinal_x[7]~output_o\;

ww_sinal_x(6) <= \sinal_x[6]~output_o\;

ww_sinal_x(5) <= \sinal_x[5]~output_o\;

ww_sinal_x(4) <= \sinal_x[4]~output_o\;

ww_sinal_x(3) <= \sinal_x[3]~output_o\;

ww_sinal_x(2) <= \sinal_x[2]~output_o\;

ww_sinal_x(1) <= \sinal_x[1]~output_o\;

ww_sinal_y(7) <= \sinal_y[7]~output_o\;

ww_sinal_y(6) <= \sinal_y[6]~output_o\;

ww_sinal_y(5) <= \sinal_y[5]~output_o\;

ww_sinal_y(4) <= \sinal_y[4]~output_o\;

ww_sinal_y(3) <= \sinal_y[3]~output_o\;

ww_sinal_y(2) <= \sinal_y[2]~output_o\;

ww_sinal_y(1) <= \sinal_y[1]~output_o\;

ww_sinal_s(7) <= \sinal_s[7]~output_o\;

ww_sinal_s(6) <= \sinal_s[6]~output_o\;

ww_sinal_s(5) <= \sinal_s[5]~output_o\;

ww_sinal_s(4) <= \sinal_s[4]~output_o\;

ww_sinal_s(3) <= \sinal_s[3]~output_o\;

ww_sinal_s(2) <= \sinal_s[2]~output_o\;

ww_sinal_s(1) <= \sinal_s[1]~output_o\;
END structure;


