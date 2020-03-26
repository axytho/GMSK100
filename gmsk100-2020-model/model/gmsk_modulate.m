function complex_envelope = gmsk_modulate(bits, bt, osr)

% convert bits to symbols (+1 / -1)
symbols = bits * 2 - 1;

% apply gaussian filter
filt = gaussian_filter(bt, osr);
data_filtered = conv(repelem(symbols, osr, 1), filt, 'same');

% calculate phase
phase = [0; cumsum(data_filtered) * 0.5 * pi / osr];

%plot(phase);

% generate complex envelope
complex_envelope = exp(1j * phase);
end