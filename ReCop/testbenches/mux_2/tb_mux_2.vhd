LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux_2_tb IS
END mux_2_tb;

ARCHITECTURE behavior OF mux_2_tb IS
    -- Component declaration for mux_2
    COMPONENT mux_2
        PORT (
            data0x : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
            data1x : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
            sel    : IN  STD_LOGIC;
            result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT;

    -- Signals to connect to the MUX
    SIGNAL data0x  : STD_LOGIC_VECTOR(15 DOWNTO 0) := (others => '0');
    SIGNAL data1x  : STD_LOGIC_VECTOR(15 DOWNTO 0) := (others => '0');
    SIGNAL sel     : STD_LOGIC := '0';
    SIGNAL result  : STD_LOGIC_VECTOR(15 DOWNTO 0);

BEGIN
    -- Instantiate the Unit Under Test (UUT)
    uut: mux_2 PORT MAP (
        data0x => data0x,
        data1x => data1x,
        sel    => sel,
        result => result
    );

    -- Test Process
    stim_proc: PROCESS
    BEGIN
        -- Case 1: sel = 0
        data0x <= x"AAAA";
        data1x <= x"5555";
        sel    <= '0';
        WAIT FOR 50 ns;

        -- Case 2: sel = 1
        sel    <= '1';
        WAIT FOR 50 ns;

        -- Finish simulation
        WAIT;
    END PROCESS;

END behavior;

