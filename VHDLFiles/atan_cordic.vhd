----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:39:09 03/29/2020 
-- Design Name: 
-- Module Name:    atan_cordic - Behavioral 
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



entity atan_cordic is
-- inputX must be greater than inputY to guarantee that
-- we will receive an angle between pi/4 and -pi/4
    Port ( clk: in std_logic;
	        inputX : in  signed (7 downto 0);
           inputY : in  signed (7 downto 0);
           start : in  STD_LOGIC;
           angle : out  signed (7 downto 0);
           done : out  STD_LOGIC);
end atan_cordic;

architecture Behavioral of atan_cordic is
    signal counter: unsigned (2 downto 0) := to_unsigned(0, 3);
	 signal imaginaryValue: signed (7 downto 0) := to_signed(0, 8);
	 signal realValue: signed (7 downto 0) := to_signed(0, 8);
	 signal angleReg: signed (7 downto 0) := to_signed(0, 8);
-- angles :'00001111   00001000   00000100   00000010   00000001'
--- all numbers in 2's complement: means that + and - work fine
--- Shift operations also work, because we use arithmetic shift
--- meaning that the MSB is copied into the new MSB
--- allowing 2's complement shift
--- however, rounding down is always to infinity.
begin
   angle <= angleReg;

	process(clk)
	begin
		if clk'event and clk = '1' then
			 if start = '1' then --buton press, if start is of, we actually start, start is more like reset in all modules
			     counter <= "000";
				  angleReg <= to_signed(0, 8);
				  realValue <= inputX;
				  imaginaryValue <= inputY;
				  done <= '0';
			 elsif counter = "101" then --5 runs, more makes no sense due to precision
			     done <= '1'; --- no counter += 1 so locks it on done until start is rst
		    else
			     counter <= counter + 1; ---this will be done on the next cycle
				  --- just like everything else
				  if imaginaryValue(7) = '1' then
				      if counter = "000" then
							angleReg <= angleReg - "00001111";
							imaginaryValue <= imaginaryValue + shift_right(realValue, 1);
							realValue <= realValue - shift_right(imaginaryValue, 1);
						elsif counter = "001" then
							angleReg <= angleReg - "00001000";
							imaginaryValue <= imaginaryValue + shift_right(realValue, 2);
							realValue <= realValue - shift_right(imaginaryValue, 2);
					   elsif counter = "010" then
						   angleReg <= angleReg - "00000100";
							imaginaryValue <= imaginaryValue + shift_right(realValue, 3);
							realValue <= realValue - shift_right(imaginaryValue, 3);
						elsif counter = "011" then
						   angleReg <= angleReg - "00000010";
							imaginaryValue <= imaginaryValue + shift_right(realValue, 4);
							realValue <= realValue - shift_right(imaginaryValue, 4);
						elsif counter = "100" then
						   angleReg <= angleReg - "00000001";
						   imaginaryValue <= imaginaryValue + shift_right(realValue, 5);
							realValue <= realValue - shift_right(imaginaryValue, 5);
					   end if;
				  else
				      if counter = "000" then
							angleReg <= angleReg + "00001111";
							imaginaryValue <= imaginaryValue - shift_right(realValue, 1);
							realValue <= realValue + shift_right(imaginaryValue, 1);
						elsif counter = "001" then
							angleReg <= angleReg + "00001000";
							imaginaryValue <= imaginaryValue - shift_right(realValue, 2);
							realValue <= realValue + shift_right(imaginaryValue, 2);
					   elsif counter = "010" then
						   angleReg <=angleReg + "00000100";
							imaginaryValue <= imaginaryValue - shift_right(realValue, 3);
							realValue <= realValue + shift_right(imaginaryValue, 3);
						elsif counter = "011" then
						   angleReg <= angleReg + "00000010";
							imaginaryValue <= imaginaryValue - shift_right(realValue, 4);
							realValue <= realValue + shift_right(imaginaryValue, 4);
						elsif counter = "100" then
						   angleReg <= angleReg + "00000001";
						   imaginaryValue <= imaginaryValue - shift_right(realValue, 5);
							realValue <= realValue + shift_right(imaginaryValue, 5);
					   end if;
				  end if;
				   
			 end if;
			 
	   end if;
	end process;

end Behavioral;

