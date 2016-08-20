clc;
clear;
close all;

xmin=-3;
xmax= 3;
x=unifrnd(xmin,xmax,1,50);

ymin=-2;
ymax= 2;
y=unifrnd(ymin,ymax,1,50);

z=exp(-0.5*(x.^2+y.^2));

xx=linspace(xmin,xmax,200);
yy=linspace(ymin,ymax,200);

[XX, YY]=meshgrid(xx,yy);
ZZ=griddata(x,y,z,XX,YY,'cubic');

figure;
surf(XX,YY,ZZ);
shading flat;
hold on;
plot3(x,y,z,'ko','MarkerFaceColor','white','MarkerSize',10);



