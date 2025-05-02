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
-- Generated on "04/24/2025 16:58:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ReCOP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ReCOP_vhd_vec_tst IS
END ReCOP_vhd_vec_tst;
ARCHITECTURE ReCOP_arch OF ReCOP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr_mod : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL addr_reg_ld : STD_LOGIC;
SIGNAL addr_reg_reset : STD_LOGIC;
SIGNAL alu_op : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL CLOCK : STD_LOGIC;
SIGNAL clr_z_flag : STD_LOGIC;
SIGNAL data_mem_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL data_sel : STD_LOGIC;
SIGNAL instruction : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ld : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL operand : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pc_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rb_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL reset_alu : STD_LOGIC;
SIGNAL rf_ld : STD_LOGIC;
SIGNAL rf_reset : STD_LOGIC;
SIGNAL sel_data_in : STD_LOGIC;
SIGNAL stack_func : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL stack_reset : STD_LOGIC;
SIGNAL wren : STD_LOGIC;
COMPONENT ReCOP
	PORT (
	addr_mod : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	addr_reg_ld : IN STD_LOGIC;
	addr_reg_reset : IN STD_LOGIC;
	alu_op : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	CLOCK : IN STD_LOGIC;
	clr_z_flag : IN STD_LOGIC;
	data_mem_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	data_sel : IN STD_LOGIC;
	instruction : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ld : IN STD_LOGIC;
	opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	operand : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rb_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	reset : IN STD_LOGIC;
	reset_alu : IN STD_LOGIC;
	rf_ld : IN STD_LOGIC;
	rf_reset : IN STD_LOGIC;
	sel_data_in : IN STD_LOGIC;
	stack_func : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	stack_reset : IN STD_LOGIC;
	wren : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ReCOP
	PORT MAP (
-- list connections between master ports and signals
	addr_mod => addr_mod,
	addr_reg_ld => addr_reg_ld,
	addr_reg_reset => addr_reg_reset,
	alu_op => alu_op,
	CLOCK => CLOCK,
	clr_z_flag => clr_z_flag,
	data_mem_sel => data_mem_sel,
	data_sel => data_sel,
	instruction => instruction,
	ld => ld,
	opcode => opcode,
	operand => operand,
	pc_out => pc_out,
	rb_sel => rb_sel,
	reset => reset,
	reset_alu => reset_alu,
	rf_ld => rf_ld,
	rf_reset => rf_reset,
	sel_data_in => sel_data_in,
	stack_func => stack_func,
	stack_reset => stack_reset,
	wren => wren
	);

-- CLOCK
t_prcs_CLOCK: PROCESS
BEGIN
LOOP
	CLOCK <= '0';
	WAIT FOR 5000 ps;
	CLOCK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK;
END ReCOP_arch;
