function bits = extract_bits(signal, clock, osr)

% sample the signal at the times indicated by the clock
t = ((1 : numel(signal))' - 1) / osr;
symbols = interp1(t, signal, clock);

% convert to bits
bits = (symbols > 0);

end