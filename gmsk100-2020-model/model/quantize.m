function out = quantize(in, levels, fs)
fsample = 2.5e3;

% calculate number of output samples
n1 = numel(in);
n2 = round((n1 - 1) * fsample / (fs)) + 1;

% resample the signal to the new sample rate
resampled_in = downsample(in, round(n1/n2));

% clip the input signal
clipped = max(-1, min(1, resampled_in));

% quantize the clipped signal (levels = number of ADC output codes)
out = round((clipped + 1) / 2 * (levels - 1)) ./ (levels - 1) * 2 - 1;

end