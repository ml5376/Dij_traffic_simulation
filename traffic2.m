close all; clear all; clc;


nc=0;
ni=5;
nb=10;


i1=[1;2;2;4;2;3;3;4;4;5];
i2=[2;1;4;2;3;2;4;3;5;4];

nbin=zeros(ni,1);
nbout=zeros(ni,1);
 
for i=1:ni
    nbin(i)=sum(i2==i);
    nbout(i)=sum(i1==i);
end 

nbinmax=max(nbin);
nboutmax=max(nbout);

bin=zeros(ni,nbinmax);
bout=zeros(ni,nboutmax);

for i=1:ni
    bin(i,1:nbin(i))=find(i2==i);
    bout(i,1:nbout(i))=find(i1==i);
end 

 m2=zeros(ni+1,ni+1);

% adding coordinates of all intersections
xi=[0; 1.25; 5.5; 1; 4.7];
yi=[0; 2; 3; 5; 8.3];
x2=[1.25;1];
y2=[2;5];

%L=[2.4; 3.3;4.5; 5; 5];
L=zeros(nb,1);
T=zeros(nb,1);% value assigned on each edge for dijkstra algorithm 

Ux=zeros(nb,1);
Uy=zeros(nb,1);
firstcar=zeros(nb,1);
lastcar=zeros(nb,1);
nextcar=zeros(nc,1);
tenter=zeros(nc,1);
texit=zeros(nc,1);
time_taken=zeros(nc,1);
nextb=zeros(nc,1);

for b=1:nb
    Ux(b)=xi(i2(b))-xi(i1(b));
    Uy(b)=yi(i2(b))-yi(i1(b));
    L(b)=sqrt(Ux(b).^2+Uy(b).^2);
    Ux(b)=Ux(b)/L(b);
    Uy(b)=Uy(b)/L(b);
end

dmax=1;
dmin=0.1;
vmax=2;

x=zeros(nc,1);
xd=zeros(nc,1);
y=zeros(nc,1);
yd=zeros(nc,1);
p=zeros(nc,1);
onroad=zeros(nc,1);
nextb=zeros(nb,1);
firstcar=zeros(nb,1);
lastcar=zeros(nb,1);
nextcar=zeros(nc,1);
R=0.02;

%  make a video of result 
%  v = VideoWriter('traffic1.avi');
%  open(v)
%  

c_star=1;
clockmax=400;
dt=0.01;

figure(1)

trial_res=zeros(100,1);

%  for trial=1:100
    
off=0;
for clock=1:clockmax
%     if off==1
%         break;
%     end 
    t=clock*dt;
   % if isempty(x)
    create_car;
   %end 
    move_cars;
    plotcar;
%     [x y]
     
%        frame = getframe(gcf);
%         writeVideo(v,frame); 
% 
%     


    end 


% close(v);




 s=sum(time_taken);
 index=find(time_taken);
 avg=s/size(index,1);
disp(avg);
%  trial_res(trial)=avg;

%  end 
%  figure(2)
% plot(trial_res);
