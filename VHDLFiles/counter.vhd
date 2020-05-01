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

Port ( rst,newvalue : in std_logic;
       datainput : in signed (7 downto 0) ;
       c0, c1 : out integer range 0 to 50 ;
		 done_symbol : out std_logic;
		 output_value :out std_logic
		 );

end counter;



architecture Behavioral of counter is


signal cnt: integer range 0 to 50 ;
signal cnt0: integer range 0 to 50 ;
signal cnt1: integer range 0 to 50 ;
signal clk_sample : std_logic;


--type symbolArray is array(0 to 20) of signed (7 downto 0);
--signal arrayin0 : symbolArray :=(others => "00000000");
--signal arrayin1 : symbolArray :=(others => "00000000");


begin


process(rst, newvalue) 

begin

if rst='1' then
   clk_sample <= '0' ;
	cnt <=0 ;
	
elsif rising_edge(newvalue) then
	
	    if(cnt < 50) then
             cnt <= cnt +1;
				 clk_sample <= '0' ;
				 
       else
             cnt <= 0;
				 clk_sample <= '1';
				 
       end if;
	end if;
end process;



process(rst, newvalue) 
begin

if rst='1' then
   cnt1 <= 0 ;
	cnt0 <= 0 ;

elsif rising_edge (newvalue) then

if clk_sample ='0' then
	 
       if datainput = "00000000" then
		 cnt0  <= cnt0 ;
		 cnt1  <= cnt1 ;
			 
	    elsif datainput(datainput'left) ='1' then
		
	 	 cnt1 <= cnt1 + 1 ;
		 cnt0 <= cnt0 ;
			 
		else   
		 cnt0  <= cnt0 + 1;
		 cnt1  <= cnt1 ;
end if;
		 
else
          cnt1 <= 0 ;
          cnt0 <= 0 ;			  
		  
end if;

end if;
	
end process;


c0 <= cnt0 ;
c1 <= cnt1 ;	
 done_symbol <= clk_sample;



process(rst, clk_sample) 
begin

if rst='1' then
   output_value <= '0' ;


elsif rising_edge(clk_sample) then
          if( cnt0 < cnt1) then
              output_value <= '0' ;
          elsif ( cnt0> cnt1) then
              output_value <= '1' ;
			 else
			     output_value <= '0' ;
          end if;
end if;
  
  end process;


end Behavioral;

