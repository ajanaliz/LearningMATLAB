clc;
clear;
close all;

data=load('count.dat');

x=data(:,1);
[x, SortOrder]=sort(x);

y=data(:,2);
y=y(SortOrder);

p=polyfit(x,y,5);

yhat=polyval(p,x);

e=y-yhat;
MSE=mean(e.^2);

VAR=var(y,1);

R2=1-MSE/VAR;

figure;

subplot(2,2,[1 3]);
plot(x,y,'o','MarkerSize',7);
hold on;
plot(x,yhat,'r','LineWidth',2);
legend('Actual Data','Model Output');
legend('Location','SouthEast');
title(['R^2 = ' num2str(R2)]); 

subplot(2,2,2);
plot(x,y-yhat)

subplot(2,2,4);
hist(y-yhat);
