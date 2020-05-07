function generateTestbench2(input_signal, period)
Trad = numerictype(1,8,5); %This is for setting the type the numbers we use
Frad = fimath('SumWordLength', 8, 'SumFractionLength', 5, 'SumMode', 'SpecifyPrecision');
input_signal_binary = bin(fi(input_signal,'NumericType', Trad, 'FiMath', Frad));
fileID = fopen('testPartInputSignal.txt','w');
for i = 1:size(input_signal_binary,1)
    fprintf(fileID, 'input_signal <= "%s"; \r\n wait for %d ns; \r\n ', input_signal_binary(i,:),  period);
end
end