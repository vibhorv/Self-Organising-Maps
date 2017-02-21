i=1;
x_2=0.5;
yr=zeros(100,2);
for x_1=0:0.01:1
        y_1=((exp(-x_1)*x_2*x_2) + (exp(-x_2)*x_1*x_1) );
        y_2=((exp(-x_1*x_1)*x_2) + (exp(-x_2*x_2)*x_1) );
        yr(i,1)=y_1;
        yr(i,2)=y_2;
        X=[x_1,x_2];
        hi= dij_vect(X,w);
        [Yi,Y] = get_lattice_pred(w,yw,a,X,hi,m);
        Yo(i,:)=Y;
        i=i+1;
    
end
i
subplot(2,1,1)
plot(yr(:,1))
hold on;
plot(Yo(:,1))
hold off;
legend('Original','Predicted')


subplot(2,1,2)
plot(yr(:,2))
hold on;
plot(Yo(:,2))
hold off;
legend('Original','Predicted')
