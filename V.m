function VV = V(d,dmin,dmax,vmax)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
if d<dmin
    VV=0;
elseif d<dmax
    VV=vmax+log(d/dmin)/log(dmax/dmin);
else
    VV=vmax;
end 
 
end

