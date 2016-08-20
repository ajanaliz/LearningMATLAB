clc;
clear;
close all;

L=20;

y=[0 .5 1 1.5 2 1.5 1 .5 0 -.5 -1 -1.5 -2 -1.5 -1 -.5 0];
N=numel(y);
x=0:L:L*N-1;
dx=x(2)-x(1);

xi=0:L*N-1;
yi=interpft(y,numel(xi));

figure;
plot(xi,yi,'b','LineWidth',2);
hold on;
plot(x,y,'o','MarkerFaceColor','y','MarkerSize',9);
legend('interpft','Original Data');




