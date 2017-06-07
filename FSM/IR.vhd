library ieee;
use ieee.std_logic_1164.all;

entity IR is
generic (
	n : integer := 4
	);
	port (
		clk, ld: in std_logic;
		IR_in: in std_logic_vector(n-1 downto 0);
		IR_out: out std_logic_vector(n-1 downto 0)
	);
end IR;
architecture arq of IR is
begin
	process(clk)
		begin
			if (clk'event and clk='1') then
				if (ld='1') then
					IR_out <= IR_in;
				end if;
			end if;
		end process;
end arq;