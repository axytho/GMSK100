function clock = clock_recovery(signal, osr)

% TODO: Implement this yourself!

n = floor(numel(signal) / osr);
clock = (1 : n)' - 0.5;

end