clc;
clear;
close all;

tmax=50;

y0=[2 0]';

u=@(t) 1*(t>=10);

params.mu=1;
params.alpha=1.5;
system=@(t,y) VDP(t,y,u,params);

[t, y]=ode45(system,[0 tmax],y0);

figure;
subplot(2,2,1);
plot(t,y(:,1));
xlabel('t');
ylabel('y_1(t)');

subplot(2,2,3);
plot(t,y(:,2));
xlabel('t');
ylabel('y_2(t)');

subplot(2,2,[2 4]);
plot(y(:,1),y(:,2));
xlabel('y_1(t)');
ylabel('y_2(t)');
