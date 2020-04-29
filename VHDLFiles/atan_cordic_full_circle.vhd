----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:41:48 03/30/2020 
-- Design Name: 
-- Module Name:    atan_cordic_full_circle - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;



entity atan_cordic_full_circle is
-- inputX must be greater than inputY to guarantee that
-- we will receive an angle between pi/4 and -pi/4
    Port ( clk: in std_logic;
	        inputXFull : in  signed (7 downto 0);
           inputYFull : in  signed (7 downto 0);
           startFull : in  STD_LOGIC;
           angleFull : out  signed (7 downto 0);
           doneFull : out  STD_LOGIC);
end atan_cordic_full_circle;

architecture Behavioral of atan_cordic_full_circle is

signal actualInputX: signed (7 downto 0) := to_signed(0, 8);
signal actualInputY: signed (7 downto 0) := to_signed(0, 8);
signal halfTurnX: signed (7 downto 0) := to_signed(0, 8);
signal halfTurnY: signed (7 downto 0) := to_signed(0, 8);
signal addHalf: STD_LOGIC := '0';
signal difference: signed (7 downto 0) := to_signed(0, 8);
signal quarter: STD_LOGIC := '0';
signal angleOut: signed (7 downto 0) := to_signed(0, 8);
signal angleQuarter: signed (7 downto 0) := to_signed(0, 8);
begin
   
	atan_cordic: entity work.atan_cordic port map(
		clk => clk,
		inputX => actualInputX,
		inputY => actualInputY,
		start => startFull,
		done => doneFull,
		angle => angleOut
	);

    process(clk) --no clock
	 begin
    if inputXFull(7) = '1' then
	     halfTurnX <= "00000000" - inputXFull;
		  halfTurnY <= "00000000" - inputYFull;
		  if halfTurnY(7) = '1' then
		      angleFull <= angleQuarter + "01100101";
		  else
		      angleFull <= angleQuarter - "01100101";
		  end if;-- if halfturnY negative, add, 
		  --else subtract so we stay inside [-pi, pi]
		  -- but do something if addHalf
	 else
	     halfTurnX <= inputXFull;
		  halfTurnY <= inputYFull;
		  angleFull <= angleQuarter;
	 end if;
	 if halfTurnY(7) = '1' then
	    difference <= halfTurnX + halfTurnY;
		 quarter <= '0'; --we are working in the 4th quarter 
		 -- so if difference <0, -pi/2 + positive angle, and to calculate
		 -- we must swap X and Y and make Y positive
	 else
		 difference <= halfTurnX - halfTurnY;
		 quarter <= '1'; -- we are working in the first quarter
	 end if;
	 if difference(7) = '1' then
        if quarter = '0' then -- fourth quarter, -pi/2 + positive angle
			  actualInputX <= "00000000" - halfTurnY;
			  actualInputY <= halfTurnX;
			  angleQuarter <= angleOut + "11001110";
	     else -- first quarter, do pi/2 - angle
			  actualInputX <= halfTurnY;
			  actualInputY <= halfTurnX;
			  angleQuarter <= "00110010" - angleOut;
		  end if;
    else
	    actualInputX <= halfTurnX;
		 actualInputY <= halfTurnY;
		 angleQuarter <= angleOut;
	 end if;
	 
	 
    end process;
end Behavioral;

