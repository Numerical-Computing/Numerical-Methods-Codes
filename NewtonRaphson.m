func1=@(x) (3*x + sin(x) - exp(x)); 
derivative=@(x) (3 + cos(x)- exp(x)); 
x=1;
iter=0;
while (iter <= 5)
if (derivative(x)~=0)
x1=x-(func1(x)/derivative(x)); 
end
x=x1; 
iter=iter+1;
end
fprintf('Root is %f',x1);
