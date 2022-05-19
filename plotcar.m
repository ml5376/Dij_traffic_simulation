%plotcars.m 
%  hcars=plot(x,y,'o');
if(nc>0 && sum(onroad)>0)
    plot(xi,yi,'-');
    hold on 
    plot(x2,y2,'-');
    hold on
%     set(hcars,'xdata', x(find(onroad)),'ydata',y(find(onroad)));
    
%       plot(x(find(onroad)),y(find(onroad)),'o');% car disappear when it
%       reaches the destination 
      plot(x,y,'o');
%     hold on
%     
   
   plot(x(c_star),y(c_star),'*');
   hold on 

   axis ([0 10 0 10])
   
   drawnow
   hold off
   %hold off
end 

