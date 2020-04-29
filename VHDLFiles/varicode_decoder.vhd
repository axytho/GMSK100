----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:49:45 03/31/2020 
-- Design Name: 
-- Module Name:    varicode_decoder - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity varicode_decoder is
    Port ( clk: in std_logic;
	        bitClock : in  STD_LOGIC;
			  dataBit : in  STD_LOGIC;
           asciiByte : out  std_logic_vector(6 downto 0);
           done : out  STD_LOGIC);
end varicode_decoder;

architecture Behavioral of varicode_decoder is
signal oldBit: STD_LOGIC := '0';
signal oldClock: STD_LOGIC := '0';
signal shiftReg: std_logic_vector(10 downto 0) := "00000000000";
signal outreg: std_logic_vector(6 downto 0) := "0000000";
signal doneClock: STD_LOGIC := '0';
signal trueValue: std_logic_vector(9 downto 0) := "0000000000";
begin
    asciiByte <= outreg;
	 done <= doneClock;
	 trueValue <= shiftReg(10 downto 1);
    process(clk)
	 begin
	     if clk'event and clk = '1' then
		      oldClock <= bitClock; -- not sequential
				if oldClock = '0' and bitClock = '1' then
				    oldBit <= dataBit;
				    if dataBit = '0' and oldBit = '0' then
					     -- take the reg, find the right value
                    -- keeping in mind that the trailing
                    -- 0 is incorrect, so only take the 
						  -- first length - 1 bits
						  doneClock <= '1';
						  shiftReg <= "00000000000";
                    if trueValue = "1010101011"	then
                        outreg <= "0000000";
                        
elsif trueValue = "1011011011"	then 
 	 	 	 outreg <= "0000001";
elsif trueValue = "1011101101"	then 
 	 	 	 outreg <= "0000010";
elsif trueValue = "1101110111"	then 
 	 	 	 outreg <= "0000011";
elsif trueValue = "1011101011"	then 
 	 	 	 outreg <= "0000100";
elsif trueValue = "1101011111"	then 
 	 	 	 outreg <= "0000101";
elsif trueValue = "1011101111"	then 
 	 	 	 outreg <= "0000110";
elsif trueValue = "1011111101"	then 
 	 	 	 outreg <= "0000111";
elsif trueValue = "1011111111"	then 
 	 	 	 outreg <= "0001000";
elsif trueValue = "0011101111"	then 
 	 	 	 outreg <= "0001001";
elsif trueValue = "0000011101"	then 
 	 	 	 outreg <= "0001010";
elsif trueValue = "1101101111"	then 
 	 	 	 outreg <= "0001011";
elsif trueValue = "1011011101"	then 
 	 	 	 outreg <= "0001100";
elsif trueValue = "0000011111"	then 
 	 	 	 outreg <= "0001101";
elsif trueValue = "1101110101"	then 
 	 	 	 outreg <= "0001110";
elsif trueValue = "1110101011"	then 
 	 	 	 outreg <= "0001111";
elsif trueValue = "1011110111"	then 
 	 	 	 outreg <= "0010000";
elsif trueValue = "1011110101"	then 
 	 	 	 outreg <= "0010001";
elsif trueValue = "1110101101"	then 
 	 	 	 outreg <= "0010010";
elsif trueValue = "1110101111"	then 
 	 	 	 outreg <= "0010011";
elsif trueValue = "1101011011"	then 
 	 	 	 outreg <= "0010100";
elsif trueValue = "1101101011"	then 
 	 	 	 outreg <= "0010101";
elsif trueValue = "1101101101"	then 
 	 	 	 outreg <= "0010110";
elsif trueValue = "1101010111"	then 
 	 	 	 outreg <= "0010111";
elsif trueValue = "1101111011"	then 
 	 	 	 outreg <= "0011000";
elsif trueValue = "1101111101"	then 
 	 	 	 outreg <= "0011001";
elsif trueValue = "1110110111"	then 
 	 	 	 outreg <= "0011010";
elsif trueValue = "1101010101"	then 
 	 	 	 outreg <= "0011011";
elsif trueValue = "1101011101"	then 
 	 	 	 outreg <= "0011100";
elsif trueValue = "1110111011"	then 
 	 	 	 outreg <= "0011101";
elsif trueValue = "1011111011"	then 
 	 	 	 outreg <= "0011110";
elsif trueValue = "1101111111"	then 
 	 	 	 outreg <= "0011111";
elsif trueValue = "0000000001"	then 
 	 	 	 outreg <= "0100000";
