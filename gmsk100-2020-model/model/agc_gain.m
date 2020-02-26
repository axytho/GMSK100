function out = agc_gain(in)
R_in = 1e3;
Gain = 60; %dB
A = 10^(Gain/20);

%Resistorbank
rb = [500, 281, 100, 31, 10].*1e3;
prompt = 'Switches resistorbank? ';
control = input(prompt);
vectorproduct = rb .* control;
vectorproductnonzero = nonzeros(vectorproduct);
parallelresistance = sum(1./vectorproductnonzero)^(-1)



% TODO: Implement this yourself!
in = lowpass(in, 0.3);
CL_gain = A/(1+R_in*A/parallelresistance);
out = 0.002*parallelresistance/R_in * in;

end


