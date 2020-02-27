function [out, fsample] = quantize(in, levels, fs)
disp("sampling rate ADC:");
fsample = 5e3

% calculate number of output samples
n1 = numel(in);
n2 = round((n1 - 1) * fsample / (fs)) + 1;

% resample the complex envelope to the new sample rate
t1 = ((1 : n1)' - 1) / fs;
t2 = ((1 : n2)' - 1) / fsample;
resampled_in = interp1(t1, in, t2);

% clip the input signal
clipped = max(-1, min(1, resampled_in));

% quantize the clipped signal (levels = number of ADC output codes)
out = round((clipped + 1) / 2 * (levels - 1)) ./ (levels - 1) * 2 - 1;

end