function [complex_envelope, complex_envelopeHANN] = iq_downmixer(signal, osr, br, fc, fs)



% TODO: You may want to implement a better downsampling filter.
[nbrows, nbcols] = size(signal);



%fc = 20195;
%plot(abs(fft((signal))));
for k=1:nbcols
    %freqz(signal, 1, 50000, 200000);
    %FILTER
        frequencies = [0, 0.04, 0.10, 0.20, 0.20, 1];
        magnitude = [1, 1, 0, 0, 0, 0];
        weights = [1, 20, 10];
        b = firls(21, frequencies, magnitude, weights);
        filterLength = 22;
        % b= hann(filterLength);
        b= b/sum(b);
        Trad = numerictype(1,8,5); %This is for setting the type the numbers we use
        Frad = fimath('SumWordLength', 8, 'SumFractionLength', 5, 'SumMode', 'SpecifyPrecision');
        filterInBin = fi(b,'NumericType', Trad, 'FiMath', Frad);
        b = filterInBin.data.';
    filteredSignal = conv(signal,b,'same');
    digitalSignal2M = downsample(filteredSignal, 10);
    filteredSignal2M = conv(digitalSignal2M,b,'same');
    %filteredSignal2M = conv(filteredSignal2M,b,'same');
    %freqz(filteredSignal2M, 1, 1000000, 2000000);
    %filteredSignal2 = conv(filteredSignal1,b,'same');
    %freqz(filteredSignal2, 1, 50000, 2000000);
    digitalSignal50K = downsample(filteredSignal2M, 40);
    %filteredSignal500K = conv(digitalSignal500K,b,'same');
    %freqz(digitalSignal50K, 1, 40000, 50000);
    %freqz(originalSignal,1, 50000, 50000);
    %BANDPASS filter
    %bBandpass= [2, 2, -1, -2, -1, 2, 2, -1, -2, -1, 2, 2, -1, -2, -1, 2, 2, -1, -2, -1, 2, 2];
    %bBandpass= bBandpass/sum(bBandpass);
    
    %filteredSignalBand = conv(digitalSignal,bBandpass,'same');
    %digitalSignal = downsample(filteredSignalBand, 2);
    %freqz(originalSignal, 1, 50000, 50000);
    %newSignalBP = bandpass(originalSignal, [19400, 20600], 50000);
    %freqz(newSignalBP,1, 50000, 50000);
    %plot(signal)
    [IStuff, QStuff, VCO] = CostasLoop(digitalSignal50K);
    %plot(VCO);
    %generateTestbench2(digitalSignal,20000);
    % IQ downmixer
