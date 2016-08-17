clc;
clear;
close all;

f0=2;
t=0:0.01:2;

x=cos(2*pi*f0*t);
y=sin(2*pi*f0*t);

figure;
plot(t,x,'o:','Color',[116 31 186]/255,'MarkerSize',12,'MarkerFaceColor',[0.8 1 0]);
grid on;

figure;
plot(t,y,'r:','LineWidth',5);

