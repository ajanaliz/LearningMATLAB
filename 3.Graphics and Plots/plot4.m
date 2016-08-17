clc;
clear;
close all;

f0=2;
t=0:0.01:2;

x=cos(2*pi*f0*t);
y=sin(2*pi*f0*t);

figure;

subplot(2,2,1)
plot(t,x,'o:','Color',[116 31 186]/255,'MarkerSize',12,'MarkerFaceColor',[0.8 1 0]);
grid on;

subplot(2,2,3);
plot(t,y,'r:','LineWidth',5);

subplot(2,2,[2 4]);
plot(x,y);
axis equal;
