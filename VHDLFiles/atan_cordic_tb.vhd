library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity atan_cordic_tb is
end atan_cordic_tb;

architecture bhv of atan_cordic_tb is
	
	signal clk: std_logic := '0';
	signal inputX: signed(7 downto 0) := "00000000";
	signal inputY: signed(7 downto 0) := "00000000";
	signal start: std_logic := '0';
	signal done: std_logic;
	signal angle: signed(7 downto 0);
	
	constant clk_period: time := 50 ns;
	
begin
	
	atan_cordic_stuff: entity work.atan_cordic_full_circle port map(
		clk => clk,
		inputXFull => inputX,
		inputYFull => inputY,
		startFull => start,
		doneFull => done,
		angleFull => angle
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
		inputX <= "00001101"; -- for angle -0.42
		inputY <= "11111111";
		wait for 5 ms;
		start <= '1';
		wait for clk_period;
		start <= '0';
		wait for 5 ms;
		-- result should be 00000111 and it is
		
		
	end process;
	
end;