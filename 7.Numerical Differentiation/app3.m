clc;
clear;
close all;

x=linspace(-2,2,50);
dx=x(2)-x(1);

y=linspace(-2,2,50);
dy=y(2)-y(1);

[X, Y]=meshgrid(x,y);

Z=X.^2+Y.^2;

L=del2(Z,dx,dy);

