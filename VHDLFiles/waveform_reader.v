`timescale 1ns / 1ps

module waveform_reader #(
	parameter filename = "waveforms/input.txt",
	parameter samplerate = 6400,
	parameter bits = 16,
	parameter rows = 64000,
	parameter columns = 2
) (
	output reg [bits * columns - 1 : 0] data
);

integer f, i, j, value;

initial begin
	f = $fopen(filename, "r");
	for(i = 0; i < rows; i = i + 1) begin
		for(j = 0; j < columns; j = j + 1) begin
			$fscanf(f, "%h", value);
			data[bits * j +: bits] = value;
		end
		#(1000000000 / samplerate);
	end
	$fclose(f);
end

endmodule
