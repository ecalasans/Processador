library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity PC is
  generic (
	n : integer := 4
	);
	port (
		ld,clr,clk,inc: in std_logic;
		o_in: in std_logic_vector(n-1 downto 0);
		PC_out: out std_logic_vector(n-1 downto 0)
	);
end PC ;
architecture arq of PC is
	component somador
		generic (
			n : integer := 4
		);
		port (
			a, b : in std_logic_vector(n-1 downto 0);
			c: out std_logic_vector(n-1 downto 0)
		);
	end component;
	
	component registrador
		generic (
			n : integer := 4
		);
		port (
			clk, ld, clr : in std_logic;
			valor: in std_logic_vector(n-1 downto 0);
			s: out std_logic_vector(n-1 downto 0)
		);
	end component;
	component mux
		generic (
			n : integer := 6
		);
		port (
			a, b,c: in std_logic_vector(n-1 downto 0);
			sel: in std_logic_vector(1 DOWNTO 0);
			d: out std_logic_vector(n-1 downto 0)
		);
	end component;
	
	signal s1,s2,s3: std_logic_vector(n-1 downto 0);
	
begin
	i0: registrador generic map (n) port map(clk,ld,clr,s3,s1);
	i1: somador generic map (n) port map (s1,std_logic_vector(to_unsigned(1,n)), s2);
	i2: mux generic map (n) port map (o_in,s2,s1,inc & ld,s3);
	PC_out <= s1;
end arq;