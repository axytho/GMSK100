library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer_tb is
end debouncer_tb;

architecture bhv of debouncer_tb is
	
	signal clk: std_logic := '0';
	signal input: std_logic := '0';
	signal output: std_logic;
	
	constant clk_period: time := 50 ns;
	
begin
	
	debouncer0: entity work.debouncer port map(
		clk => clk,
		input => input,
		output => output
	);
	
	-- clock process
	process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;
	
	-- stimulus process
	process
	begin
		
		-- start
		wait for 30 ms;
		
		-- low to high with contact bounce
		input <= '1';
		wait for 5 ms;
		input <= '0';
		wait for 1 ms;
		input <= '1';
		wait for 3 ms;
		input <= '0';
		wait for 1 ms;
		input <= '1';
		wait for 100 ms;
		
		-- short interruption
		input <= '0';
		wait for 10 ms;
		input <= '1';
		wait for 100 ms;
		
		-- high to low with contact bounce
		input <= '0';
		wait for 3 ms;
		input <= '1';
		wait for 2 ms;
		input <= '0';
		wait for 6 ms;
		input <= '1';
		wait for 2 ms;
		input <= '0';
		wait for 100 ms;
		
		-- end
		wait for 1000 ms;
		
	end process;
	
end;
