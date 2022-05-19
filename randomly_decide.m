%randomly_decide 

if nextb(c)==b 
    i=i2(b);
 while(1)
     
     if(nextb(c)~=0)
         
         break;
         
     end
    jnext=1+floor(rand*nbout(i));
    nextb(c)=bout(i,jnext);
    
     
      
  end 
    
end