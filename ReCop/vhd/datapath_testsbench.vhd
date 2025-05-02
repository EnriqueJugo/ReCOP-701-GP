library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath_tb is
end entity;

architecture sim of datapath_tb is

  -- Clock period (for 100 MHz => 10 ns)
  constant clk_period : time := 10 ns;

  -- DUT signals
  signal clk          : std_logic                    := '0';
  signal pc_reset     : std_logic                    := '0';
  signal pc_sel       : std_logic_vector(1 downto 0) := "10";
  signal dcpr_ld      : std_logic                    := '0';
  signal dcpr_reset   : std_logic                    := '0';
  signal dcpr_low_set : std_logic                    := '0';

  signal ir_ld    : std_logic := '1';
  signal ir_reset : std_logic := '0';

  signal mem_write : std_logic := '0';
  signal mem_read  : std_logic := '0';

  signal mar_sel   : std_logic_vector(1 downto 0) := (others => '0');
  signal mar_ld    : std_logic                    := '0';
  signal mar_reset : std_logic                    := '0';

  signal rf_reset  : std_logic                    := '0';
  signal rf_write  : std_logic                    := '0';
  signal rf_a_read : std_logic                    := '0';
  signal rf_b_read : std_logic                    := '0';
  signal rf_a_sel  : std_logic                    := '0';
  signal rf_b_sel  : std_logic_vector(1 downto 0) := (others => '0');

  signal sop_reset : std_logic := '0';
  signal sop_ld    : std_logic := '0';

  signal sip_reset  : std_logic                     := '0';
  signal sip_ld     : std_logic                     := '0';
  signal sip_in     : std_logic_vector(15 downto 0) := (others => '0');
  signal alu_reset  : std_logic                     := '0';
  signal alu_op     : std_logic_vector(2 downto 0)  := (others => '0');
  signal alu_rb_sel : std_logic_vector(1 downto 0)  := (others => '0');
  signal addr_sel   : std_logic                     := '0';

  signal clr_z_flag  : std_logic                    := '0';
  signal wr_data_sel : std_logic_vector(1 downto 0) := (others => '0');

  -- Outputs
  signal pc_out        : std_logic_vector(15 downto 0);
  signal dcpr_out      : std_logic_vector(31 downto 0);
  signal inst_out      : std_logic_vector(31 downto 0);
  signal addr_mode     : std_logic_vector(1 downto 0);
  signal opcode        : std_logic_vector(5 downto 0);
  signal sop_out       : std_logic_vector(15 downto 0);
  signal z_flag        : std_logic;
  signal read_data_out : std_logic_vector(15 downto 0);

  signal s_pc_inc : std_logic;
begin

  -- Clock generation
  clk_process : process
  begin
    while true loop
      clk <= '0';
      wait for clk_period / 2;
      clk <= '1';
      wait for clk_period / 2;
    end loop;
  end process;

  -- Clock generation
  pc_inc : process
  begin
    while true loop
      s_pc_inc <= '0';
      wait for clk_period * 4;
      s_pc_inc <= '1';
      wait for clk_period * 4;
    end loop;
  end process;

  -- Instantiate DUT
  uut : entity work.datapath
    port map
    (
      clk           => clk,
      pc_reset      => pc_reset,
      pc_sel        => pc_sel,
      dcpr_ld       => dcpr_ld,
      dcpr_reset    => dcpr_reset,
      dcpr_low_set  => dcpr_low_set,
      ir_ld         => ir_ld,
      ir_reset      => ir_reset,
      mem_write     => mem_write,
      mem_read      => mem_read,
      mar_sel       => mar_sel,
      mar_ld        => mar_ld,
      mar_reset     => mar_reset,
      rf_reset      => rf_reset,
      rf_write      => rf_write,
      rf_a_read     => rf_a_read,
      rf_b_read     => rf_b_read,
      rf_a_sel      => rf_a_sel,
      rf_b_sel      => rf_b_sel,
      sop_reset     => sop_reset,
      sop_ld        => sop_ld,
      sip_reset     => sip_reset,
      sip_ld        => sip_ld,
      sip_in        => sip_in,
      alu_reset     => alu_reset,
      alu_op        => alu_op,
      alu_rb_sel    => alu_rb_sel,
      addr_sel      => addr_sel,
      clr_z_flag    => clr_z_flag,
      wr_data_sel   => wr_data_sel,
      pc_out        => pc_out,
      dcpr_out      => dcpr_out,
      inst_out      => inst_out,
      addr_mode     => addr_mode,
      opcode        => opcode,
      sop_out       => sop_out,
      z_flag        => z_flag,
      read_data_out => read_data_out,
      pc_inc        => s_pc_inc
    );

  -- Stimulus process
  stim_proc : process
  begin
    -- Reset everything
    pc_reset <= '1';
    rf_reset <= '1';
    ir_reset <= '1';
    wait for 2 * clk_period;
    pc_reset <= '0';
    rf_reset <= '0';
    ir_reset <= '0';

    -- Load instruction
    rf_a_read <= '1';
    rf_b_read <= '1';
    rf_write  <= '1';
    wait for clk_period;

    -- Add more stimulus here as needed...
    wait for 20 * clk_period;

    report "Simulation finished" severity note;
    wait;
  end process;

end architecture;
