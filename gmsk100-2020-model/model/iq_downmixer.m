function complex_envelope = iq_downmixer(signal, osr, br, fc, fs)

% TODO: You may want to implement a better downsampling filter.
[nbrows, nbcols] = size(signal);
for k=1:nbcols
    % IQ downmixer
    t = ((1 : numel(signal(:,k)))' - 1) / fs;
    [cos, sin] = cordic(2 * pi * fc *t,15)
    upsampled_envelope_Q = cos .* signal(:,k);
    upsampled_envelope_I = sin .* signal(:,k);

    % apply a simple downsampling filter
    filt = ones(2 * round(fs / (br * osr)) + 1)     ;
    upsampled_envelope = conv(upsampled_envelope, filt / sum(filt), 'same');

    % calculate number of output samples
    n1 = numel(upsampled_envelope);
    n2 = round((n1 - 1) * (br * osr) / fs) + 1;

    % resample the complex envelope to the new sample rate
    t1 = ((1 : n1)' - 1) / fs;
    t2 = ((1 : n2)' - 1) / (br * osr);
    complex_envelope(:,k) = interp1(t1, upsampled_envelope, t2);
end

end