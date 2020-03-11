function [out] = gaussian_filter(bt, osr)

% calculate sigma based on bandwidth
sigma = sqrt(log(2)) / (2 * pi * bt);

% generate gaussian
t = linspace(-2, 2, 4 * osr + 1);
out = exp(-t.^2 / (2 * sigma^2));

% normalize filter (DC gain = 1)
out = out / sum(out);

end