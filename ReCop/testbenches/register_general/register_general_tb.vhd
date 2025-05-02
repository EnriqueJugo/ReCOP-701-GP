library ieee;
use ieee.std_logic_1164.all;

entity register_general_tb is
end register_general_tb;

architecture behavior of register_general_tb is
    constant bit_width : integer := 16;

    -- Component declaration
    component register_general
        generic (bit_width : integer := 16);
        port (
            clk       : in std_logic;
            reg_in    : in std_logic_vector(bit_width - 1 downto 0);
            reg_ld    : in std_logic;
            reg_reset : in std_logic;
            reg_out   : out std_logic_vector(bit_width - 1 downto 0)
        );
    end component;

    -- Signals
    signal clk       : std_logic := '0';
    signal reg_in    : std_logic_vector(bit_width - 1 downto 0) := (others => '0');
    signal reg_ld    : std_logic := '0';
    signal reg_reset : std_logic := '0';
    signal reg_out   : std_logic_vector(bit_width - 1 downto 0);

    constant clk_period : time := 10 ns;

begin
    -- Instantiate the register
    uut: register_general
        generic map(bit_width => bit_width)
        port map(
            clk       => clk,
            reg_in    => reg_in,
            reg_ld    => reg_ld,
            reg_reset => reg_reset,
            reg_out   => reg_out
        );

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

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset register
        reg_reset <= '1';
        wait for clk_period;
        reg_reset <= '0';
	wait for clk_period;

        -- Load value x"AAAA"
        reg_in <= x"AAAA";
        reg_ld <= '1';
        wait for clk_period;

        -- Disable load, hold value
        reg_ld <= '0';
        wait for clk_period;

        -- Load value x"1234"
        reg_in <= x"1234";
        reg_ld <= '1';
        wait for clk_period;

        -- Reset again
        reg_reset <= '1';
        wait for clk_period;

        -- End simulation
        wait;
    end process;
end architecture;