elsif trueValue = "0111111111"	then 
 	 	 	 outreg <= "0100001";
elsif trueValue = "0101011111"	then 
 	 	 	 outreg <= "0100010";
elsif trueValue = "0111110101"	then 
 	 	 	 outreg <= "0100011";
elsif trueValue = "0111011011"	then 
 	 	 	 outreg <= "0100100";
elsif trueValue = "1011010101"	then 
 	 	 	 outreg <= "0100101";
elsif trueValue = "1010111011"	then 
 	 	 	 outreg <= "0100110";
elsif trueValue = "0101111111"	then 
 	 	 	 outreg <= "0100111";
elsif trueValue = "0011111011"	then 
 	 	 	 outreg <= "0101000";
elsif trueValue = "0011110111"	then 
 	 	 	 outreg <= "0101001";
elsif trueValue = "0101101111"	then 
 	 	 	 outreg <= "0101010";
elsif trueValue = "0111011111"	then 
 	 	 	 outreg <= "0101011";
elsif trueValue = "0001110101"	then 
 	 	 	 outreg <= "0101100";
elsif trueValue = "0000110101"	then 
 	 	 	 outreg <= "0101101";
elsif trueValue = "0001010111"	then 
 	 	 	 outreg <= "0101110";
elsif trueValue = "0110101111"	then 
 	 	 	 outreg <= "0101111";
elsif trueValue = "0010110111"	then 
 	 	 	 outreg <= "0110000";
elsif trueValue = "0010111101"	then 
 	 	 	 outreg <= "0110001";
elsif trueValue = "0011101101"	then 
 	 	 	 outreg <= "0110010";
elsif trueValue = "0011111111"	then 
 	 	 	 outreg <= "0110011";
elsif trueValue = "0101110111"	then 
 	 	 	 outreg <= "0110100";
elsif trueValue = "0101011011"	then 
 	 	 	 outreg <= "0110101";
elsif trueValue = "0101101011"	then 
 	 	 	 outreg <= "0110110";
elsif trueValue = "0110101101"	then 
 	 	 	 outreg <= "0110111";
elsif trueValue = "0110101011"	then 
 	 	 	 outreg <= "0111000";
elsif trueValue = "0110110111"	then 
 	 	 	 outreg <= "0111001";
elsif trueValue = "0011110101"	then 
 	 	 	 outreg <= "0111010";
elsif trueValue = "0110111101"	then 
 	 	 	 outreg <= "0111011";
elsif trueValue = "0111101101"	then 
 	 	 	 outreg <= "0111100";
elsif trueValue = "0001010101"	then 
 	 	 	 outreg <= "0111101";
elsif trueValue = "0111010111"	then 
 	 	 	 outreg <= "0111110";
elsif trueValue = "1010101111"	then 
 	 	 	 outreg <= "0111111";
elsif trueValue = "1010111101"	then 
 	 	 	 outreg <= "1000000";
elsif trueValue = "0001111101"	then 
 	 	 	 outreg <= "1000001";
elsif trueValue = "0011101011"	then 
 	 	 	 outreg <= "1000010";
elsif trueValue = "0010101101"	then 
 	 	 	 outreg <= "1000011";
elsif trueValue = "0010110101"	then 
 	 	 	 outreg <= "1000100";
elsif trueValue = "0001110111"	then 
 	 	 	 outreg <= "1000101";
elsif trueValue = "0011011011"	then 
 	 	 	 outreg <= "1000110";
elsif trueValue = "0011111101"	then 
 	 	 	 outreg <= "1000111";
elsif trueValue = "0101010101"	then 
 	 	 	 outreg <= "1001000";
elsif trueValue = "0001111111"	then 
 	 	 	 outreg <= "1001001";
elsif trueValue = "0111111101"	then 
 	 	 	 outreg <= "1001010";
elsif trueValue = "0101111101"	then 
 	 	 	 outreg <= "1001011";
elsif trueValue = "0011010111"	then 
 	 	 	 outreg <= "1001100";
elsif trueValue = "0010111011"	then 
 	 	 	 outreg <= "1001101";
elsif trueValue = "0011011101"	then 
 	 	 	 outreg <= "1001110";
elsif trueValue = "0010101011"	then 
 	 	 	 outreg <= "1001111";
elsif trueValue = "0011010101"	then 
 	 	 	 outreg <= "1010000";
elsif trueValue = "0111011101"	then 
 	 	 	 outreg <= "1010001";
