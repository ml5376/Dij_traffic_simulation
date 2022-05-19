function min_index = minDistance(dist,sptSet,ni)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
min_value=Inf;
min_index=-1;
for v=1:ni
    if sptSet(v)==0 && dist(v)<min_value
      min_value=dist(v);
      min_index=v;
    end 
        
end 





end

