%decidenextblock 
%only do this if decision is not already made
prchoice=1/2;
xdvec=zeros(nc,1);
ydvec=zeros(nc,1);
dp=zeros(nc,1);
% fprintf('decide next block')
for i=1:ni
if nextb(c)==b
    if i==i2(b);
%     if c==c_star
%         fprintf('special car');
%         dijkstra_decidenextblock ;
%         break;
%     end 
%     if rand<prchoice
%         jnext=1+floor(rand*nbout(i));
%         nextb(c)=bout(i,jnext);
%     else 
        xdvec=xd(c)-xi(i);
        ydvec=yd(c)-yi(i);
        dp=Ux(bout(i,1:nbout(i)))*xdvec+Uy(bout(i,1:nbout(i)))*ydvec;
       
        [dpmax,jnext]=max(dp);
        nextb(c)=bout(i,jnext);
        fprintf('nextb(%d): %d\n',c,nextb(c));
    end
end 
end 