% cartonextblock.m
firstcar(b)=nextcar(c);
  if c==c_star
        plot(x(c),y(c),'*');
        hold on 
  end 

if(c==lastcar(b))
    lastcar(b)=0;
end


if(nextb(c)~=0)
    
 if(lastcar(nextb(c))==0)
      firstcar(nextb(c))=c;
 else
     nextcar(lastcar(nextb(c)))=c;
 end    


lastcar(nextb(c))=c;
nextcar(c)=0;

x(c)=xi(i1(nextb(c)))+p(c)*Ux(nextb(c));
y(c)=xi(i1(nextb(c)))+p(c)*Uy(nextb(c));
end 
