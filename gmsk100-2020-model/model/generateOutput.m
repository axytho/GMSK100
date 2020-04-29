function generateOutput(output,filename, period)
Trad = numerictype(1,8,5); %This is for setting the type the numbers we use
Frad = fimath('SumWordLength', 8, 'SumFractionLength', 5, 'SumMode', 'SpecifyPrecision');
outputBins = bin(fi(output,'NumericType', Trad, 'FiMath', Frad));
fileID = fopen(filename,'w');
for i = 1:size(outputBins,1)
    fprintf(fileID, 'At time %d ms output: "%s";  \r\n  ', period*i, outputBins(i,:));
end
end