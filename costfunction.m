function J = costfunction(X,y,theta)
  m=length(y);
  hypo=X*theta;
  error=(hypo-y).^2;
  J=1/(2*m) * (sum(error));
  J
endfunction
