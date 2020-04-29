`timescale 1ns / 1ps

module waveform_writer #(
	parameter filename = "waveforms/output.txt",
	parameter samplerate = 6400,
	parameter bits = 16,
	parameter rows = 64000,
	parameter columns = 2
) (
	input [bits * columns - 1 : 0] data
);

integer f, i, j;

initial begin
	f = $fopen(filename, "w");
	for(i = 0; i < rows; i = i + 1) begin
		#(1000000000 / samplerate - 1);
		for(j = 0; j < columns; j = j + 1) begin
			$fwrite(f, "%h", data[bits * j +: bits]);
			$fwrite(f, "%c", (j == columns - 1)? 10 : 32);
		end
		#1;
	end
	$fclose(f);
end

endmodule
