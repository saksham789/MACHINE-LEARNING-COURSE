function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

a = size(z,1);
b = size(z,2);
for i = 1:a
    for j = 1:b
        g(i,j) = 1.0 ./ (1.0 + exp(-z(i,j)));
    end
end
end
