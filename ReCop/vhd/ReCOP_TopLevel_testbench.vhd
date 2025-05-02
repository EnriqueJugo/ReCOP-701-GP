library ieee;
use ieee.std_logic_1164.all;

entity ReCOP_TopLevel_tb is
end entity;

architecture testbench of ReCOP_TopLevel_tb is

  -- DUT ports
  signal clk        : std_logic                     := '0';
  signal reset      : std_logic                     := '0';
  signal sip_input  : std_logic_vector(15 downto 0) := "0101010110100101";
  signal z_flag_out : std_logic;
  signal sop_output : std_logic_vector(15 downto 0);

begin

  -- Instantiate the DUT
  uut : entity work.ReCOP_TopLevel
    port map
    (
      clk        => clk,
      reset      => reset,
      sip_input  => sip_input,
      sop_output => sop_output,
      z_flag_out => z_flag_out
    );

  -- Clock generation (10ns period => 100MHz)
  clk_process : process
  begin
    while now < 1000 ns loop -- run for 1 µs
      clk <= '0';
      wait for 5 ns;
      clk <= '1';
      wait for 5 ns;
    end loop;
    wait;
  end process;

end architecture;
