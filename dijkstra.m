function [dist,route] = dijkstra(graph,src,ni)
%input: the adjacency matrix to show the graph, the istart, iend 
%output: an array of shortest distance from src to each vertex list before
%iend; route is a array used later to record the vertice which the shortest
%path has pass through 
%   Detailed explanation goes here

dist=zeros(ni,1);% dist[i] will hold the shortest distance from src to i
sptSet=zeros(ni,1);% 0 stands for false and 1 stands for true 



for i=1:ni
    dist(i)=Inf;
    sptSet(i)=0;
end 

dist(src)=0;% distance from source vertex to itself is always 0

route(src)=0;

for count=0:ni-1 
   u=minDistance(dist,sptSet,ni);
   if u>0
    sptSet(u)=1% set the picked vertex to true 
   
   %update the dist value of the adjacent vertices of the picked vertex
   for v=1:ni
       
       if (sptSet(v)~=1) && (graph(u,v)~=0) && (dist(u)~=Inf) && (dist(u)+graph(u,v)<dist(v))
           dist(v)=dist(u)+ graph(u,v);
           route(v)=u;
           
           
       end 
      
   end 
   end 
end



%  disp(dist);

%  disp(route);
 
 
 

end

