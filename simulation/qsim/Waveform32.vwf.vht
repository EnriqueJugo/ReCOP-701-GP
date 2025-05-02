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
-- Generated on "04/28/2025 08:21:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ReCOP_System
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ReCOP_System_vhd_vec_tst IS
END ReCOP_System_vhd_vec_tst;
ARCHITECTURE ReCOP_System_arch OF ReCOP_System_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL inst_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ir_ld_tb : STD_LOGIC;
SIGNAL ir_reset_tb : STD_LOGIC;
SIGNAL LEDR : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL opcode_tb : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL pc_ld_tb : STD_LOGIC;
SIGNAL pc_out_tb : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pc_plus_one_tb : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pc_sel_tb : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL rf_data_in_tb : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rf_data_sel_tb : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rf_ra_tb : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rf_rb_tb : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sip_data_tb : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sip_ld_tb : STD_LOGIC;
SIGNAL sip_reset_tb : STD_LOGIC;
SIGNAL sop_ld_tb : STD_LOGIC;
SIGNAL sop_output : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sop_reset_tb : STD_LOGIC;
SIGNAL state_tb : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL z_flag_out : STD_LOGIC;
COMPONENT ReCOP_System
	PORT (
	clk : IN STD_LOGIC;
	inst_tb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ir_ld_tb : OUT STD_LOGIC;
	ir_reset_tb : OUT STD_LOGIC;
	LEDR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	opcode_tb : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	pc_ld_tb : OUT STD_LOGIC;
	pc_out_tb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_plus_one_tb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_sel_tb : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	reset : IN STD_LOGIC;
	rf_data_in_tb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_data_sel_tb : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	rf_ra_tb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_rb_tb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sip_data_tb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sip_ld_tb : OUT STD_LOGIC;
	sip_reset_tb : OUT STD_LOGIC;
	sop_ld_tb : OUT STD_LOGIC;
	sop_output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sop_reset_tb : OUT STD_LOGIC;
	state_tb : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	z_flag_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ReCOP_System
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	inst_tb => inst_tb,
	ir_ld_tb => ir_ld_tb,
	ir_reset_tb => ir_reset_tb,
	LEDR => LEDR,
	opcode_tb => opcode_tb,
	pc_ld_tb => pc_ld_tb,
	pc_out_tb => pc_out_tb,
	pc_plus_one_tb => pc_plus_one_tb,
	pc_sel_tb => pc_sel_tb,
	reset => reset,
	rf_data_in_tb => rf_data_in_tb,
	rf_data_sel_tb => rf_data_sel_tb,
	rf_ra_tb => rf_ra_tb,
	rf_rb_tb => rf_rb_tb,
	sip_data_tb => sip_data_tb,
	sip_ld_tb => sip_ld_tb,
	sip_reset_tb => sip_reset_tb,
	sop_ld_tb => sop_ld_tb,
	sop_output => sop_output,
	sop_reset_tb => sop_reset_tb,
	state_tb => state_tb,
	SW => SW,
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

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- SW[15]
t_prcs_SW_15: PROCESS
BEGIN
	SW(15) <= '0';
WAIT;
END PROCESS t_prcs_SW_15;
-- SW[14]
t_prcs_SW_14: PROCESS
BEGIN
	SW(14) <= '0';
WAIT;
END PROCESS t_prcs_SW_14;
-- SW[13]
t_prcs_SW_13: PROCESS
BEGIN
	SW(13) <= '0';
WAIT;
END PROCESS t_prcs_SW_13;
-- SW[12]
t_prcs_SW_12: PROCESS
BEGIN
	SW(12) <= '0';
WAIT;
END PROCESS t_prcs_SW_12;
-- SW[11]
t_prcs_SW_11: PROCESS
BEGIN
	SW(11) <= '0';
WAIT;
END PROCESS t_prcs_SW_11;
-- SW[10]
t_prcs_SW_10: PROCESS
BEGIN
	SW(10) <= '0';
WAIT;
END PROCESS t_prcs_SW_10;
-- SW[9]
t_prcs_SW_9: PROCESS
BEGIN
	SW(9) <= '0';
WAIT;
END PROCESS t_prcs_SW_9;
-- SW[8]
t_prcs_SW_8: PROCESS
BEGIN
	SW(8) <= '0';
WAIT;
END PROCESS t_prcs_SW_8;
-- SW[7]
t_prcs_SW_7: PROCESS
BEGIN
	SW(7) <= '0';
WAIT;
END PROCESS t_prcs_SW_7;
-- SW[6]
t_prcs_SW_6: PROCESS
BEGIN
	SW(6) <= '0';
WAIT;
END PROCESS t_prcs_SW_6;
-- SW[5]
t_prcs_SW_5: PROCESS
BEGIN
	SW(5) <= '0';
WAIT;
END PROCESS t_prcs_SW_5;
-- SW[4]
t_prcs_SW_4: PROCESS
BEGIN
	SW(4) <= '0';
WAIT;
END PROCESS t_prcs_SW_4;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '0';
	WAIT FOR 700000 ps;
	SW(3) <= '1';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
	WAIT FOR 300000 ps;
	SW(2) <= '1';
	WAIT FOR 400000 ps;
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '0';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 2
	LOOP
		SW(1) <= '1';
		WAIT FOR 200000 ps;
		SW(1) <= '0';
		WAIT FOR 200000 ps;
	END LOOP;
	SW(1) <= '1';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
LOOP
	SW(0) <= '1';
	WAIT FOR 100000 ps;
	SW(0) <= '0';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_0;
END ReCOP_System_arch;
