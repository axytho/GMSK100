----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:09:08 04/29/2020 
-- Design Name: 
-- Module Name:    full_simulation - Behavioral 
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


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


 
entity full_simulation is

port ( clk : in std_logic ;
      input_I : in signed(7 downto 0) ;
	   input_Q : in signed(7 downto 0) ;
      newValue : in std_logic ;
		done_diff : out std_logic;
	   output_diff : out signed(7 downto 0)
);

end full_simulation;
 
 

architecture Behavioral of full_simulation is 


    component low_pass_filter_22 
	 PORT  (
           clk: in std_logic;
	        inputValue : in signed(7 downto 0);
           newValue: in  STD_LOGIC;
           outputValue : out  signed (7 downto 0);
           doneFull : out  STD_LOGIC);
	 end component;
		

		
    component atan_cordic_full_circle 
	 port (
		clk: in std_logic;
	        inputXFull : in  signed (7 downto 0);
           inputYFull : in  signed (7 downto 0);
           startFull : in  STD_LOGIC;
           angleFull : out  signed (7 downto 0);
           doneFull : out  STD_LOGIC);	  
	end component;
	
	
	component rising_edge_block 
	port(
	        clk : in std_logic;
	        signal_in : in  STD_LOGIC;
           rising_edge_signal : out  STD_LOGIC);
	end component;
	
	
	component difference_and_invert 
	port  (
	        clk: in std_logic;
	        inputValue : in signed (7 downto 0);
           newValue: in  STD_LOGIC; 
           outputValue : out  signed(7 downto 0);
           doneFull : out  STD_LOGIC);
  end component;

	
   signal output_I : signed(7 downto 0);
	signal output_Q : signed(7 downto 0);
   signal done_I : std_logic;
	signal done_Q : std_logic;
	signal done_arctan : std_logic;
	signal start_diff, start_atan : std_logic;
	signal angle_out : signed(7 downto 0);
	
 
BEGIN
 
   uut_I: low_pass_filter_22 PORT MAP (
          clk => clk,
          inputValue => input_I,
          newValue => newValue,
          outputValue => output_I,
          doneFull => done_I
        );
		  
	 uut_Q: low_pass_filter_22 PORT MAP (
          clk => clk,
          inputValue => input_Q,
          newValue => newValue,
          outputValue => output_Q,
          doneFull => done_Q
        );

    atan_cordic_uut: atan_cordic_full_circle port map(
		clk => clk,
		inputXFull => output_I,
		inputYFull => output_Q,
		startFull => start_atan,
		doneFull => done_arctan,
		angleFull => angle_out
	);	  
	
	rising_edge_to_arctan: rising_edge_block port map(
	    clk => clk,
		 signal_in => done_I,
		 rising_edge_signal => start_atan
	);
	
	rising_edge_to_diff: rising_edge_block port map(
	    clk => clk,
		 signal_in => done_arctan,
		 rising_edge_signal => start_diff
	);
	
	diff: difference_and_invert port map(
	       clk => clk,
          inputValue => angle_out,
          newValue => start_diff,
          outputValue => output_diff,
          doneFull => done_diff
	
	);
	
--	rising_edge_to_sync: rising_edge_block port map(
--		     clk => clk,
--			  signal_in => done_diff,
			  

  
end Behavioral;










