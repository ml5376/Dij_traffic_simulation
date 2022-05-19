% move_cars.m

for b = 1:nb 
    
    
     
    c=firstcar(b);
%     disp(c);
    while(c>0)
        if(c==firstcar(b))
            if(bd(c)==b)&&(pd(c)>p(c))
                d=dmax;
           
            else 
                 %randomly_decide;
                   decidenextblock
                    %dijkstra_decidenextblock
                 if nextb(c)==0
                     decidenextblock
%                      plot(x(c_star),y(c_star),'*');
%                       hold on 
                 end

                 if (lastcar(nextb(c))>0)
                        d=L(b)-p(c)+p(lastcar(nextb(c)));
                    else
   
                        d=dmax;
                 end   
 
            end 
            
        else 
            d=p(ca)-p(c);
        end
 
    pz=p(c);
    nextc=nextcar(c);
    p(c)=p(c)+dt*V(d,dmin,dmax,vmax);
    if (b==bd(c))&&(pz<pd(c))&&(pd(c)<=p(c))
         remove_cars
    elseif (L(b)<=p(c))
        p(c)=p(c)-L(b);
        if (nextb(c)==bd(c))&&(pd(c)<=p(c))
               remove_cars 
         else 
            cartonextblock
            plot(x(c_star),y(c_star),'*');
            hold on 
         end 
    else
        x(c)=xi(i1(b))+p(c)*Ux(b);
        y(c)=yi(i1(b))+p(c)*Uy(b);
        ca=c;
        
    end
    c=nextc;
    
    
    end 
end 
