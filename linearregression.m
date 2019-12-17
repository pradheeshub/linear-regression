clear ; close all; clc
data=load('data.txt');
X=data(:,1);
y=data(:,2);
m=length(y);
X=[ones(m,1),X];

%plot x and y
figure(1);
plot(X(:,2),y,'rx','Markersize',10);

theta=zeros(2,1);
alpha=0.01;
iteration=1500;
 
%GradientDescent
theta=gradientDescent(X,y,theta,alpha,iteration);

fprintf("theta1:%d\ntheta2:%d\n",theta);
theta0_vals = linspace(-10, 10, 100);
theta1_vals = linspace(-1, 4, 100);
J_vals = zeros(length(theta0_vals), length(theta1_vals));
for i = 1:length(theta0_vals)
    for j = 1:length(theta1_vals)
          t = [theta0_vals(i); theta1_vals(j)];    
          J_vals(i,j) = costfunction(X, y, t);
    end
end
figure;
surf(theta0_vals, theta1_vals, J_vals');




