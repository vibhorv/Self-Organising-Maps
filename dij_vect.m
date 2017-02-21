function [hi] = dij_vect(x,w)
sigma=1;
[ux,uy]=size(w);
hi=zeros(uy,1);
for i=1:ux
     wi=w(i,:);
     delta_v=(x-wi);
     r=delta_v*delta_v';
     hi(i)=exp(-r/(sigma*sigma));
end

