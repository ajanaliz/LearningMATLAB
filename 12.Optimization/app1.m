clc;
clear;
close all;

f=@(x) -x(1)*x(2);

lb=[0 0]';

x0=[1 1]';

[x, fx]=fmincon(f,x0,[],[],[],[],lb,[],@NLC);



