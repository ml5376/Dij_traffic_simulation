function [d,path] = ShortPath(graph,s,t)
%to find the shortest distance from s to t

%to find the shortest distabce from s to all other vertices    
if nargin ==2
    flag=0;
elseif nargin==3
    flag=1;
end

n=length(graph);
for i=1:n
    graph(i,i)=inf;
end

V=zeros(1,n);
D=zeros(1,n);
T=graph+inf;
T(s,:)=A(s,:);
A(:,s)=inf;
for k=1:n-1
    [p,q]=min(T);
    q1=q;
    [p,q]=min(p);
    V(q)=q1(1);
    if flag&q==t
        
        
        