clc;
clear;
close all;

x0=[0 -1 1];

tmax=100;

[t, x]=ode45(@RigidBody,[0 tmax],x0);

figure;

subplot(1,2,1);
plot(t,x);

subplot(1,2,2);
plot3(x(:,1),x(:,2),x(:,3));
grid on;

