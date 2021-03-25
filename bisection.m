function_x=@(x) x.^3+3*x-5;
x1=1;
x2=2;
figure(1)
fplot(function_x,[x1 x2],'b-')
grid on
hold on

x_mid = (x1 + x2)/2; 
iterate=1;
%fprintf('%f',abs(- 4))
%while abs(myfunction(x_mid))> 0.01
while abs(x1 - x2) > 0.01 %or you can change it to number of iterations, it can be any condition
if (function_x(x2)*function_x(x_mid))<0
    x1=x_mid;
else
    x2=x_mid;
end
x_mid = (x1+x2)/2;
%fprintf('The root of data is %g\n' , x_mid); 
iterate=iterate+1;
fprintf('%d Approximation Bracket is [%f,%f] gives function value %f,%f respectively and, mid value is %f\n',iterate, x1,x2,function_x(x1),function_x(x2),x_mid);
end
plot(x_mid,function_x(x_mid),'r')
fprintf('The root of data is %f\n and iteration is %d\n' , x_mid,iterate);