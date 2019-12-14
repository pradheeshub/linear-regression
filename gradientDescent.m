function [theta,j] =gradientDescent(X,y,theta,iter,alpha)
  m=length(y);
  for i=1:iter,
  hypo=X*theta;
  error=(hypo-y);
  x_column1=X(:,1);
  x_column2=X(:,2);
  theta(1,1)=theta(1,1)-(alpha*(1/m)*error'*x_column1);
  theta(2,1)=theta(2,1)-(alpha*(1/m)*error'*x_column2);
  j(iter)=costfunction(X,y,theta);
  
end
j
theta
endfunction
