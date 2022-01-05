degree= input("Degree of polynomial : ");
x= input("Value of x(i) : ");
f= input("Value of f(i) : ");
p= input("Point of interpolation : ");
l= ones(1,degree);
for i=1:degree
    for j=1:degree
        if(j~=i)
            l(i) = ((p-x(j))/(x(i)-x(j)))*l(i);
        end
    end
end
sum =0;
for i=1:degree
    sum= sum+l(i)*f(i);
end
fprintf("Approximate value at given point : %0.4f",sum);
%[0;8;16;24;32;40]
%[14.621;11.843;9.870;8.418;7.305;6.413]
