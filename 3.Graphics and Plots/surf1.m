clc;
clear;
close all;

x=linspace(0,10,50);

y=linspace(0,20,50);

[X, Y]=meshgrid(x,y);

Z=sin(X).*sin(Y)+sqrt(X);

figure;

subplot(2,2,1);
surf(X,Y,Z);

subplot(2,2,3);
mesh(X,Y,Z);

subplot(2,2,2);
contour(X,Y,Z,25);

subplot(2,2,4);
surfc(X,Y,Z);

