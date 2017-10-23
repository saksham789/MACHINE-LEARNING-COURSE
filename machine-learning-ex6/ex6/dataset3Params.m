function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;
t1 =[0.01;0.03; 0.1; 0.3  ;1; 3 ;10 ;30];
t2 =[0.01;0.03; 0.1; 0.3  ;1; 3 ;10 ;30];
error_val = zeros(8,8);
for i=1:size(t1)
    for j = 1:size(t2)
        model= svmTrain(X, y, t1(i), @(x1, x2) gaussianKernel(x1, x2, t2(j)));
        pred = svmPredict(model, Xval);
          error_val(i,j)=mean(double(pred~= yval));
    end
end
minimum = min(min(error_val));
[r,c]=find(minimum==error_val);
C= t1(r);
sigma= t2(c);

        
        
    





% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%







% =========================================================================

end
