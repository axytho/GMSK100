library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display_driver is
	port(
		clk: in std_logic;
		value0: in unsigned(5 downto 0);
		value1: in unsigned(5 downto 0);
		value2: in unsigned(5 downto 0);
		value3: in unsigned(5 downto 0);
		display_digits: out std_logic_vector(3 downto 0);
		display_segments: out std_logic_vector(6 downto 0)
	);
end display_driver;

architecture bhv of display_driver is
	
	signal counter: unsigned(13 downto 0) := to_unsigned(0, 14);
	signal digit: unsigned(1 downto 0) := to_unsigned(0, 2);
	
	signal display_digits_reg: std_logic_vector(3 downto 0) := "1111";
	signal display_segments_reg: std_logic_vector(6 downto 0) := "0000000";
	
	type digit_table_t is array(0 to 3) of std_logic_vector(3 downto 0);
	constant digit_table: digit_table_t := (
		"0111", "1011", "1101", "1110"
	);
	
	type segment_table_t is array(0 to 63) of std_logic_vector(6 downto 0);
	constant segment_table: segment_table_t := (
		"1111110", "0110000", "1101101", "1111001", -- 0, 1, 2, 3
		"0110011", "1011011", "1011111", "1110000", -- 4, 5, 6, 7
		"1111111", "1111011", "1110111", "0011111", -- 8, 9, A, b
		"1001110", "0111101", "1001111", "1000111", -- C, d, E, F
		"1011110", "0110111", "0010000", "0011000", -- G, H, i, j
		"1010111", "0001110", "1010100", "1110110", -- k, L, M, N
		"0011101", "1100111", "1110011", "0000101", -- o, P, q, r
		"1011010", "0001111", "0111110", "0100011", -- S, t, U, v
		"0101010", "0010011", "0111011", "1101100", -- W, X, Y, Z
		"0000000", "0001000", "0000001", "0001001", -- empty, low, mid, low+mid,
		"1000000", "1001000", "1000001", "1001001", -- high, low+high, mid+high, low+mid+high
		"1001000", "0100100", "0010010", "0000001", -- busy1, busy2, busy3, -
		"0000001", "0000001", "0000001", "0000001", -- -, -, -, -
		"0000001", "0000001", "0000001", "0000001", -- -, -, -, -
		"0000001", "0000001", "0000001", "0000001", -- -, -, -, -
		"0000001", "0000001", "0000001", "0000001"  -- -, -, -, -
	);
	
begin
	
	display_digits <= display_digits_reg;
	display_segments <= display_segments_reg;
	
	process(clk)
		variable value: unsigned(5 downto 0);
	begin
		if clk'event and clk = '1' then
			
			-- increment counter
			counter <= counter + 1;
			if counter = (13 downto 0 => '1') then
				digit <= digit + 1;
			end if;
			
			-- write to output registers
			if digit = 0 then
				value := value0;
			elsif digit = 1 then
				value := value1;
			elsif digit = 2 then
				value := value2;
			else
				value := value3;
			end if;
			display_digits_reg <= digit_table(to_integer(digit));
			display_segments_reg <= segment_table(to_integer(value));
			
		end if;
	end process;
	
end bhv;
