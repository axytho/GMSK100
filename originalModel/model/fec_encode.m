function encoded = fec_encode(plain)

% The NASA standard convolutional code with K=7 and rate 1/2.
generator = [
    1 1 1 1 0 0 1;
    1 0 1 1 0 1 1;
];

encoded = reshape(mod(conv2(plain', generator), 2), [], 1);

end