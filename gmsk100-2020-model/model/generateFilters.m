%      pulse = load("pulse.mat", "pulse");
%      plot(abs(fft(pulse.pulse)));
%      pulseTime = (1:3000000-1)/3000000;
%      bitRateTime = 1:(6 * round(fs / (br *     osr)) + 1);% 3 bits:
%      %fs/osr*br amount of samples
%      filt = interp1(pulseTime, pulse,  bitRateTime); %3 million + 1 values 
hannFilter= hann(10)/sum(hann(10))
Trad = numerictype(1,8,5); %This is for setting the type the numbers we use
Frad = fimath('SumWordLength', 8, 'SumFractionLength', 5, 'SumMode', 'SpecifyPrecision');
% The above is for setting the type of what happens when you sum the 2
% values, we set SumMode to specify so that we can use the parameters
% SumWordLength and SumFractionLength

hannInBin = bin(fi(hannFilter,'NumericType', Trad, 'FiMath', Frad))
%plot(abs(fft([zeros(1000,1);hannInBin;zeros(1000,1)])));

