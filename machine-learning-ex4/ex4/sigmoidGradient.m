function g = sigmoidGradient(z)
%SIGMOIDGRADIENT returns the gradient of the sigmoid function
%evaluated at z
%   g = SIGMOIDGRADIENT(z) computes the gradient of the sigmoid function
%   evaluated at z. This should work regardless if z is a matrix or a
%   vector. In particular, if z is a vector or matrix, you should return
%   the gradient for each element.
g= zeros(size(z));
a = size(z,1);
b = size(z,2);
for i = 1:a
    for j = 1:b
        t = 1.0./ (1.0 + exp(-z(i,j))).^2;
        g(i,j) = t*exp(-z(i,j));
        
    end
end



% Instructions: Compute the gradient of the sigmoid function evaluated at
%               each value of z (z can be a matrix, vector or scalar).














% =============================================================




end
