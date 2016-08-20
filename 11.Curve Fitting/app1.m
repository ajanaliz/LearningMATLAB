clc;
clear;
close all;

x=[0 1 2 4 6];
y=[0 0 3 -1 2];

xx=linspace(min(x),max(x),100);

p=polyfit(x,y,4);
yy1=polyval(p,xx);

yy2=interp1(x,y,xx,'linear');
yy3=interp1(x,y,xx,'nearest');
yy4=interp1(x,y,xx,'cubic');
yy5=interp1(x,y,xx,'spline');
yy6=spline(x,y,xx);


figure;
plot(xx,yy1,'k','DisplayName','polyfit');
hold on;
plot(xx,yy2,'b','DisplayName','interp1 - linear');
plot(xx,yy3,'m','DisplayName','interp1 - nearest');
plot(xx,yy4,'Color',[0 0.6 0],'DisplayName','interp1 - cubic');
plot(xx,yy5,'Color',[0.6 0 0],'DisplayName','interp1 - spline');
plot(xx,yy6,'Color',[0 0.3 0.9],'DisplayName','spline');
plot(x,y,'ro','MarkerSize',8,'MarkerFaceColor','y','DisplayName','Original Data');

legend show;


