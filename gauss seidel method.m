%Gauss Seidel Method
n=input("Enter the number of unknowns : ");
A= input("Input Matrix : ");
b= input("Enter column matrix : ");
tol=input("Enter tolerance : ");
N= input("Enter number of iterations : ");
x1= zeros(n,1);
x0= input("Enter initial approximation : ");
for i=1:N
    for j=1:n
        x1(j)= (b(j)-A(j,1:j-1)*x1(1:j-1)-A(j,j+1:n)*x0(j+1:n))/A(j,j);    
    end
    err=norm(x1-x0,inf);
    if(err<=tol)
        break;
    end
    x0=x1;
end
disp("Solutions : ");
disp(i);
for i=1:n
    fprintf("x%d = %0.5f\n",i,x1(i,1));
end
%[10 8 -3 1;2 10 1 -4;3 -4 10 1;2 2 -3 10]  
%[4 1 -1 1;1 4 -1 -1;-1 -1 5 1;1 -1 1 3]
%[4.63 -1.21 3.22;-3.07 5.48 2.11;1.26 3.11 4.57]

