clc;
clear;
close all;

f=@(x) x.^2;

a=0;
b=1;
n=100;
x=linspace(0,1,n);
dx=(b-a)/n;

y=f(x);

I1=sum(y(1:end-1))*dx;      % Rectanglular

I2=trapz(x,y);              % Trapezoidal

I3=quad(f,a,b);             % Simpson's Rule

I4=integral(f,a,b);

I5=quadv(f,a,b);

I6=integral(f,a,b,'ArrayValued',true);

I7=quadgk(f,a,b);





