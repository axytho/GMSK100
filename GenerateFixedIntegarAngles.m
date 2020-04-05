% Generate atan
Trad = numerictype(1,8,5); %This is for setting the type the numbers we use
Frad = fimath('SumWordLength', 8, 'SumFractionLength', 5, 'SumMode', 'SpecifyPrecision');
% The above is for setting the type of what happens when you sum the 2
% values, we set SumMode to specify so that we can use the parameters
% SumWordLength and SumFractionLength
angleToBeFound = 0.75;
angleInHex = bin(fi(angleToBeFound,'NumericType', Trad, 'FiMath', Frad))
im = fi(sin(angleToBeFound), 'NumericType', Trad,'FiMath', Frad);
re = fi(cos(angleToBeFound), 'NumericType', Trad,'FiMath', Frad);

realInitial = bin(re)
imaginaryInitial = bin(im)



% N = 5;
% angle = 0;
% angles = fi([cos(angle), sin(angle)],'NumericType', Trad, 'FiMath', Frad);
% bin(angles)
% reg = fi(0, 'NumericType',Trad, 'FiMath', Frad); % Temporary register
% 
% a = fi(0,'NumericType', Trad, 'FiMath', Frad); % Starting angle (0 radians)
% im = fi(sin(angleToBeFound), 'NumericType', Trad,'FiMath', Frad);
% re = fi(cos(angleToBeFound), 'NumericType', Trad,'FiMath', Frad);
% realInitial = bin(re)
% imaginaryInitial = bin(im)
% 
% N = 12;
% angles = fi(atan(2.^-(1:N)),'NumericType', Trad, 'FiMath', Frad);
% 
% for i = 1:N
%     if bitget(im,8) % negative angle
%         a = a - angles(i);
% 
%         reg = re - bitshift(im,-i);
%         im = bitshift(re,-i) + im;
%         re = reg;
% 
%     else
%         a = a + angles(i);
% 
%         reg = re + bitshift(im,-i);
%         im = -bitshift(re,-i) + im;
% 
%         re = reg;
% 
%     end
%     
% end
% bin(a)