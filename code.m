% x is nx1
% y is mx1

k=100;
[x,y]=input_gen(50000);
[cases,m]=size(y);
[cases,n]=size(x);
w=rand(k,n); %m is output vector dimension, k is no of lattice structures
a=rand(m,n,k); %n is input vector dimension
yw=rand(k,m);
error=10000;
for q=1:1000
for j=1:1000:cases-1000
for i=1:1000
    X=x(j+i,:);
    hi= dij_vect(X,w);
    [Yi,Y] = get_lattice_pred(w,yw,a,X,hi,m);
    Yd=y(j+i,:);
    [w,a,yw] = train(w,a,yw,X,Yd,q);
end
end
error=0;
for i=1:cases
    X=x(i,:);
    hi= dij_vect(X,w);
    [Yi,Y] = get_lattice_pred(w,yw,a,X,hi,m);
    Yd=y(i,:);
    error=error+(Yd-Y)*(Yd-Y)';
end
error
q
end

testplot