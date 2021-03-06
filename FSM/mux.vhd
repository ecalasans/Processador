library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
entity mux is
generic (
	n : integer := 6
	);
	port (
		a, b,c: in std_logic_vector(n-1 downto 0);
		sel: in std_logic_vector(1 DOWNTO 0);
		d: out std_logic_vector(n-1 downto 0)
	);
end mux ;
architecture arq of mux is
begin
	d <= 	a when sel="01" else
			b when sel="10" else
			c;
end arq;