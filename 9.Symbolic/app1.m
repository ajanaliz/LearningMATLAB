clc;
clear;
close all;

x=linspace(-6,6,1000);

f1=@(x) 200*sin(x);
f2=@(x) x.^3-1;

syms t;
r(1)=double(vpasolve(200*sin(t)==t^3-1,t,0));
r(2)=double(vpasolve(200*sin(t)==t^3-1,t,-4));
r(3)=double(vpasolve(200*sin(t)==t^3-1,t,4));

figure;
plot(x,f1(x));
hold on;
plot(x,f2(x));
plot(r,f2(r),'ro','MarkerSize',9,'MarkerFaceColor','y');

