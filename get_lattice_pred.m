function [Yi,Y] = get_lattice_pred(w,yw,a,x,hi,m)

[ux,uy]=size(w);% k*n
Yi=zeros(ux,m); %k*m
Y=zeros(1,3);
for i=1:ux
     wi=w(i,:);%1*n
     x;
     ai=a(:,:,i);%m*n
     delta=(x-wi);
     yi=yw(i,:);
     y_temp=yi+delta*ai';%yi 1*m  and ai m*n delta 1*n
     Yi(i,:)=y_temp;
end
Y=sum(Yi)/(sum(hi));
end

