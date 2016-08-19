clc;
clear;
close all;

data=load('count.dat');

x=data(:,1);
[x, SortOrder]=sort(x);

y=data(:,2);
y=y(SortOrder);

N=1:18;

yhat=cell(size(N));
R2=zeros(size(N));
for n=N
    p=polyfit(x,y,n);
    yhat{n}=polyval(p,x);
    R2(n)=GetR2(y,yhat{n});
end

plot(N,R2);

% figure;
% plot(x,y,'o','MarkerSize',7);
% hold on;
% plot(x,yhat,'r','LineWidth',2);
% legend('Actual Data','Model Output');
% title(['R^2 = ' num2str(R2)]); 
