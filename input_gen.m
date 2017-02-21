function [ x,y] = input_gen(n)
x=zeros(n,2);
y=zeros(n,2);

for a=1:n
    x_1=rand(1,1);
    x_2=rand(1,1);
    y_1=((exp(-x_1)*x_2*x_2) + (exp(-x_2)*x_1*x_1) );
    y_2=((exp(-x_1*x_1)*x_2) + (exp(-x_2*x_2)*x_1) );
    y(a,1)=y_1;
    x(a,1)=x_1;
    y(a,2)=y_2;
    x(a,2)=x_2;
  
    
end
end