elsif trueValue = "0010101111"	then 
 	 	 	 outreg <= "1010010";
elsif trueValue = "0001101111"	then 
 	 	 	 outreg <= "1010011";
elsif trueValue = "0001101101"	then 
 	 	 	 outreg <= "1010100";
elsif trueValue = "0101010111"	then 
 	 	 	 outreg <= "1010101";
elsif trueValue = "0110110101"	then 
 	 	 	 outreg <= "1010110";
elsif trueValue = "0101011101"	then 
 	 	 	 outreg <= "1010111";
elsif trueValue = "0101110101"	then 
 	 	 	 outreg <= "1011000";
elsif trueValue = "0101111011"	then 
 	 	 	 outreg <= "1011001";
elsif trueValue = "1010101101"	then 
 	 	 	 outreg <= "1011010";
elsif trueValue = "0111110111"	then 
 	 	 	 outreg <= "1011011";
elsif trueValue = "0111101111"	then 
 	 	 	 outreg <= "1011100";
elsif trueValue = "0111111011"	then 
 	 	 	 outreg <= "1011101";
elsif trueValue = "1010111111"	then 
 	 	 	 outreg <= "1011110";
elsif trueValue = "0101101101"	then 
 	 	 	 outreg <= "1011111";
elsif trueValue = "1011011111"	then 
 	 	 	 outreg <= "1100000";
elsif trueValue = "0000001011"	then 
 	 	 	 outreg <= "1100001";
elsif trueValue = "0001011111"	then 
 	 	 	 outreg <= "1100010";
elsif trueValue = "0000101111"	then 
 	 	 	 outreg <= "1100011";
elsif trueValue = "0000101101"	then 
 	 	 	 outreg <= "1100100";
elsif trueValue = "0000000011"	then 
 	 	 	 outreg <= "1100101";
elsif trueValue = "0000111101"	then 
 	 	 	 outreg <= "1100110";
elsif trueValue = "0001011011"	then 
 	 	 	 outreg <= "1100111";
elsif trueValue = "0000101011"	then 
 	 	 	 outreg <= "1101000";
elsif trueValue = "0000001101"	then 
 	 	 	 outreg <= "1101001";
elsif trueValue = "0111101011"	then 
 	 	 	 outreg <= "1101010";
elsif trueValue = "0010111111"	then 
 	 	 	 outreg <= "1101011";
elsif trueValue = "0000011011"	then 
 	 	 	 outreg <= "1101100";
elsif trueValue = "0000111011"	then 
 	 	 	 outreg <= "1101101";
elsif trueValue = "0000001111"	then 
 	 	 	 outreg <= "1101110";
elsif trueValue = "0000000111"	then 
 	 	 	 outreg <= "1101111";
elsif trueValue = "0000111111"	then 
 	 	 	 outreg <= "1110000";
elsif trueValue = "0110111111"	then 
 	 	 	 outreg <= "1110001";
elsif trueValue = "0000010101"	then 
 	 	 	 outreg <= "1110010";
elsif trueValue = "0000010111"	then 
 	 	 	 outreg <= "1110011";
elsif trueValue = "0000000101"	then 
 	 	 	 outreg <= "1110100";
elsif trueValue = "0000110111"	then 
 	 	 	 outreg <= "1110101";
elsif trueValue = "0001111011"	then 
 	 	 	 outreg <= "1110110";
elsif trueValue = "0001101011"	then 
 	 	 	 outreg <= "1110111";
elsif trueValue = "0011011111"	then 
 	 	 	 outreg <= "1111000";
elsif trueValue = "0001011101"	then 
 	 	 	 outreg <= "1111001";
elsif trueValue = "0111010101"	then 
 	 	 	 outreg <= "1111010";
elsif trueValue = "1010110111"	then 
 	 	 	 outreg <= "1111011";
elsif trueValue = "0110111011"	then 
 	 	 	 outreg <= "1111100";
elsif trueValue = "1010110101"	then 
 	 	 	 outreg <= "1111101";
elsif trueValue = "1011010111"	then 
 	 	 	 outreg <= "1111110";
elsif trueValue = "1110110101"	then 
 	 	 	 outreg <= "1111111";

								else 
									outreg <= "0000000";
									doneClock <= '1';
                    end if;								

						
					 else --append dataBit to reg
                    	shiftReg <= shiftReg(9 downto 0) & dataBit;
                     doneClock <= '0';							
					 end if;
				end if;
		  end if;
	 
	 end process;

end Behavioral;

