
%removecar.m 
onroad(c)=0;texit(c)=t;time_taken(c)=t-tenter(c);
if(c==firstcar(b))
    firstcar(b)=nextcar(c);
    if(c==lastcar(b))
        lastcar(b)=0;
    end
else 
    nextcar(ca)=nextcar(c);
    if(c==lastcar(b))
        lastcar(b)=ca;
    end
end

x(c)=xd(c);
y(c)=yd(c);
nextcar(c)=0;



    