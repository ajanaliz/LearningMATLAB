clc;
clear;
close all;

x=linspace(0,1.5,100);

%A=[0.1 0.25 0.5 1 1.5 2 2.5 3];
A=0.1:0.1:3;

n=numel(A);

Colors=hsv(n);

figure;
i=0;
for a=A
    i=i+1;
    y=x.^a;
    plot(x,y,'Color',Colors(i,:),...
             'LineWidth',2,...
             'DisplayName',['a = ' num2str(a)]);
    hold on;
end

legend show;