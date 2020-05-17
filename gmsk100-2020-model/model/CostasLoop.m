function [output_I,output_Q, VCO] = CostasLoop(signal)
% clear all;
% t = (1:600)/50000;
% signal = sin(2*pi*t*20500);
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
%freqz(filterInBin.data, 1, 40000, 50000);
%COSTASLOOP
phase = 0;
n = numel(signal);
time = 1/50000;
VCO = zeros(n, 1);
inphase = zeros(n, 1);
quadrature = zeros(n, 1);
output_I = zeros(n, 1);
output_Q = zeros(n, 1);
product = zeros(n, 1);
integral = zeros(n, 1);
PI_output = zeros(n, 1);
VCO(1:end) = 20000;
inphase(1) = signal(1) .* cos(2*pi*time*VCO(1)*1);
inphase(2) = signal(2) .* cos(2*pi*time*VCO(2)*2);
quadrature(1) = signal(1) .* sin(2*pi*time*VCO(1)*1);
quadrature(2) = signal(2) .* sin(2*pi*time*VCO(2)*2);

 %50 KHz costas loop
% Via for loop, no matlab specials because fc changes
register_I = zeros(5, 1);
register_Q = zeros(5, 1);

%    [bNew, a] = butter(5,0.1);
% phaseTest = 20000/25000.*(1:3).'*pi;
% solution = cos(phaseTest);
% phaseInput = acos(solution)./pi
% generateTestbench3(phaseInput, solution, 20000);


for i=1:n
   
      
    
   phase = phase + 2*pi*time*VCO(i);
   inphase(i) = signal(i) .* cos(phase);
   quadrature(i) = signal(i) .* sin(phase);
   
   if i == 1
       TradNew = numerictype(1,16,15); %This is for setting the type the numbers we use
    FradNew = fimath('SumWordLength', 16, 'SumFractionLength', 15, 'SumMode', 'SpecifyPrecision');
       fi(phase/pi,'NumericType', TradNew, 'FiMath', FradNew)
        %bin(fi(cos(phase),'NumericType', TradNew, 'FiMath', FradNew))
        bin(fi(inphase(i),'NumericType', TradNew, 'FiMath', FradNew))
         
         
    end  
%    inputReg_I = inphase(i) - (a(2) * register_I(1) + a(3) * register_I(2) + a(4) * register_I(3)+ a(5) * register_I(4) + a(6) * register_I(5));
% 
% 
%    
%    inputReg_Q = quadrature(i) - (a(2) * register_Q(1) + a(3) * register_Q(2) + a(4) * register_Q(3)+ a(5) * register_Q(4) + a(6) * register_Q(5));
% 
% 
%    
%    output_I(i) = sum(bNew.' .* [inputReg_I;register_I]);
%    output_Q(i) = sum(bNew.' .* [inputReg_Q;register_Q]);
%    
%    
%    for j = 5:-1:2
%        register_I(j)  = register_I(j-1);
%    end
%    for j = 5:-1:2
%        register_Q(j)  = register_Q(j-1);
%    end
%    register_I(1) = inputReg_I;
%    register_Q(1) = inputReg_Q;
   
   
   
   
   if i<filterLength
       output_I(i) = inphase(i);
       output_Q(i) = quadrature(i);
       
   else 
       output_I(i) = sum(inphase((i-filterLength+1):i).* b);
        output_Q(i) = sum(quadrature((i-filterLength+1):i).* b);
   end   
   
   product(i) = output_I(i) * output_Q(i);


   if i==1
       integral(i) = 0;
       PI_output(i) = product(i);
   else
       integral(i) = integral(i-1) + 0.01625 * product(i);
       PI_output(i) = product(i) + integral(i-1);
   end
   %product can be filtered by the loop filter to remove stuff, not doing
   % it now
   % works without loop filter, let's add loop filter:
   
   
   
   
   VCO(i+1) = 20000 + 25000*PI_output(i);
    
end
%freqz(product(50:end),1 , 100000, 50000);
%freqz(conv(inphase, b, 'same'),1 , 100000, 50000);
%plot(signal)

%plot(conv(output_I,b,'same'))
% [bNew, a] = butter(5,0.1);
% filteredInPhase = filter(bNew, a, output_I);
% %freqz(filteredInPhase(50:end),1 , 100000, 50000);
% filteredInPhaseDown = downsample(filteredInPhase, 10);
% twiceFiltered = filter(bNew, a, filteredInPhaseDown);
%freqz(twiceFiltered(200:end),1 , 100000, 50000);
%plot(twiceFiltered);
%Working implementation:
filtered = conv(PI_output,b,'same');
downsampled = downsample(filtered, 10);
filteredDown = conv(downsampled,b,'same');
moreFilter = conv(filteredDown,b,'same');
t = (1:numel(filteredDown))/numel(filteredDown)*0.88;
plot(t, filteredDown);
xlabel("time in seconds");
ylabel("Filtered VCO");
%freqz(filteredDown,1 , 10000000, 50000)


%generateTestbench4(signal, filteredDown, 20000);
%generateTestbench5(filteredDown, 200000);
end



