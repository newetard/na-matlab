%given some function
x=[1 1.5 2.0 2.5];
y=[2.7183 4.4817 7.3891 12.1825];
x0=2.25;
n=4;
A=zeros(n,n);
for i=1:n
    A(i,1)=y(i);
end
for j=2:n
    for i=j:n
        A(i,j)=(A(i,j-1)-A(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
for i=1:n
    P(i)=1;
    for j=1:i-1
        P(i)=P(i)*(x0-x(j));
    end
end
sum=0;
for i=1:n
    sum=sum+(A(i,i)*P(i));
end
disp("Approximated value:");
disp(sum);
exact=exp(2.25);
disp("Exact value:");
disp(exact);
