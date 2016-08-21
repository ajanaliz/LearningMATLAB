clc;
clear;
close all;

tmax=100;

params.rho=28;
params.sigma=10;
params.beta=8/3;

system=@(t,x) Lorenz(t,x,params);

x0=[-10 0 0];

[t, x]=ode45(system,[0 tmax],x0);

figure;

subplot(1,2,1);
plot(t,x);

subplot(1,2,2);
plot3(x(:,1),x(:,2),x(:,3));
grid on;
