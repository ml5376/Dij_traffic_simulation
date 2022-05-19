function path = addPath(index,route,path)
%UNTITLED19 Summary of this function goes here
%   used in adding vertex that the optimum path has passed through

if(index==0)
    return;
end 
if(index~=0)
path=addPath(route(index),route,path);

path=[path;index]; 

%  fprintf('pass through %d ',index);
end 
end

