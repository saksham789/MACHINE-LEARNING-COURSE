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
%temp1 = sum(sum(Theta1(:,2:size(Theta1,2)).^2,1),2) +sum(sum(Theta2(:,2:size(Theta2,2)).^2,1),2);
%sum(((nn_params).^2))-sum((Theta1(1,:).^2))-sum((Theta2(1,:).^2));