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
-- Generated on "04/27/2025 20:59:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          datapath
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY datapath_vhd_vec_tst IS
END datapath_vhd_vec_tst;
ARCHITECTURE datapath_arch OF datapath_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr_mode : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL addr_sel : STD_LOGIC;
SIGNAL alu_er_sel : STD_LOGIC;
SIGNAL alu_op : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL alu_ra_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL alu_rb_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL alu_reset : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL clr_z_flag : STD_LOGIC;
SIGNAL data_mem_wr_data_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL dpcr_ld : STD_LOGIC;
SIGNAL dpcr_low_sel : STD_LOGIC;
SIGNAL dpcr_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL dpcr_reset : STD_LOGIC;
SIGNAL eot_clear : STD_LOGIC;
SIGNAL eot_ld : STD_LOGIC;
SIGNAL er_clear : STD_LOGIC;
SIGNAL er_ld : STD_LOGIC;
SIGNAL inst_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ir_ld : STD_LOGIC;
SIGNAL ir_reset : STD_LOGIC;
SIGNAL mar_ld : STD_LOGIC;
SIGNAL mar_reset : STD_LOGIC;
SIGNAL mar_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL mem_read : STD_LOGIC;
SIGNAL mem_write : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL pc_ld : STD_LOGIC;
SIGNAL pc_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pc_plus_one : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pc_reset : STD_LOGIC;
SIGNAL pc_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL read_data_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rf_a_read : STD_LOGIC;
SIGNAL rf_a_sel : STD_LOGIC;
SIGNAL rf_b_read : STD_LOGIC;
SIGNAL rf_b_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rf_reset : STD_LOGIC;
SIGNAL rf_write : STD_LOGIC;
SIGNAL sip_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sip_ld : STD_LOGIC;
SIGNAL sip_reset : STD_LOGIC;
SIGNAL sop_ld : STD_LOGIC;
SIGNAL sop_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sop_reset : STD_LOGIC;
SIGNAL svop_ld : STD_LOGIC;
SIGNAL svop_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL svop_reset : STD_LOGIC;
SIGNAL wr_data_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL z_flag : STD_LOGIC;
COMPONENT datapath
	PORT (
	addr_mode : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	addr_sel : IN STD_LOGIC;
	alu_er_sel : IN STD_LOGIC;
	alu_op : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	alu_ra_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	alu_rb_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	alu_reset : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	clr_z_flag : IN STD_LOGIC;
	data_mem_wr_data_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	dpcr_ld : IN STD_LOGIC;
	dpcr_low_sel : IN STD_LOGIC;
	dpcr_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	dpcr_reset : IN STD_LOGIC;
	eot_clear : IN STD_LOGIC;
	eot_ld : IN STD_LOGIC;
	er_clear : IN STD_LOGIC;
	er_ld : IN STD_LOGIC;
	inst_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ir_ld : IN STD_LOGIC;
	ir_reset : IN STD_LOGIC;
	mar_ld : IN STD_LOGIC;
	mar_reset : IN STD_LOGIC;
	mar_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	mem_read : IN STD_LOGIC;
	mem_write : IN STD_LOGIC;
	opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	pc_ld : IN STD_LOGIC;
	pc_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_plus_one : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_reset : IN STD_LOGIC;
	pc_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	read_data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_a_read : IN STD_LOGIC;
	rf_a_sel : IN STD_LOGIC;
	rf_b_read : IN STD_LOGIC;
	rf_b_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	rf_reset : IN STD_LOGIC;
	rf_write : IN STD_LOGIC;
	sip_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	sip_ld : IN STD_LOGIC;
	sip_reset : IN STD_LOGIC;
	sop_ld : IN STD_LOGIC;
	sop_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sop_reset : IN STD_LOGIC;
	svop_ld : IN STD_LOGIC;
	svop_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	svop_reset : IN STD_LOGIC;
	wr_data_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	z_flag : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : datapath
	PORT MAP (
-- list connections between master ports and signals
	addr_mode => addr_mode,
	addr_sel => addr_sel,
	alu_er_sel => alu_er_sel,
	alu_op => alu_op,
	alu_ra_sel => alu_ra_sel,
	alu_rb_sel => alu_rb_sel,
	alu_reset => alu_reset,
	clk => clk,
	clr_z_flag => clr_z_flag,
	data_mem_wr_data_sel => data_mem_wr_data_sel,
	dpcr_ld => dpcr_ld,
	dpcr_low_sel => dpcr_low_sel,
	dpcr_out => dpcr_out,
	dpcr_reset => dpcr_reset,
	eot_clear => eot_clear,
	eot_ld => eot_ld,
	er_clear => er_clear,
	er_ld => er_ld,
	inst_out => inst_out,
	ir_ld => ir_ld,
	ir_reset => ir_reset,
	mar_ld => mar_ld,
	mar_reset => mar_reset,
	mar_sel => mar_sel,
	mem_read => mem_read,
	mem_write => mem_write,
	opcode => opcode,
	pc_ld => pc_ld,
	pc_out => pc_out,
	pc_plus_one => pc_plus_one,
	pc_reset => pc_reset,
	pc_sel => pc_sel,
	read_data_out => read_data_out,
	rf_a_read => rf_a_read,
	rf_a_sel => rf_a_sel,
	rf_b_read => rf_b_read,
	rf_b_sel => rf_b_sel,
	rf_reset => rf_reset,
	rf_write => rf_write,
	sip_in => sip_in,
	sip_ld => sip_ld,
	sip_reset => sip_reset,
	sop_ld => sop_ld,
	sop_out => sop_out,
	sop_reset => sop_reset,
	svop_ld => svop_ld,
	svop_out => svop_out,
	svop_reset => svop_reset,
	wr_data_sel => wr_data_sel,
	z_flag => z_flag
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

-- pc_ld
t_prcs_pc_ld: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		pc_ld <= '0';
		WAIT FOR 15000 ps;
		pc_ld <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	pc_ld <= '0';
WAIT;
END PROCESS t_prcs_pc_ld;
-- pc_sel[1]
t_prcs_pc_sel_1: PROCESS
BEGIN
	pc_sel(1) <= '1';
WAIT;
END PROCESS t_prcs_pc_sel_1;
-- pc_sel[0]
t_prcs_pc_sel_0: PROCESS
BEGIN
	pc_sel(0) <= '0';
WAIT;
END PROCESS t_prcs_pc_sel_0;
END datapath_arch;
