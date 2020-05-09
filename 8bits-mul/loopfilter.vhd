----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:00 05/06/2020 
-- Design Name: 
-- Module Name:    loopfilter - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

----------  second order loop; wn>0.707 khz,  select wn= 1.47Khz , K(loop gain) = 0.7854;
---------- C1 = 2* damping factor* wn/ K = 0.053
----------- C2 =  (wn*T)^2 / K = 0.0011
-----------K = [2*pi*fs*Tdds*2^(B-2)]/2^N  ;  N is the phase accumulator bit width, N=20; 
-----------B is input bits ofloop filter, B is 16;   Tdds = fs/8, every 8 sample period refresh frequency(19:0);

entity LoopFilter is
    Port ( clk,rst : in  STD_LOGIC;
           pd : in  std_logic_vector (15 downto 0);              -- error from pd
			  
           newf_ce : out  STD_LOGIC;             			  -- allow nco refresh frequency
			  df: out  std_logic_vector (15 downto 0);               
           frequency : out  std_logic_vector  (19 downto 0));     -- NCO
end LoopFilter;

architecture Behavioral of LoopFilter is
	signal sum : std_logic_vector (15 downto 0);
	constant starf: std_logic_vector  (19 downto 0):= B"01100110011001100110";    --  initial frequency word ;fout=20k ;

   signal c: std_logic_vector(2 downto 0);   -- 3bits divided by 8

begin
	
	process(rst,clk)
		
	
	begin
		if rst='1' then
			c <= (others=>'0');
			newf_ce <= '0';
			sum<=(others=>'0');
			df<=(others=>'0');
			frequency <= starf;
			
		elsif rising_edge(clk) then
			                                           
			 c <= c+1 ;                                  
			
			if c="101" then
			   sum<= sum + PD(15 downto 10);                                    -- C2 = 0.0011 = 2^-10
			end if;
			
			if c="110" then
				frequency <= starf + sum + PD(15 downto 4)- PD(15 downto 7);         
				df <= sum+PD(15 downto 4)-PD(15 downto 7);                           -- C1=0.053
			end if;                                                                 -- C1 = 2^-4 - 2^-7
			                                                                        
			
			if c="111" then
				newf_ce <= '1';
			else
			   newf_ce <= '0';
			end if;
		end if;
	end process;

	
end Behavioral;


