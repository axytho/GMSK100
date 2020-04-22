function [complex_envelope, complex_envelopeHANN] = iq_downmixer(signal, osr, br, fc, fs)

% TODO: You may want to implement a better downsampling filter.
[nbrows, nbcols] = size(signal);
%plot(abs(fft((signal))));
for k=1:nbcols
    % IQ downmixer
    t = ((1 : numel(signal(:,k)))' - 1) / fs;
    % Get the proper axis
    f = ((1:numel(signal(:,k)))' - 1)*fs/numel(signal(:,k));
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
    upsampled_envelope_I = cosCordic .* signal(:,k);
    upsampled_envelope_Q = sinCordic .* signal(:,k);


    % apply a simple downsampling filter
     filt = ones(2 * round(fs / (br * osr)) + 1);
     filtHANN = hann(11);
     filtHANN = filtHANN/sum(filtHANN);


    % This is simply a crude block filter, usebetter low pass filter
    % this means instead of our impulse response being a series of ones our
    % impulse response should be the pulse shape.
    %plot shape:
    %plot(upsampled_envelope_Q)
%      pulse = load("pulse.mat", "pulse");
%      pulseTime = (1:3000000-1)/3000000;
%      bitRateTime = 1:(6 * round(fs / (br *     osr)) + 1);% 3 bits:
%      %fs/osr*br amount of samples
%      filt = interp1(pulseTime, pulse,  bitRateTime); %3 million + 1 values 
    
    %t = (1:length(upsampled_envelope_Q)) * fs/length(upsampled_envelope_Q);
    %plot(t, angle(upsampled_envelope_I - upsampled_envelope_Q * 1i));
    
    %filt = ones(2 * round(fs / (br *     osr)) + 1); 
    % elements in a pulse = time in a pulse / time in a pulse per element
    % = 1/br / 
    upsampled_envelope_I = conv(upsampled_envelope_I, filt / sum(filt), 'same');
    upsampled_envelope_Q = conv(upsampled_envelope_Q, filt/sum(filt), 'same');
    
    upsampled_envelope_IHANN = conv(upsampled_envelope_I, filtHANN / sum(filtHANN), 'same');
    upsampled_envelope_QHANN = conv(upsampled_envelope_Q, filtHANN/sum(filtHANN), 'same');
    
    
    %plot(t, abs(fft((upsampled_envelope_I - upsampled_envelope_Q * 1i))));
    upsampled_envelope = upsampled_envelope_I - upsampled_envelope_Q * 1i;
    upsampled_envelopeHANN = upsampled_envelope_IHANN - upsampled_envelope_QHANN * 1i;
    
    
    %plot(t, abs(angle((upsampled_envelope_I - upsampled_envelope_Q * 1i))));
    %plot(t, real(((upsampled_envelope_I - upsampled_envelope_Q * 1i))), t, imag(((upsampled_envelope_I - upsampled_envelope_Q * 1i))));
    % calculate number of output samples
    n1 = numel(upsampled_envelope);
    n2 = round((n1 - 1) * (br * osr) / fs) + 1;
    

    % resample the complex envelope to the new sample rate
    % (This is a part you don't see in couch because we're working in the
    % continous domain, but in the discrete domain, since we've just done a
    % low pass filter, we can throw away everything on the left and right
    % side of the filter)
    t1 = ((1 : n1)' - 1) / fs;
    t2 = ((1 : n2)' - 1) / (br * osr);
    complex_envelope(:,k) = interp1(t1, upsampled_envelope, t2);
    complex_envelopeHANN = interp1(t1, upsampled_envelopeHANN, t2);
    
    %plot(f, mag2db(abs(fft((upsampled_envelope_I - upsampled_envelope_Q * 1i)))));
    fNew = ((1:n2)' - 1)*(br * osr)/n2;
    semilogx(fNew, mag2db(abs(fft(complex_envelope(:,k)))), fNew, mag2db(abs(fft(complex_envelopeHANN))));
    xlabel('Frequency');
    ylabel('Magnitude in dB')
    legend('block lowpass', 'hann lowpass')
end

end