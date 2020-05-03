library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel is
	port(
		clk_ext: in std_logic;
		test_switches: in std_logic_vector(3 downto 0);
		test_buttons: in std_logic_vector(3 downto 0);
		test_leds: out std_logic_vector(7 downto 0);
		uart_rx: in std_logic;
		uart_tx: out std_logic;
		uart_rts_bar: out std_logic;
		uart_cts_bar: in std_logic;
		display_digits: out std_logic_vector(3 downto 0);
		display_segments: out std_logic_vector(6 downto 0);
		display_colon: out std_logic;
		analog_comp: in std_logic_vector(5 downto 0);
		analog_gain: out std_logic_vector(5 downto 0)
	);
end toplevel;

architecture bhv of toplevel is
	
	-- clock
	signal clk: std_logic;
	
	-- delay elements to avoid metastability
	signal test_switches_d: std_logic_vector(3 downto 0) := "0000";
	signal test_switches_dd: std_logic_vector(3 downto 0) := "0000";
	signal test_buttons_d: std_logic_vector(3 downto 0) := "0000";
	signal test_buttons_dd: std_logic_vector(3 downto 0) := "0000";
	signal analog_comp_d: std_logic_vector(5 downto 0) := "000000";
	signal analog_comp_dd: std_logic_vector(5 downto 0) := "000000";
	
	-- debounced signals
	signal test_switches_deb: std_logic_vector(3 downto 0);
	signal test_buttons_deb: std_logic_vector(3 downto 0);
	
	-- UART transmitter
	signal uart_transmitter_data: std_logic_vector(7 downto 0) := "00000000";
	signal uart_transmitter_push: std_logic := '0';
	
	-- display values
	signal display_value0: unsigned(5 downto 0);
	signal display_value1: unsigned(5 downto 0);
	signal display_value2: unsigned(5 downto 0);
	signal display_value3: unsigned(5 downto 0);
	
	-- binary to hexadecimal lookup table
	type hex_table_t is array(0 to 15) of std_logic_vector(7 downto 0);
	constant hex_table: hex_table_t := (
		X"30", X"31", X"32", X"33", X"34", X"35", X"36", X"37",
		X"38", X"39", X"61", X"62", X"63", X"64", X"65", X"66"
	);
	
	-- counter
	signal counter1: unsigned(20 downto 0) := to_unsigned(0, 21);
	signal counter2: unsigned(15 downto 0) := to_unsigned(0, 16);
	
begin
	
	-- clock generator
	clock_generator: entity work.clock_generator port map(clk_ext => clk_ext, clk => clk);
	
	-- debouncers
	deb_switch0: entity work.debouncer port map(clk => clk, input => test_switches_dd(0), output => test_switches_deb(0));
	deb_switch1: entity work.debouncer port map(clk => clk, input => test_switches_dd(1), output => test_switches_deb(1));
	deb_switch2: entity work.debouncer port map(clk => clk, input => test_switches_dd(2), output => test_switches_deb(2));
	deb_switch3: entity work.debouncer port map(clk => clk, input => test_switches_dd(3), output => test_switches_deb(3));
	deb_button0: entity work.debouncer port map(clk => clk, input => test_buttons_dd(0), output => test_buttons_deb(0));
	deb_button1: entity work.debouncer port map(clk => clk, input => test_buttons_dd(1), output => test_buttons_deb(1));
	deb_button2: entity work.debouncer port map(clk => clk, input => test_buttons_dd(2), output => test_buttons_deb(2));
	deb_button3: entity work.debouncer port map(clk => clk, input => test_buttons_dd(3), output => test_buttons_deb(3));
	
	-- UART receiver (dummy)
	uart_rts_bar <= '0';
	
	-- UART transmitter
	uart_transmitter0: entity work.uart_transmitter port map(
		clk => clk,
		uart_tx => uart_tx,
		uart_cts_bar => uart_cts_bar,
		data => uart_transmitter_data,
		push => uart_transmitter_push
	);
	
	-- display driver
	display_driver0: entity work.display_driver port map(
		clk => clk,
		value0 => display_value0,
		value1 => display_value1,
		value2 => display_value2,
		value3 => display_value3,
		display_digits => display_digits,
		display_segments => display_segments
	);
	
	process(clk)
		variable test_value: unsigned(15 downto 0) := to_unsigned(12345, 16);
	begin
		if clk'event and clk = '1' then
			
			-- delay elements to avoid metastability
			test_switches_d <= test_switches;
			test_switches_dd <= test_switches_d;
			test_buttons_d <= test_buttons;
			test_buttons_dd <= test_buttons_d;
			analog_comp_d <= analog_comp;
			analog_comp_dd <= analog_comp_d;
			
			-- example: read switches and buttons, write LEDs 
			test_leds(7 downto 4) <= test_switches_deb;
			test_leds(3 downto 0) <= test_buttons_deb;
			
			-- example: read analog comparator values, write analog gain
			if analog_comp_dd = "010101" then
				analog_gain <= "111100";
			else
				analog_gain <= "000011";
			end if;
			
			-- example: write UART
			if counter1 >= 0 and counter1 <= 9 then
				case to_integer(counter1) is
					when 0 => uart_transmitter_data <= hex_table(to_integer(counter2(15 downto 0)));
					when 1 => uart_transmitter_data <= X"20";
					when 2 => uart_transmitter_data <= hex_table(to_integer(unsigned(test_switches_deb)));
					when 3 => uart_transmitter_data <= hex_table(to_integer(unsigned(test_buttons_deb)));
					when 4 => uart_transmitter_data <= X"20";
					when 5 => uart_transmitter_data <= hex_table(to_integer(test_value(15 downto 12)));
					when 6 => uart_transmitter_data <= hex_table(to_integer(test_value(11 downto 8)));
					when 7 => uart_transmitter_data <= hex_table(to_integer(test_value(7 downto 4)));
					when 8 => uart_transmitter_data <= hex_table(to_integer(test_value(3 downto 0)));
					when others => uart_transmitter_data <= X"0a";
				end case;
				uart_transmitter_push <= '1';
			else
				uart_transmitter_data <= "00000000";
				uart_transmitter_push <= '0';
			end if;
			
			-- example: write display
			if counter1 = to_unsigned(399999, 21) then
				counter1 <= to_unsigned(0, 21);
				counter2 <= counter2 + 1;
			else
				counter1 <= counter1 + 1;
			end if;
			if counter2(3) = '0' then
				display_value0 <= b"00" & counter2(15 downto 12); -- 29 = T
				display_value1 <= b"00" & counter2(11 downto 8);
				display_value2 <= b"00" & counter2(7 downto 4); -- 28 = S
				display_value3 <= b"00" & counter2(3 downto 0); -- 29 = T
			else
				if counter2(2 downto 1) = "00" then display_value0 <= to_unsigned(38, 6); else display_value0 <= to_unsigned(36, 6); end if;
				if counter2(2 downto 1) = "01" then display_value1 <= to_unsigned(38, 6); else display_value1 <= to_unsigned(36, 6); end if;
				if counter2(2 downto 1) = "10" then display_value2 <= to_unsigned(38, 6); else display_value2 <= to_unsigned(36, 6); end if;
				if counter2(2 downto 1) = "11" then display_value3 <= to_unsigned(38, 6); else display_value3 <= to_unsigned(36, 6); end if;
			end if;
			display_colon <= counter2(0);
			
		end if;
	end process;
	
end bhv;
