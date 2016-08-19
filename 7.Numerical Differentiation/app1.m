clc;
clear;
close all;

f=@(x) exp(-2*x)+sin(x);

x=linspace(-1,10,10000);
y=f(x);

% y1=diff(y)./diff(x);
% x1=(x(1:end-1)+x(2:end))/2;

[x1, y1]=MyDiff(x,y);
[x2, y2]=MyDiff(x1,y1);

figure;

subplot(3,1,1);
plot(x,y,'k','LineWidth',2)
grid on;

subplot(3,1,2);
plot(x1,y1,'r','LineWidth',2)
grid on;

subplot(3,1,3);
plot(x2,y2,'b','LineWidth',2)
grid on;

