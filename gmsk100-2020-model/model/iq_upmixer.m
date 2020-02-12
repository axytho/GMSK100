function signal = iq_upmixer(complex_envelope, osr, br, fc, fs)

% calculate number of output samples
n1 = numel(complex_envelope);
n2 = round((n1 - 1) * fs / (br * osr)) + 1;

% resample the complex envelope to the new sample rate
t1 = ((1 : n1)' - 1) / (br * osr);
t2 = ((1 : n2)' - 1) / fs;
upsampled_envelope = interp1(t1, complex_envelope, t2);

% IQ upmixer
signal = real(exp(1j * 2 * pi * fc * t2) .* upsampled_envelope);

end