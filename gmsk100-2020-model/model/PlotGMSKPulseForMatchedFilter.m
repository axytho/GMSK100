%http://home.scarlet.be/~pc030062/extra_info/MSK%20-%20GMSK.pdf
% the last pages explain how we're creating this pulse shape
% This is the pulse shape that we're then going to use for our matched
% filter.
Tb = 1/100;
symbols = 3;% Only this symbol, or all the symbols? We want to see it for
%HARDCODED FOR RECT PULSE
% this symbol and the ones on the left and right
% Amplitude is one
frequencyResolution = 1e6;%we're taking this high, we can make it lower later
bt = 0.5;
gaussPulse = gaussdesign(bt, symbols, frequencyResolution);
fixedPart = fix(length(gaussPulse)/symbols);
remPart = rem(length(gaussPulse),symbols);
rectPulse = [zeros(fixedPart, 1); ones(fixedPart, 1); zeros(fixedPart, 1);zeros(remPart, 1)]*max(gaussPulse);
size(rectPulse)
size(gaussPulse)
t = ((1 : numel(gaussPulse))' - 1) / frequencyResolution - numel(gaussPulse)/(2*frequencyResolution);
%plot(t, gaussPulse, t, rectPulse);
integrated = cumsum(gaussPulse); % integrate
integratedRect = cumsum(rectPulse);
integratedRect = max(integrated)/max(integratedRect)*integratedRect;
%plot(t, integrated, t, integratedRect);

pulse = sin(integrated*pi);
pulseRect = sin(integratedRect*pi);
plot(t, pulse, t, pulseRect);
xlabel("Time (in 10 ms, per sample)");
ylabel("Normalized amplitude");
legend('GMSK Pulse', 'MSK pulse');
%paper explaining GMSK filter with working formulas:
% https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=704333