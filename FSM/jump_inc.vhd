library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;
entity jump_inc is
  generic (
	n : integer := 4
	);
	port (
		a, b : in std_logic_vector(n-1 downto 0);
		c: out std_logic_vector(n-1 downto 0)
	);
end jump_inc ;
architecture arq of jump_inc is
begin
	c <= 	a + b;
end arq;