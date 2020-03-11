function out = complex_envelope_add_noise(in, snr, osr)

% generate noise
n = numel(in);
noise = (randn(n, 1) + 1j * randn(n, 1)) / sqrt(2);

% apply to signal with correct SNR (compensated for oversampling)
out = in + 10^(-snr / 20) * sqrt(osr) * noise;

end