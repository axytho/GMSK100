function generateTestbench(inputValues, period)
Trad = numerictype(1,8,5); %This is for setting the type the numbers we use
Frad = fimath('SumWordLength', 8, 'SumFractionLength', 5, 'SumMode', 'SpecifyPrecision');
inputBins = bin(fi(inputValues,'NumericType', Trad, 'FiMath', Frad));
fileID = fopen('testPart.txt','w');
for i = 1:numel(inputValues)
    fprintf(fileID, 'inputValue = "%s" \r\n wait for %d ns \r\n ', inputBins(i,:), period);
end
end