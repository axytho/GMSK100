function generateTestbench4(input_signal, solution, period)
Trad = numerictype(1,16,15); %This is for setting the type the numbers we use
Frad = fimath('SumWordLength', 16, 'SumFractionLength', 15, 'SumMode', 'SpecifyPrecision');
input_signal_binary = bin(fi(input_signal,'NumericType', Trad, 'FiMath', Frad));
solution_binary = bin(fi(solution,'NumericType', Trad, 'FiMath', Frad));
fileID = fopen('generateTest3.txt','w');
for i = 1:size(input_signal_binary,1)
    fprintf(fileID, 'A_in <= "%s"; \r\n solution <= "%s"; \r\n wait for %d ns; \r\n ', input_signal_binary(i,:), solution_binary(floor(i/10)+1,:),  period);
end
end