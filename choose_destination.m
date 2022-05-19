% choose_destination.m 
bd(nc)=1+floor(rand*nb);
Lmax=max(L);
pd(nc)=rand*Lmax;
if pd(nc)~=0 % if the destionation of cars haven't been set up
while pd(nc)>=L(bd(nc))
    bd(nc)=1+floor(rand*nb);
    pd(nc)=rand*Lmax;
end 
end 
xd(nc)=xi(i1(bd(nc)))+pd(nc)*Ux(bd(nc));
yd(nc)=yi(i1(bd(nc)))+pd(nc)*Uy(bd(nc));

fprintf('destionation of %d is (%d,%d)\n', nc,xd(nc),yd(nc));