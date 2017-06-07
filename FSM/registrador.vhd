library ieee;
use ieee.std_logic_1164.all;

entity registrador is
generic (
	n : integer := 4
	);
	port (
		clk, ld, clr : in std_logic;
		valor: in std_logic_vector(n-1 downto 0);
		s: out std_logic_vector(n-1 downto 0)
	);
end registrador ;
architecture arq of registrador is
begin
	process(clk, clr)
		begin
			if (clr='0') then
				s <= (others=>'0');
			elsif (clk'event and clk='1') then
				if (ld='1') then
					s <= valor;
				end if;
			end if;
		end process;
end arq;