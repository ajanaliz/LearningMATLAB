clc;
clear;
close all;

x=linspace(0,10,100);
y=linspace(0,10,100);

[X, Y]=meshgrid(x,y);

Z=sin(X).*sin(Y)+sqrt(X+1);

FileName=['myfile_' GetClockString()];

save(FileName);
