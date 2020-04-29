----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:33:31 04/28/2020 
-- Design Name: 
-- Module Name:    TwentyTwoOrderFilter - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity low_pass_filter_22 is
    Port ( clk: in std_logic;
	        inputValue : in  signed (7 downto 0);
           newValue: in  STD_LOGIC; --newvalue should only be triggered once per clk, then switched off
           outputValue : out  signed (7 downto 0);
           doneFull : out  STD_LOGIC);
end low_pass_filter_22;

architecture Behavioral of low_pass_filter_22 is
signal reg1: signed (7 downto 0) := to_signed(0, 8);
signal reg2: signed (7 downto 0) := to_signed(0, 8);
signal reg3: signed (7 downto 0) := to_signed(0, 8);
signal reg4: signed (7 downto 0) := to_signed(0, 8);
signal reg5: signed (7 downto 0) := to_signed(0, 8);
signal reg6: signed (7 downto 0) := to_signed(0, 8);
signal reg7: signed (7 downto 0) := to_signed(0, 8);
signal reg8: signed (7 downto 0) := to_signed(0, 8);
signal reg9: signed (7 downto 0) := to_signed(0, 8);
signal reg10: signed (7 downto 0) := to_signed(0, 8);
signal reg11: signed (7 downto 0) := to_signed(0, 8);
signal reg12: signed (7 downto 0) := to_signed(0, 8);
signal reg13: signed (7 downto 0) := to_signed(0, 8);
signal reg14: signed (7 downto 0) := to_signed(0, 8);
signal reg15: signed (7 downto 0) := to_signed(0, 8);
signal reg16: signed (7 downto 0) := to_signed(0, 8);
signal reg17: signed (7 downto 0) := to_signed(0, 8);
signal reg18: signed (7 downto 0) := to_signed(0, 8);
signal reg19: signed (7 downto 0) := to_signed(0, 8);
signal reg20: signed (7 downto 0) := to_signed(0, 8);
signal reg21: signed (7 downto 0) := to_signed(0, 8);
signal reg22: signed (7 downto 0) := to_signed(0, 8);

signal solution: signed (12 downto 0) := to_signed(0, 13);

begin

    process(clk) --no clock
	 begin
	 if clk'event and clk = '1' then
	     if newValue = '1' then
		      reg1 <= inputValue;
				reg2 <= reg1;
				reg3 <= reg2;
				reg4 <= reg3;
				reg5 <= reg4;
				reg6 <= reg5;
				reg7 <= reg6;
				reg8 <= reg7;
				reg9 <= reg8;
				reg10 <= reg9;
				reg11 <= reg10;
				reg12 <= reg11;
				reg13 <= reg12;
				reg14 <= reg13;
				reg15 <= reg14;
				reg16 <= reg15;
				reg17 <= reg16;
				reg18 <= reg17;
				reg19 <= reg18;
				reg20 <= reg19;
				reg21 <= reg20;
				reg22 <= reg21;
				
				doneFull <= '0';
			else
			   doneFull <= '1';
		  end if;
	 end if;
	 solution <= 
	 resize(reg1, 13) +
	 resize(reg2, 13) +
	 resize(reg3, 13) +
	 resize(reg4, 13) +
	 resize(reg5, 13) +
	 resize(reg6, 13) +
	 resize(shift_left(reg7,1), 13) +
	 resize(shift_left(reg8,1), 13) +
	 resize(shift_left(reg9,1), 13) +
	 resize(shift_left(reg10,1), 13) +
	 resize(shift_left(reg11,1), 13) +
	 resize(shift_left(reg12,1), 13) +
	 resize(shift_left(reg13,1), 13) +
	 resize(shift_left(reg14,1), 13) +
	 resize(shift_left(reg15,1), 13) +
	 resize(shift_left(reg16,1), 13) +
	 resize(reg17, 13) +
	 resize(reg18, 13) +
	 resize(reg19, 13) +
	 resize(reg20, 13) +
	 resize(reg21, 13) +
	 resize(reg22, 13);
	 
	 
	outputValue <= resize(shift_right(solution,5), 8);
	 end process;

end Behavioral;

