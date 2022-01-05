clear;
%results obtained by simpsons has a higher degree of accuracy 
f =@(x) (cos(x)).^2; %put the function here
a = input ('enter the lower limit: ');
b = input ('enter the upper limit: ');
N = input ('enter the value of subinterval: ');
h = (b-a)/N;
sum = 0;
n = 1;
for i=1:N-1
    x(i)=a+i*h;
    y(i)=f(x(i));
    if (rem(i,2)==0)
    sum = sum + 2*y(i);
    else
    sum = sum + 4*y(i);
    end
    n = n + 1;
end
result = (sum + f(a)+f(b))*(h/3);
fprintf('the ans is %f', result);
n
