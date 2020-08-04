function [theta] = normalEqnLambda(X, y, lambda)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQNLAMBDA(X,y,lambda) computes the closed-form solution to linear 
%   regression using the normal equations with the regularization of lambda.
m = size(X,2);

I = eye(m);
I(1,1) = 0;

theta = pinv((X' * X) + (lambda * I)) * X' * y; 

end

