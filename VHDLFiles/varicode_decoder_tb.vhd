--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:39:42 04/01/2020
-- Design Name:   
-- Module Name:   /users/students/r0666113/Documents/gmsk100-digital/xilinx/vhdlGroup4FirstRun/varicode_decoder_tb.vhd
-- Project Name:  vhdlGroup4FirstRun
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: varicode_decoder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY varicode_decoder_tb IS
END varicode_decoder_tb;
 
ARCHITECTURE behavior OF varicode_decoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT varicode_decoder
    PORT(
         clk : IN  std_logic;
         bitClock : IN  std_logic;
         dataBit : IN  std_logic;
         asciiByte : OUT  std_logic_vector(6 downto 0);
         done: OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal bitClock : std_logic := '0';
   signal dataBit : std_logic := '0';

 	--Outputs
   signal asciiByte : std_logic_vector(6 downto 0);
   signal done : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: varicode_decoder PORT MAP (
          clk => clk,
          bitClock => bitClock,
          dataBit => dataBit,
          asciiByte => asciiByte,
          done => done
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 1 us;	
		bitClock <= '0'; --0
		dataBit <= '0';
		wait for 1 us;	
		bitClock <= '1';
		wait for 1 us;
		bitClock <= '0';
		dataBit <= '0';
		
		
		wait for 1 us;	--1
		bitClock <= '1';
		wait for 1 us;
		bitClock <= '0';
		dataBit <= '1';
		
		wait for 1 us;	
		bitClock <= '1';
		wait for 1 us;
		bitClock <= '0';
		dataBit <= '0';
		
		wait for 1 us;	
		bitClock <= '1';
		wait for 1 us;
		bitClock <= '0';
		dataBit <= '1';
		
		wait for 1 us;	
		bitClock <= '1';
		wait for 1 us;
		bitClock <= '0';
		dataBit <= '0';
		
		wait for 1 us;	
		bitClock <= '1';
		wait for 1 us;
		bitClock <= '0';
		dataBit <= '1';
		
		wait for 1 us;	
		bitClock <= '1';
		wait for 1 us;
		bitClock <= '0';
		dataBit <= '0';
		
		wait for 1 us;	
		bitClock <= '1';
		wait for 1 us;
		bitClock <= '0';
		dataBit <= '1';
		
		wait for 1 us;	
		bitClock <= '1';
		wait for 1 us;
		bitClock <= '0';
		dataBit <= '0';
		
		wait for 1 us;	
		bitClock <= '1';
		wait for 1 us;
		bitClock <= '0';
		dataBit <= '1';
		wait for 1 us;		
		bitClock <= '1';
		wait for 1 us;
		bitClock <= '0';
		
		
		dataBit <= '0';
		wait for 1 us;	
		bitClock <= '1';
		wait for 1 us;
		bitClock <= '0';
		
		dataBit <= '0';
		bitClock <= '0';
		wait for 1 us;	
		bitClock <= '1';
      wait for clk_period*10;
		
		---1
		dataBit <= '1';
		bitClock <= '0';
		wait for 1 us;	
		bitClock <= '1';
      wait for clk_period*10;
     --1
	   dataBit <= '1';
		bitClock <= '0';
		wait for 1 us;	
		bitClock <= '1';
      wait for clk_period*10;
     --0
	  dataBit <= '0';
		bitClock <= '0';
		wait for 1 us;	
		bitClock <= '1';
      wait for clk_period*10;
     --0
	  dataBit <= '0';
		bitClock <= '0';
		wait for 1 us;	
		bitClock <= '1';
      wait for clk_period*10;
     --1
	   dataBit <= '1';
		bitClock <= '0';
		wait for 1 us;	
		bitClock <= '1';
      wait for clk_period*10;
     --1
	  	dataBit <= '1';
		bitClock <= '0';
		wait for 1 us;	
		bitClock <= '1';
      wait for clk_period*10;
     --0
	  dataBit <= '0';
		bitClock <= '0';
		wait for 1 us;	
		bitClock <= '1';
      wait for clk_period*10;
     --1
	  	dataBit <= '1';
		bitClock <= '0';
		wait for 1 us;	
		bitClock <= '1';
      wait for clk_period*10;
     --1
		dataBit <= '1';
		bitClock <= '0';
		wait for 1 us;	
		bitClock <= '1';
      wait for clk_period*10;
     --0
	  dataBit <= '0';
		bitClock <= '0';
		wait for 1 us;	
		bitClock <= '1';
      wait for clk_period*10;
     --0
	  dataBit <= '0';
		bitClock <= '0';
		wait for 1 us;	
		bitClock <= '1';
      wait for clk_period*10;
		


      wait;
   end process;

END;
