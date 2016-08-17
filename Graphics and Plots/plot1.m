clc;
clear;
close all;

f0=2;
t=0:0.01:2;

x=cos(2*pi*f0*t);
y=sin(2*pi*f0*t);

t0=0.73;
z=sin(2*pi*f0*t0);

figure;
plot(t,x,'o:','Color',[116 31 186]/255,'MarkerSize',12,'MarkerFaceColor',[0.8 1 0]);
hold on;
plot(t,y,'r:','LineWidth',5);
plot(t0,z,'s','LineWidth',3,'MarkerSize',13,'MarkerFaceColor','g');
plot(t0,-z,'s','LineWidth',3,'MarkerSize',13,'MarkerFaceColor','g');

legend('1st plot','2nd plot','','');
legend('Location','BestOutside');

