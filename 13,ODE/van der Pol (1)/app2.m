clc;
clear;
close all;

tmax=200;

y0=[1
    0];

[t, y]=ode15s(@VDP,[0 tmax],y0);

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


