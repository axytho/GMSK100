%      pulse = load("pulse.mat", "pulse");
%      plot(abs(fft(pulse.pulse)));
%      pulseTime = (1:3000000-1)/3000000;
%      bitRateTime = 1:(6 * round(fs / (br *     osr)) + 1);% 3 bits:
%      %fs/osr*br amount of samples
%      filt = interp1(pulseTime, pulse,  bitRateTime); %3 million + 1 values 
hannFilter= hann(20)/sum(hann(20));
Trad = numerictype(1,8,5); %This is for setting the type the numbers we use
Frad = fimath('SumWordLength', 8, 'SumFractionLength', 5, 'SumMode', 'SpecifyPrecision');
% The above is for setting the type of what happens when you sum the 2
% values, we set SumMode to specify so that we can use the parameters
% SumWordLength and SumFractionLength

%hannInBin = bin(fi(hannFilter,'NumericType', Trad, 'FiMath', Frad))
hannInBin = fi(hannFilter,'NumericType', Trad, 'FiMath', Frad);
%plot(abs(fft([zeros(1000,1);ones(20,1);zeros(1000,1)])));

% customFilter = fir2(10, [0, 0.15, 1], [1, 0, 0]);
% freqz(customFilter, 1, 1000, 5000);

frequencies = [0, 0.04, 0.10, 0.20, 0.20, 1];
magnitude = [1, 1, 0, 0, 0, 0];
weights = [1, 20, 10];

% magnitude = [1, 0.5, 0, 0];
% weights = [1, 0.001, 100, 1];
% up = [1.5 1.5 0.02 0.5];
% lo = [0.5 -0.5 -0.02 -0.5];
%b = fircls(30,frequencies,magnitude,up,lo,'both');
%b = fircls1(29,0.06,0.1,0.1);
b = firls(21, frequencies, magnitude, weights);
b= b/sum(b);
%plot(abs(fft([zeros(2490, 1) ; b.'; zeros(2490, 1)])));
%freqz(b, 1, 40000, 5000);
filterInBin = fi(b,'NumericType', Trad, 'FiMath', Frad)
freqz(filterInBin.data, 1, 40000, 5000);
%plot(abs(fft([zeros(2490, 1) ; filterInBin.data.'; zeros(2490, 1)])));
bin(fi(pi,'NumericType', Trad, 'FiMath', Frad))
% fsamp = 5000;
% fcuts = [100 200];
% mags = [1 0];
% devs = [0.1 0.3];
% [n,Wn,beta,ftype] = kaiserord(fcuts,mags,devs,fsamp)
% hh = fir1(n,Wn,ftype,kaiser(n+1,beta),'noscale');
% freqz(hh,1,10000,fsamp);
