%insert_newcar.m
c=firstcar(b);
if(c==0)||(p(nc)>p(c))
    nextcar(nc)=c;
    firstcar(b)=nc;
    if(c==0)
        lastcar(b)=nc;
    end 
    
elseif lastcar(b)~=0
    if p(nc)<=p(lastcar(b))
        nextcar(lastcar(b))=nc;
        lastcar(b)=nc;
        nextcar(nc)=0;
    end 
else 
    ca=c;
    c=nextcar(c);
   
    if nc==0 && c==0
        return;
        
    end 
     if nc~=0 && c~=0
        while p(nc)<=p(c)
            ca=c;
            c=nextcar(c);
         end
     end 
    nextcar(ca)=nc;
    nextcar(nc)=c;     
end 
