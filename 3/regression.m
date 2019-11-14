%OPTIONAL PROBLEM 1-LINEAR REGRESSION IN MULTIPLE WAYS
%%
load regression.mat;
scatter(X, Y);
hold on;
%using least-squares regression
t = ones(length(X), 1);
%= [x_m, 1] 
XAug = cat(2,X,t);
% concatenate theta and b into a single parameter vector
theta = (diff(Y)./diff(X));
theta(length(X)) = theta(length(X)-1)*1;
b = (Y - theta.*X);
beta = [theta;b];  % XAug * beta = (X_m*theta+b).
p=polyfit(X, Y, 1);
plot(X, polyval(p,X));