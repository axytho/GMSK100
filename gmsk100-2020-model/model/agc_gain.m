function out = agc_gain(in,fs)

% TODO: Implement this yourself!

out = 0.2 * in;
% figure('Name', 'FFT');
% plot(abs(fft(out)))

% out = bandpass(out,[19400 20600],fs);
out = lowpass(out, 0.25);
% figure('Name', 'FFT_out');
% plot(abs(fft(out)))

end

