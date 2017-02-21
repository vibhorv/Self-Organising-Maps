function [w,a,yw] = train(w,a,yw,x,Yd,q)
hi= dij_vect(x,w);
[m,n,k]=size(a);
[Yi,Y] = get_lattice_pred(w,yw,a,x,hi,m);

Ytilda=Yd-Y;
sH=sum(hi);
nw=0.03;
na=0.03;
nyw=0.03;
for i=1:k
    wi=w(i,:);%1*n
    ai=a(:,:,i);%m*n
    size(ai);
    size(Ytilda);
    dYw=Ytilda*(hi(i)/sH);
    
    dW=Ytilda*(hi(i)/sH)*(1)*ai;
    da=(Ytilda')*(hi(i)/sH)*(x-wi);
    w(i,:)=w(i,:) - (nw)*(dW);
    a(:,:,i)=a(:,:,i) + (na)*(da);
    yw(i,:)=yw(i,:) + (nyw)*(dYw);
end

end

