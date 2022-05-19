
m=[0 2 0 0 0;
   2 0 4 3 0;
   0 4 0 5 0;
   0 3 5 0 5;
   0 0 0 5 0];


% m=[0 2.4 0 0 0;
%    0 0 4.5 3.3 0;
%    0 0 0 5 0;
%    0 0 0 0 5;
%    0 0 0 0 0;]
% m=[0 5 0 3.3 5;
%     5 0 0 4.5 0;
%     0 0 0 2.4 0;
%     3.3 4.5 2.4 0 0;
%     5 0 0 0 0];
% disp(m);
istart=1;
ni=3;

dist=zeros(ni,1);
%   [w,v]=Ford(m,1,ni);
%   disp(w);
%   disp(v);

[dist,route]=dijkstra(m,istart,ni);% from start to end 

 % in loop addPath function will add the shortest path into an array path
 % and we can get access to next block we want to choose by inputing the
 % previous block's index 
fprintf('dist');
 disp(dist);
 
 n=size(dist,1);
for i=1:n
      path=[];
     if i~=istart 
        
         path=addPath(i,route,path);
           fprintf('=== %d\t ',path);
           fprintf('to get to vertex %d \n', i);
    % output:
%   path is 1
%   path is 2
%   path is 4
%   path is 5
%   path to get to vertex 5 
%     
         
         
     end 
%      
 end 
fprintf('resulted path is:%d\n', path);
disp(path);
