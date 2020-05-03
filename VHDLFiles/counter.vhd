----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:37:01 04/30/2020 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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

USE ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is

Port ( clk: in std_logic;
       newValue : in std_logic;
       datainput : in signed (7 downto 0) ;
		 done_symbol : out std_logic;
		 output_value :out std_logic
		 );

end counter;



architecture Behavioral of counter is

signal cnt: signed ( 6 downto 0) := to_signed(0, 7);
signal count0: signed ( 6 downto 0) := to_signed(0, 7);
signal count1: signed ( 6 downto 0) := to_signed(0, 7);
signal countMinusFifty: signed ( 6 downto 0) := to_signed(0, 7);
signal countMinusTwentyFive: signed ( 6 downto 0) := to_signed(0, 7);
signal count0MinusFive: signed ( 6 downto 0) := to_signed(0, 7);
signal count1MinusFive: signed ( 6 downto 0) := to_signed(0, 7);
signal count1MinusCount0: signed ( 6 downto 0) := to_signed(0, 7);
signal countAdder: signed ( 2 downto 0) := to_signed(0, 3);
signal count0_add : signed ( 1 downto 0) := to_signed(0, 2);
signal count1_add : signed ( 1 downto 0) := to_signed(0, 2);


--type symbolArray is array(0 to 20) of signed (7 downto 0);
--signal arrayin0 : symbolArray :=(others => "00000000");
--signal arrayin1 : symbolArray :=(others => "00000000");


begin

   process(clk)
	begin
		if clk'event and clk = '1' then
	       if newValue = '1' then
			     if countMinusFifty(6) = '0' then
				      cnt <= "0000000";
						count0 <= "0000000";
						count1 <= "0000000";
						done_symbol <= '1';
						output_value <= not(count1MinusCount0(6));
				  else
				      cnt <= cnt + countAdder;
						count0 <= count0 + count0_add;
						count1 <= count1 + count1_add;
						done_symbol <= '0';
			     end if;
			 end if;
	
	   end if;
		countMinusFifty <= cnt - "0110010";
		countMinusTwentyFive <= cnt - "0011001";
		count0MinusFive <= count0 - "0000101";
		count1MinusFive <= count1 - "0000101";
		count1MinusCount0 <= count1 - count0;
		if datainput = "00000000" then
		    count0_add <= "00";
			 count1_add <= "00";
		elsif datainput(7) = '0'  then
			 count0_add <= "00";
			 count1_add <= "01";
		else
		   count0_add <= "01";
			count1_add <= "00";
		end if;
		
		
		
		if ((count0MinusFive(6) = '1' and count1MinusCount0(6) = '0' and count0_add = "01") or (count1MinusFive(6) = '1' and count1MinusCount0(6) = '1' and count0_add = "01"))  then
			  if countMinusTwentyFive(6) = '0'  then
					countAdder <= "010"; --the count speeds up if we are near the end but the change has already happened
			  else
			      countAdder <= "000"; -- the count slows down if we're near the beginning but 
			  end if;
	   else
		    countAdder <= "001";
		end if;
	end process;
--process(newvalue) 
--
--begin
--
--if rst='1' then
--   clk_sample <= '0' ;
--	cnt <=0 ;
--	
--elsif rising_edge(newvalue) then
--	
--	    if(cnt < 50) then
--             cnt <= cnt +1;
--				 clk_sample <= '0' ;
--				 
--       else
--             cnt <= 0;
--				 clk_sample <= '1';
--				 
--       end if;
--	end if;
--end process;



--process(rst, newvalue) 
--begin
--
--if rst='1' then
--   cnt1 <= 0 ;
--	cnt0 <= 0 ;
--
--elsif rising_edge (newvalue) then
--
--if clk_sample ='0' then
--	 
--       if datainput = "00000000" then
--		 cnt0  <= cnt0 ;
--		 cnt1  <= cnt1 ;
--			 
--	    elsif datainput(datainput'left) ='1' then
--		
--	 	 cnt1 <= cnt1 + 1 ;
--		 cnt0 <= cnt0 ;
--			 
--		else   
--		 cnt0  <= cnt0 + 1;
--		 cnt1  <= cnt1 ;
--end if;
--		 
--else
--          cnt1 <= 0 ;
--          cnt0 <= 0 ;			  
--		  
--end if;
--
--end if;
--	
--end process;


--c0 <= cnt0 ;
--c1 <= cnt1 ;	
-- done_symbol <= clk_sample;



--process(rst, clk_sample) 
--begin
--
--if rst='1' then
--   output_value <= '0' ;
--
--
--elsif rising_edge(clk_sample) then
--          if( cnt0 < cnt1) then
--              output_value <= '0' ;
--          elsif ( cnt0> cnt1) then
--              output_value <= '1' ;
--			 else
--			     output_value <= '0' ;
--          end if;
--end if;
--  
--  end process;
--
--
end Behavioral;

