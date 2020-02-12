function out = signal_add_noise(in, snr, br, fs)

% generate noise
n = numel(in);
noise = randn(n, 1);

% apply to signal with correct SNR (compensated for oversampling)
out = in + 10^(-snr / 20) * sqrt(fs / br) / 2 * noise;

end