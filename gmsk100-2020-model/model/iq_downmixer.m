function complex_envelope = iq_downmixer(signal, osr, br, fc, fs, sample_rate)

% TODO: You may want to implement a better downsampling filter.
[~, nbcols] = size(signal);
for k=1:nbcols
    % IQ downmixer
    t = ((1 : numel(signal(:,k)))' - 1) / sample_rate;
    upsampled_envelope = 2 * exp(-1j * 2 * pi * fc * t) .* signal(:,k);
%     figure('Name', 'FFT');
%     plot(abs(fft(upsampled_envelope)))

    % apply a simple downsampling filter
%     filt = ones(2 * round(fs / (br * osr)) + 1);
%     upsampled_envelope = conv(upsampled_envelope, filt / sum(filt), 'same');
    upsampled_envelope = lowpass(upsampled_envelope, 0.000000001);
%     figure('Name', 'FFT');
%     plot(abs(fft(upsampled_envelope)))

    % calculate number of output samples
    n1 = numel(upsampled_envelope);
    n2 = round((n1 - 1) * (br * osr) / sample_rate) + 1;

    % resample the complex envelope to the new sample rate
    t1 = ((1 : n1)' - 1) / sample_rate;
    t2 = ((1 : n2)' - 1) / (br * osr);
    complex_envelope(:,k) = interp1(t1, upsampled_envelope, t2);
end

end