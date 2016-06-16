function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

m = length(y);
J_vect = zeros(1,m);
for i = 1:m
  h_temp = [X(i,1),X(i,2)];
  J_vect(i) = (dot(h_temp,theta)-y(i))^2;
endfor

J = sum(J_vect)/(2*m)

% =========================================================================

end
