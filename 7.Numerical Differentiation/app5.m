clc;
clear;
close all;

m=20;

t=0:2:24;
v=[0 3 6 9 10 9.5 8 5 4 3 2 1.5 1];

tt=linspace(t(1),t(end),1000);

% p=polyfit(t,v,5);
% vv=polyval(p,tt);

vv=spline(t,v,tt);

aa=diff(vv)./diff(tt);
tta=(tt(1:end-1)+tt(2:end))/2;

F=m*aa;

figure;

subplot(2,1,1);
plot(tt,vv,'LineWidth',2);
hold on;
plot(t,v,'ro','LineWidth',2);
xlabel('Time (t)');
ylabel('Velocity (v)');
grid on;

subplot(2,1,2);
plot(tta,F,'LineWidth',2);
xlabel('Time (t)');
ylabel('Force (F)');
grid on;


