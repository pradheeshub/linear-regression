data=load('data.txt');
x=data(:,1);
y=data(:,2);

%plot x and y
figure(1);
plot(x,y,'rx','Markersize',10);
xlabel('x');
ylabel('y');

X=[ones(length(x),1),x];
theta=zeros(2,1);
alpha=0.01;
iter=2000;
 
%cost function
costfunction(X,y,theta);

%GradientDescent
gradientDescent(X,y,theta,iter,alpha);


