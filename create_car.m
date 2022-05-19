%  function create_car


for b=1:nb 
    if(rand<dt*R*L(b))
         nc=nc+1;
         fprintf('nc is %d \n ',nc);
   
     
        p(nc)=rand*L(b);
        x(nc)=xi(i1(b))+p(nc)*Ux(b);
        y(nc)=yi(i1(b))+p(nc)*Uy(b);
        onroad(nc)=1;
        
        fprintf('initial position of %d:( %d, %d) \n ',nc,x(nc),y(nc));
        
%   if nc>20
%       off=1;
%       break;
      
%   else
       insert_newcar;
      
       choose_destination;
       tenter(nc)=t;
       nextb(nc)=b;
%   end    
%         if nc==c_star
%             plot(x(nc),y(nc),'*');
%             hold on 
%         end 
        

    end 
    
end 
