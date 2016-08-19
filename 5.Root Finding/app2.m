clc;
clear;
close all;

na=100;
a=linspace(-2,20,na)';

b=1:50;
nb=numel(b);

x=zeros(na,nb);

for i=1:na
    for j=1:nb
        f=@(x) x^b(j)-b(j)*exp(a(i)*x);
        x(i,j)=fzero(f,1);
    end
end

figure;
imagesc(b,a,x);
xlabel('b');
ylabel('a');
colorbar;
