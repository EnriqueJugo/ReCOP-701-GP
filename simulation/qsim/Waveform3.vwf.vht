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
-- Generated on "04/27/2025 19:14:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ReCOP_TopLevel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ReCOP_TopLevel_vhd_vec_tst IS
END ReCOP_TopLevel_vhd_vec_tst;
ARCHITECTURE ReCOP_TopLevel_arch OF ReCOP_TopLevel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL pc_ld_tb : STD_LOGIC;
SIGNAL pc_out_tb : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL sip_input : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sop_output : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL z_flag_out : STD_LOGIC;
COMPONENT ReCOP_TopLevel
	PORT (
	clk : IN STD_LOGIC;
	pc_ld_tb : OUT STD_LOGIC;
	pc_out_tb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	reset : IN STD_LOGIC;
	sip_input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	sop_output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	z_flag_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ReCOP_TopLevel
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	pc_ld_tb => pc_ld_tb,
	pc_out_tb => pc_out_tb,
	reset => reset,
	sip_input => sip_input,
	sop_output => sop_output,
	z_flag_out => z_flag_out
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- sip_input[15]
t_prcs_sip_input_15: PROCESS
BEGIN
	sip_input(15) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_15;
-- sip_input[14]
t_prcs_sip_input_14: PROCESS
BEGIN
	sip_input(14) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_14;
-- sip_input[13]
t_prcs_sip_input_13: PROCESS
BEGIN
	sip_input(13) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_13;
-- sip_input[12]
t_prcs_sip_input_12: PROCESS
BEGIN
	sip_input(12) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_12;
-- sip_input[11]
t_prcs_sip_input_11: PROCESS
BEGIN
	sip_input(11) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_11;
-- sip_input[10]
t_prcs_sip_input_10: PROCESS
BEGIN
	sip_input(10) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_10;
-- sip_input[9]
t_prcs_sip_input_9: PROCESS
BEGIN
	sip_input(9) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_9;
-- sip_input[8]
t_prcs_sip_input_8: PROCESS
BEGIN
	sip_input(8) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_8;
-- sip_input[7]
t_prcs_sip_input_7: PROCESS
BEGIN
	sip_input(7) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_7;
-- sip_input[6]
t_prcs_sip_input_6: PROCESS
BEGIN
	sip_input(6) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_6;
-- sip_input[5]
t_prcs_sip_input_5: PROCESS
BEGIN
	sip_input(5) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_5;
-- sip_input[4]
t_prcs_sip_input_4: PROCESS
BEGIN
	sip_input(4) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_4;
-- sip_input[3]
t_prcs_sip_input_3: PROCESS
BEGIN
	sip_input(3) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_3;
-- sip_input[2]
t_prcs_sip_input_2: PROCESS
BEGIN
	sip_input(2) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_2;
-- sip_input[1]
t_prcs_sip_input_1: PROCESS
BEGIN
	sip_input(1) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_1;
-- sip_input[0]
t_prcs_sip_input_0: PROCESS
BEGIN
	sip_input(0) <= '0';
WAIT;
END PROCESS t_prcs_sip_input_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END ReCOP_TopLevel_arch;
