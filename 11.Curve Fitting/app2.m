clc;
clear;
close all;

x=-3:3;
y=-2:2;

[X, Y]=meshgrid(x,y);

Z=exp(-0.5*(X.^2+Y.^2));

xx=linspace(min(x),max(x),20);
yy=linspace(min(y),max(y),20);
[XX, YY]=meshgrid(xx,yy);

ZZ=interp2(X,Y,Z,XX,YY,'spline');

figure;
surf(XX,YY,ZZ);
hold on;
plot3(X(:),Y(:),Z(:),'ko','MarkerFaceColor','white','MarkerSize',10);

