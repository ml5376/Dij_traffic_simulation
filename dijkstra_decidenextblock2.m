% dijkstra_decidenextblock


if nextb(c)==b
    
    
    istart=i2(b);% current block's end point 
    iend=i2(bd(c)); % destination's end point
    fprintf('1.for car %d the istart is %d and the iend is %d \n',c,istart, iend);
   
    % create matrix m2, and assign a calculated parameter value to each edge


    
    for bi=1:nb
        
        
        T(bi)=L(bi)/V(L(bi)/(find_n(bi,nc,i1,i2,xi,yi,x,y,onroad)+1),dmin,dmax,vmax);

        m2(i1(bi),i2(bi))=T(bi);% assign value to m2
        
        
    end 
    


    direct_connect=0;
for i=1:nb 
    if(i1(i)==istart)&&(i2(i)==iend)
        nextb(c)=i;
        fprintf('nextb(%d)=%d\n',c,nextb(c));
        direct_connect=1;
        return
    end    
end 

if direct_connect==0 && istart==iend
    
    if if_triangle(x(c),y(c),xd(c),yd(c),xi(istart),yi(istart))==1
        nextb(c)=inverse_block(bd(c),i1,i2,nb);
        fprintf('nextb(%d)=%d\n',c,nextb(c));
    else 
        for block=1:nb
            if i1(block)==istart && i2(block)==i1(bd(c))
                nextb(c)=block;
                fprintf('nextb(%d)=%d\n',c,nextb(c));
            end 
        end
    end 
else 
    istart_copy=istart;
    swap=0;
    temp=0;
    n_end=ni;
    if istart>iend 
        temp=istart;
        istart=iend;
        iend=temp;
        swap=1;
    end 
    
    if iend<ni
        n_end=iend;
    end 
        
    [dist,route]=dijkstra(m2,istart,n_end);
    n_size=size(dist,1);
    fprintf('car %d dij(%d,%d)\n ',c,istart,n_end);
    for i=1:n_size
     path=[];
     if i~=istart 
        
         path=addPath(i,route,path);
         fprintf('=== %d\t ',path);
         fprintf('to get to vertex %d \n', i);
         
     end 
%      
    end
    fprintf('path is: ');
    disp(path);
    if swap==1
        path=flip(path);
    end
    
 % we want to find out the best option for the next block
 for i=1:nb
     if i1(i)==istart_copy && i2(i)==path(2)
         nextb(c)=i;
         fprintf('nextb(%d)=%d\n',c,nextb(c));
     end 
 end
   
end 
end 