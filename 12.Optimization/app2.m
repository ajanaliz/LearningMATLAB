clc;
clear;
close all;

F=@(x) [x(1)+x(2)^2-exp(-x(1))-15
        x(1)^2-sqrt(abs(x(2)))+2];
    

x0=[1 1]';
    
x=fsolve(F,x0);

