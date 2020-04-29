function generateTestbench(inputValues_I,inputValues_Q, period)
Trad = numerictype(1,8,5); %This is for setting the type the numbers we use
Frad = fimath('SumWordLength', 8, 'SumFractionLength', 5, 'SumMode', 'SpecifyPrecision');
inputBins_I = bin(fi(inputValues_I,'NumericType', Trad, 'FiMath', Frad));
inputBins_Q = bin(fi(inputValues_Q,'NumericType', Trad, 'FiMath', Frad));
fileID = fopen('testPart.txt','w');
for i = 1:size(inputBins_I,1)
    fprintf(fileID, 'input_I <= "%s"; \r\n input_Q <= "%s"; \r\n wait for %d ns; \r\n ', inputBins_I(i,:), inputBins_Q(i,:), period);
end
end