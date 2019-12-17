function [theta,j] =gradientDescent(X,y,theta,alpha,iteration)
  m=length(y);
  j = zeros(iteration, 1);
  
  for i=1:iteration
  hypo=X*theta;
  error=hypo.-y;
  x_column1=X(:,1);
  x_column2=X(:,2);
  theta(1,1)=theta(1,1)-(alpha*(1/m)*error'*x_column1);
  theta(2,1)=theta(2,1)-(alpha*(1/m)*error'*x_column2);

    j(i)=costfunction(X,y,theta);
end
hold on;
plot(X(:,2),X*theta, '-')
legend('Training data', 'Linear regression')

end