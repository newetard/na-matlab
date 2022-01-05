clear;
%trapezoidal rule gives an estimate result
f =@(x) (cos(x)).^2; %put the function here
a = input ('enter the lower limit: ');
b = input ('enter the upper limit: ');
n = input ('enter the value of subinterval: ');
h = (b-a)/n;
sum = 0;
for i=1:1:n-1
    x(i)=a+i*h;
    y(i)=f(x(i));
    sum = sum + 2*y(i);
end
sum=sum+f(a)+f(b);
result=sum*(h/2);

fprintf('\n The sum is %f', sum);
fprintf('\n The result is %f', result );

