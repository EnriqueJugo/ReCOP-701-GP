library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity seven_seg_recop is
  -- Letter: 'E'
  generic (endprog_letter : std_logic_vector(6 downto 0) := "0110000");
  port (
    end_prog : in std_logic;
    data_in  : in std_logic_vector(4 downto 0);
    data_out : out std_logic_vector(6 downto 0)
  );
end entity seven_seg_recop;

architecture rtl of seven_seg_recop is
begin
  data_out <= endprog_letter when end_prog = '1' else
    "1111111"; -- Nothing
end architecture;