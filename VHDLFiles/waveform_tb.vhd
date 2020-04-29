library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity waveform_tb is
end waveform_tb;

architecture bhv of waveform_tb is
	
	signal waveform_reader_data: std_logic_vector(31 downto 0);
	signal waveform_writer_data: std_logic_vector(31 downto 0);
	
	signal waveform_i_in: signed(15 downto 0);
	signal waveform_q_in: signed(15 downto 0);
	
	signal waveform_i_out: signed(15 downto 0);
	signal waveform_q_out: signed(15 downto 0);
	
begin
	
	waveform_reader_0: entity work.waveform_reader generic map(
		filename => "waveforms/gmsk_level_0.txt",
		samplerate => 6400,
		bits => 16,
		rows => 64000,
		columns => 2
	) port map(
		data => waveform_reader_data
	);
	
	waveform_writer_0: entity work.waveform_writer generic map(
		filename => "waveforms/output.txt",
		samplerate => 6400,
		bits => 16,
		rows => 64000,
		columns => 2
	) port map(
		data => waveform_writer_data
	);
	
	waveform_i_in <= signed(waveform_reader_data(15 downto  0));
	waveform_q_in <= signed(waveform_reader_data(31 downto 16));
	
	waveform_i_out <= waveform_i_in + 1;
	waveform_q_out <= waveform_q_in + 3;
	
	waveform_writer_data(15 downto  0) <= std_logic_vector(waveform_i_out);
	waveform_writer_data(31 downto 16) <= std_logic_vector(waveform_q_out);
	
end;
