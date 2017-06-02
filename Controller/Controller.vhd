library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Controller is
	port(
		clock, key0, key3, RF_rp_zero : in std_logic;
		IR_in : in std_logic_vector(15 downto 0);
		
		selMUX_data, RF_W_wr, RF_rp_rd, RF_rq_rd,
				D_rd, D_wr, load_IR, MI_rd, inc_PC,
				clr_PC, load_PC: out std_logic;
				
		RF_sel : out std_logic_vector(1 downto 0);
		
		RF_W_addr, RF_rp_addr, RF_rq_addr, seletor,
				disp1_out : out std_logic_vector(3 downto 0);
		
		D_addr, RF_W_data : out std_logic_vector(7 downto 0)
	);	

end Controller;

architecture mecanismo of Controller is

	constant Load : std_logic_vector(4 downto 0) := "00000";
	constant Store : std_logic_vector(4 downto 0) := "00001";
	constant Add : std_logic_vector(4 downto 0) := "00010";
	constant LoadConstant : std_logic_vector(4 downto 0) := "00011";
	constant Subtract : std_logic_vector(4 downto 0) := "00100";
	constant JumpIfZero : std_logic_vector(4 downto 0) := "00101";
	constant stateAnd : std_logic_vector(4 downto 0) := "00110";
	constant stateOr : std_logic_vector(4 downto 0) := "00111";
	constant stateXor : std_logic_vector(4 downto 0) := "01000";
	constant stateXnor : std_logic_vector(4 downto 0) := "01001";
	constant Shfl : std_logic_vector(4 downto 0) := "01010";
	constant Shfr : std_logic_vector(4 downto 0) := "01011";
	constant Jump : std_logic_vector(4 downto 0) := "01100";
	constant LoadFromRegister : std_logic_vector(4 downto 0) := "01101";
	constant Decode : std_logic_vector(4 downto 0) := "01110";
	constant Fetch : std_logic_vector(4 downto 0) := "01111";
	constant Init : std_logic_vector(4 downto 0) := "10000";
	
	signal y : std_logic_vector(4 downto 0) := Init;
	signal op : std_logic_vector(3 downto 0);
	
begin
	process(clock)
	begin
		if(clock = '1' and clock'event) then
			case y is
				when Init =>
					if(key3 = '1') then
						y <= Fetch;
					else 
						y <= Init;
					end if;
					
				when Fetch =>
					if(key0 = '1') then
						y <= Decode;
					end if;
				
				when Decode =>
					op <= (IR_in(15 downto 12));
					
					if(key0 = '1') then
						case op is
							when "0000" =>
								y <= Load;
							
							when "0001" =>
								y <= Store;
							
							when "0010" =>
								y <= Add;
								
							when "0011" =>
								y <= LoadConstant;
							
							when "0100" =>
								y <= Subtract;
							
							when "0101" =>
								y <= JumpIfZero;
								
							when "0110" =>
								y <= stateAnd;
								
							when "0111" =>
								y <= stateOr;
								
							when "1000" =>
								y <= stateXor;
								
							when "1001" =>
								y <= stateXnor;
								
							when "1010" =>
								y <= Shfl;
								
							when "1011" =>
								y <= Shfr;
								
							when "1100" =>
								y <= Jump;
								
							when "1101" =>
								y <= LoadFromRegister;
							
							when others =>
						end case;
					end if;
				
				when Load =>
					if(key0 = '1') then
						y <= Fetch;
					end if;
					
				when Store =>
					if(key0 = '1') then
						y <= Fetch;
					end if;
				
				when Add =>
					if(key0 = '1') then
						y <= Fetch;
					end if;
					
				when LoadConstant =>
					if(key0 = '1') then
						y <= Fetch;
					end if;
					
				when Subtract =>
					if(key0 = '1') then
						y <= Fetch;
					end if;
					
				when stateAnd =>
					if(key0 = '1') then
						y <= Fetch;
					end if;
					
				when stateOr =>
					if(key0 = '1') then
						y <= Fetch;
					end if;
					
				when stateXor =>
					if(key0 = '1') then
						y <= Fetch;
					end if;
					
				when stateXnor =>
					if(key0 = '1') then
						y <= Fetch;
					end if;
					
				when Shfl =>
					if(key0 = '1') then
						y <= Fetch;
					end if;
					
				when Shfr =>
					if(key0 = '1') then
						y <= Fetch;
					end if;
					
				when JumpIfZero =>
					if(key0 = '1' and RF_rp_zero = '1') then
						y <= Jump;
					elsif(key0 = '1' and RF_rp_zero = '0') then
						y <= Fetch;
					end if;
				
				when Jump =>
					if(key0 = '1') then
						y <= Fetch;
					end if;
					
				when LoadFromRegister =>
					if(key0 = '1') then
						y <= Fetch;
					end if;
				
				when others =>
			end case;
		end if;
	end process;
	
	--Fetch
	clr_PC <= '1' when y = Init else '0';
	load_PC <= '1' when y = Fetch else '0';
	load_IR <= '1' when y = Fetch else '0'; 
	
	--Decode
	disp1_out <= "1110" when y = Decode else
					 "0000" when y = Load else
					 "0001" when y = Store else
					 "0010" when y = Add else
					 "0011" when y = LoadConstant else
					 "0100" when y = Subtract else
					 "0101" when y = JumpIfZero else
					 "0110" when y = stateAnd else 
					 "0111" when y = stateOr else
					 "1000" when y = stateXor else 
					 "1001" when y = stateXnor else 
					 "1010" when y = Shfl else 
					 "1011" when y = Shfr else 
					 "1100" when y = Jump else 
					 "1101" when y = LoadFromRegister;
	

	D_addr <= IR_in(7 downto 0) when y = Load or y = Store;
	
	D_rd <= '1' when y = Load;
	
	D_wr <= '1' when y = Store;
	
	RF_sel <= "01" when y = Load else
				 "00" when y = Add;
	
	RF_W_addr <= IR_in(11 downto 8) when y = Load or y = Add
					 or y = LoadConstant;
	
	RF_W_wr <= '1' when y = Load or y = Add;
	
	RF_rp_rd <= '1' when y = Load or y = Store or y = Add;
	
	RF_rq_rd <= '1' when y = Add;
	
	RF_rp_addr <= IR_in(11 downto 8) when y = Store else
					  IR_in(7 downto 4) when y = Add;
					  
	RF_rq_addr <= IR_in(3 downto 0) when y = Add;
	
	selMUX_data <= '0' when y = Store;
	
	seletor <= "0010" when y = Add;
	
end mecanismo;