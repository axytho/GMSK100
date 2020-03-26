function complex_envelope = iq_downmixer(signal, osr, br, fc, fs)

% TODO: You may want to implement a better downsampling filter.

% IQ downmixer
t = ((1 : numel(signal))' - 1) / fs;
% [psdSignal, w] = pwelch(signal);
% plot(w/pi, psdSignal);
cordic = 0;
if cordic
    cosCordic = zeros(length(t), 1);
    sinCordic = zeros(length(t), 1);
    for i =1:length(t)
        v = cordic(2 * pi * fc *t(i),6);
        cosCordic(i) = v(1);
        sinCordic(i) = v(2);
    end
else
    %upsampled_envelope = 2 * exp(-1j * 2 * pi * fc * t) .* signal;
    cosCordic = cos(2*pi*fc*t);
    sinCordic = sin(2*pi*fc*t);
end
[psdSignal, w] = pwelch(signal);
figure(1)
 plot(w/pi, psdSignal);
upsampled_envelope = 2 * (cosCordic- sinCordic*1j) .* signal;
%gives us a component at 0Hz and at -40000Hz (160 000 Hz)



% apply a simple downsampling filter
filt = ones(2 * round(fs / (br * osr)) + 1);
upsampled_envelope = conv(upsampled_envelope, filt / sum(filt), 'same');
[psdSignal, w] = pwelch(upsampled_envelope);
figure(2)
 plot(w/pi, psdSignal);


% calculate number of output samples
n1 = numel(upsampled_envelope);
n2 = round((n1 - 1) * (br * osr) / fs) + 1;

% resample the complex envelope to the new sample rate
t1 = ((1 : n1)' - 1) / fs;
t2 = ((1 : n2)' - 1) / (br * osr);
complex_envelope = interp1(t1, upsampled_envelope, t2);

end