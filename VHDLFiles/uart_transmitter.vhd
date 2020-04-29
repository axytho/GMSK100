library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_transmitter is
	port(
		clk: in std_logic;
		uart_tx: out std_logic;
		uart_cts_bar: in std_logic;
		data: in std_logic_vector(7 downto 0);
		push: in std_logic
	);
end uart_transmitter;

architecture bhv of uart_transmitter is
	
	type data_buffer_t is array(0 to 2047) of std_logic_vector(7 downto 0);
	signal data_buffer: data_buffer_t;
	signal data_buffer_in: std_logic_vector(7 downto 0);
	signal data_buffer_out: std_logic_vector(7 downto 0);
	signal data_bypass_enable: std_logic := '0';
	
	signal read_pos: unsigned(10 downto 0) := to_unsigned(0, 11);
	signal write_pos: unsigned(10 downto 0) := to_unsigned(0, 11);
	
	signal shiftreg: std_logic_vector(8 downto 0) := "111111111";
	
	constant cycles_per_bit: integer := 20; -- 20 = 1Mbit, 174 = approx. 115200
	constant bits_per_byte: integer := 10; -- including start and stop bits
	signal cycle_counter: unsigned(7 downto 0) := to_unsigned(cycles_per_bit - 1, 8);
	signal bit_counter: unsigned(3 downto 0) := to_unsigned(bits_per_byte - 1, 4);
	
begin
	
	uart_tx <= shiftreg(0);
	
	process(clk)
		variable data_bypass: std_logic_vector(7 downto 0);
	begin
		if clk'event and clk = '1' then
			
			-- block RAM can only do synchronous reads
			data_buffer_in <= data;
			data_buffer_out <= data_buffer(to_integer(read_pos));
			data_bypass_enable <= '0';
			if data_bypass_enable = '1' then
				data_bypass := data_buffer_in;
			else
				data_bypass := data_buffer_out;
			end if;
			
			-- input
			if push = '1' then
				data_buffer(to_integer(write_pos)) <= data;
				if read_pos = write_pos then
					data_bypass_enable <= '1';
				end if;
				write_pos <= write_pos + 1;
			end if;
			
			-- output
			if cycle_counter = cycles_per_bit - 1 then
				if bit_counter = bits_per_byte - 1 then
					if read_pos /= write_pos and uart_cts_bar = '0' then
						shiftreg(8 downto 1) <= data_bypass;
						shiftreg(0) <= '0';
						read_pos <= read_pos + 1;
						cycle_counter <= to_unsigned(0, 8);
						bit_counter <= to_unsigned(0, 4);
					end if;
				else
					shiftreg(8) <= '1';
					shiftreg(7 downto 0) <= shiftreg(8 downto 1);
					cycle_counter <= to_unsigned(0, 8);
					bit_counter <= bit_counter + 1;
				end if;
			else
				cycle_counter <= cycle_counter + 1;
			end if;
			
		end if;
	end process;
	
end bhv;
