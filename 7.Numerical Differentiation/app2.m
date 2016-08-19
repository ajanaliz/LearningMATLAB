clc;
clear;
close all;

x=linspace(-2,2,30);
dx=x(2)-x(1);

y=linspace(-2,2,30);
dy=y(2)-y(1);

[X, Y]=meshgrid(x,y);

Z=X.*exp(-X.^2-Y.^2);

[dZX, dZY]=gradient(Z,dx,dy);

figure;
contour(X,Y,Z,20);
hold on;
quiver(X,Y,dZX,dZY);
