library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity subtrator is
  generic (
	n : integer := 4
	);
	port (
		a, b : in std_logic_vector(n-1 downto 0);
		c: out std_logic_vector(n-1 downto 0)
	);
end subtrator ;
architecture arq of subtrator is
begin
	c <= 	a-b;
end arq;