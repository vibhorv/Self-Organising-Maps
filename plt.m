i=1;
for x_1=0:0.01:1
    for x_2=0:0.1:1
        y_1=((exp(-x_1)*x_2*x_2) + (exp(-x_2)*x_1*x_1) );
        y_2=((exp(-x_1*x_1)*x_2) + (exp(-x_2*x_2)*x_1) );
        yr(i,1)=y_1;
        yr(i,2)=y_2;
        X=[x_1,x_2];
        hi= dij_vect(X,w);
        [Yi,Y] = get_lattice_pred(w,yw,a,X,hi,m);
        Yo(i,:)=Y;
        Xs(i,:)=[x_1,x_2];
        i=i+1;
    end
    
end
%Z=[Xs,Yo(:,1)]
%surf(Z)
Z=[yr(:,1),Xs(:,1),Xs(:,2)]
contour3(Z)