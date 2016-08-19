clc;
clear;
close all;

n=5000;
a=linspace(-10,10,n)';
x=zeros(n,1);
for i=1:n
    f=@(x) x^2-2*exp(a(i)*x);
    x(i)=fzero(f,1);
end

figure;
plot(a,x,'LineWidth',2);
xlabel('a');
ylabel('x');