%     t = ((1 : numel(signal(:,k)))' - 1) / fs;
%     % Get the proper axis
%     f = ((1:numel(signal(:,k)))' - 1)*fs/numel(signal(:,k));
%     cordic = 0;
%     if cordic
%         cosCordic = zeros(length(t), 1);
%         sinCordic = zeros(length(t), 1);
%         for i =1:length(t)
%             v = cordic(2 * pi * fc *t(i),6);
%             cosCordic(i) = v(1);
%             sinCordic(i) = v(2);
%         end
%     else
%         
%         %upsampled_envelope = 2 * exp(-1j * 2 * pi * fc * t) .* signal;
%         %UNCOMMENT
%         cosCordic = cos(2*pi*fc*t);
%         sinCordic = sin(2*pi*fc*t);
%         
%     end
%     upsampled_envelope_I = cosCordic .* signal(:,k);
%     upsampled_envelope_Q = sinCordic .* signal(:,k);
%     
%     
%     
%     %DIGITAL SIMULATION CODE
%     digitalCode_I = downsample(upsampled_envelope_I,  40);
%     digitalCode_Q = downsample(upsampled_envelope_Q, 40);
%     %generateTestbench(digitalCode_I, digitalCode_Q, 20000); %200000 is the correct value
% %     fDigitalCode = ((1:numel(digitalCode_I))' - 1)*fs/40/numel(digitalCode_I);
% %     plot(fDigitalCode,abs(fft(digitalCode_I)))
% %     xlabel('frequency in Hz')
% %     ylabel('Frequency spectrum');
%     
%     
%     
%     Trad = numerictype(1,8,5); %This is for setting the type the numbers we use
%     Frad = fimath('SumWordLength', 8, 'SumFractionLength', 5, 'SumMode', 'SpecifyPrecision');
%     inputData_I = fi(digitalCode_I,'NumericType', Trad, 'FiMath', Frad);
%     inputData_Q = fi(digitalCode_Q,'NumericType', Trad, 'FiMath', Frad);
%     
% %     hold on;
% %     plot(t, upsampled_envelope_I);
% %     tDigital = 0:0.0002:((numel(inputData_I)-1)*0.0002);
% %     scatter(tDigital, inputData_I);
% %     xlabel('Time in seconds')
% %     ylabel('Value of samples')
% %     hold off;
% 
%     
%     
% %     inputData_I = inputData_I.data;
% %     inputData_Q = inputData_Q.data;
% %     filteredData_I = zeros(floor(numel(inputData_I)/10),1);
% %     filteredData_Q = zeros(floor(numel(inputData_I)/10),1);
% %     for i=1:floor(numel(inputData_I)/10)
% %         filteredData_I(i) = (inputData_I(10+i-8) + inputData_I(10+i-1)) * 0.0313 + ...
% %         (inputData_I(10+i-7) +inputData_I(10+i-2)) * 0.0938 + ...
% %         (inputData_I(10+i-6) +inputData_I(10+i-3)) * 0.1563 + ...
% %         (inputData_I(10+i-5) +inputData_I(10+i-4)) * 0.2188;
% %     filteredData_Q(i) = (inputData_Q(10+i-8) + inputData_Q(10+i-1)) * 0.0313 + ...
% %         (inputData_Q(10+i-7) +inputData_Q(10+i-2)) * 0.0938 + ...
% %         (inputData_Q(10+i-6) +inputData_Q(10+i-3)) * 0.1563 + ...
% %         (inputData_Q(10+i-5) +inputData_Q(10+i-4)) * 0.2188; 
% %     end
% %    generateOutput(filteredData_I, "filteredData_I.txt", 2);
% %     generateOutput(filteredData_Q, "filteredData_Q.txt", 2);
% 
% 
% % UNCOMMENT FOR WORKING MATLAB    
%        inputData_I = inputData_I.data;
%     inputData_Q = inputData_Q.data;  
%     frequencies = [0, 0.04, 0.10, 0.20, 0.20, 1];
%     magnitude = [1, 1, 0, 0, 0, 0];
%     weights = [1, 20, 10];
%     b = firls(21, frequencies, magnitude, weights);
%     b= b/sum(b);
%     filterInBin = fi(b,'NumericType', Trad, 'FiMath', Frad);
%     filteredData_I = conv(inputData_I, filterInBin.data, 'same');
%     filteredData_Q = conv(inputData_Q, filterInBin.data, 'same');
%     
% 
% %     for i=1:floor(numel(inputData_I)-10)
% %         filteredData_I(i) = (inputData_I(10+i-8) + inputData_I(10+i-1)) * 0.3438 + ...
% %         (inputData_I(10+i-7) +inputData_I(10+i-2)) * 0.1250 + ...
% %         (inputData_I(10+i-6) +inputData_I(10+i-3)) * 0.0313 + ...
% %         (inputData_I(10+i-5) +inputData_I(10+i-4)) * 0;
% %     filteredData_Q(i) = (inputData_Q(10+i-8) + inputData_Q(10+i-1)) * 0.2188 + ...
% %         (inputData_Q(10+i-7) +inputData_Q(10+i-2)) * 0.1563 + ...
% %         (inputData_Q(10+i-6) +inputData_Q(10+i-3)) * 0.0938 + ...
% %         (inputData_Q(10+i-5) +inputData_Q(10+i-4)) * 0.0625; 
% %     end
%    % generateOutput(filteredData_I, "filteredData_I.txt", 2);
%    % generateOutput(filteredData_Q, "filteredData_Q.txt", 2);
% 
% 
% 
%     
%     %angleFilteredData = atan(filteredData_Q./filteredData_I);%ACTUALLY SHOULD BE INVERTED
%     %generateOutput(angleFilteredData, "angleOut.txt", 2);
%     
%     angleBetterData = angle(filteredData_I - filteredData_Q*1i);
%     
% 
% 
%     % apply a simple downsampling filter
%      filt = ones(2 * round(fs / (br * osr)) + 1);
%      filtHANN = hann(10);
%      filtHANN = filtHANN/sum(filtHANN);
%      
%      
%      
%     % This is simply a crude block filter, usebetter low pass filter
%     % this means instead of our impulse response being a series of ones our
%     % impulse response should be the pulse shape.
%     %plot shape:
%     %plot(upsampled_envelope_Q)
% %      pulse = load("pulse.mat", "pulse");
% %      pulseTime = (1:3000000-1)/3000000;
% %      bitRateTime = 1:(6 * round(fs / (br *     osr)) + 1);% 3 bits:
% %      %fs/osr*br amount of samples
% %      filt = interp1(pulseTime, pulse,  bitRateTime); %3 million + 1 values 
%     
%     %t = (1:length(upsampled_envelope_Q)) * fs/length(upsampled_envelope_Q);
%     %plot(t, angle(upsampled_envelope_I - upsampled_envelope_Q * 1i));
%     
%     %filt = ones(2 * round(fs / (br *     osr)) + 1); 
%     % elements in a pulse = time in a pulse / time in a pulse per element
%     % = 1/br / 
%     
%     
%     
%     upsampled_envelope_I = conv(upsampled_envelope_I, filt / sum(filt), 'same');
%     upsampled_envelope_Q = conv(upsampled_envelope_Q, filt/sum(filt), 'same');
%     
%     upsampled_envelope_IHANN = conv(upsampled_envelope_I, filtHANN / sum(filtHANN), 'same');
%     upsampled_envelope_QHANN = conv(upsampled_envelope_Q, filtHANN/sum(filtHANN), 'same');
%     
%         
%     
% %     hold on;
% %     plot(t, upsampled_envelope_IHANN);
% %     tDigital = 0:0.0002:((numel(filteredData_I)-1)*0.0002);
% %     scatter(tDigital, filteredData_I);
% %     xlabel('Time in seconds')
% %     ylabel('Value of samples')
% %     hold off;
%     
%     %plot(t, abs(fft((upsampled_envelope_I - upsampled_envelope_Q * 1i))));
%     upsampled_envelope = upsampled_envelope_I - upsampled_envelope_Q * 1i;
%     upsampled_envelopeHANN = upsampled_envelope_IHANN - upsampled_envelope_QHANN * 1i;
%     
%     
%     %plot(t, abs(angle((upsampled_envelope_I - upsampled_envelope_Q * 1i))));
%     %plot(t, real(((upsampled_envelope_I - upsampled_envelope_Q * 1i))), t, imag(((upsampled_envelope_I - upsampled_envelope_Q * 1i))));
%     % calculate number of output samples
%     n1 = numel(upsampled_envelope);
%     n2 = round((n1 - 1) * (br * osr) / fs) + 1;
%     
% 
%     % resample the complex envelope to the new sample rate
%     % (This is a part you don't see in couch because we're working in the
%     % continous domain, but in the discrete domain, since we've just done a
%     % low pass filter, we can throw away everything on the left and right
%     % side of the filter)
%     t1 = ((1 : n1)' - 1) / fs;
%     t2 = ((1 : n2)' - 1) / (br * osr);
%     complex_envelope(:,k) = interp1(t1, upsampled_envelope, t2);
%     complex_envelopeHANN = interp1(t1, upsampled_envelopeHANN, t2);
%     
% %     hold on;
% %     plot(t, -angle(upsampled_envelopeHANN));
% %     %tDigital = 0:0.0002:((numel(angleFilteredData)-1)*0.0002);
% %     %scatter(tDigital, angleFilteredData);
% %     
% %     hold off;
%     %fNew = ((1:n2)' - 1)*(br * osr)/n2;
%     %semilogx(fNew, mag2db(abs(fft(complex_envelope(:,k)))), fNew, mag2db(abs(fft(complex_envelopeHANN))));
% %     xlabel('Frequency');
% %     ylabel('Magnitude in dB')
% %     legend('block lowpass', 'hann lowpass')
%     
% end

end