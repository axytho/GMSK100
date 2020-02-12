function out = quantize(in, levels)

% clip the input signal
clipped = max(-1, min(1, in));

% quantize the clipped signal (levels = number of ADC output codes)
out = round((clipped + 1) / 2 * (levels - 1)) ./ (levels - 1) * 2 - 1;

end