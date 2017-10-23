function [p f C Accuracy] = prediction(theta, X,threshold,y)
%PREDICT Predict whether the label is 0 or 1 using learned logistic 
%regression parameters theta
%   p = PREDICT(theta, X) computes the predictions for X using a 
%   threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
p = zeros(m, 1);

t= sigmoid(X*theta);
for i =1:m
    if t(i,1)>threshold,
    p(i,1)=1;
    else
        p(i,1)=0;
    end
end
[C order]=confusionmat(y,p);
pr=C(2,2)/(C(2,2)+C(1,2));
rl=C(2,2)/(C(2,2)+C(2,1));
f=2*pr*rl/(pr+rl);
 Accuracy= (C(1,1)+C(2,2))/m;
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters. 
%               You should set p to a vector of 0's and 1's
%







% =========================================================================


end
