clc;
clear;
close all;

n=input('Enter a positive integer: ');

IsPrime=true;

for i=2:floor(sqrt(n))
    if mod(n,i)==0
        IsPrime=false;
        break;
    end
end

if IsPrime
    disp([num2str(n) ' is a Prime Number.']);
else
    disp([num2str(n) ' is NOT a Prime Number.']);
end

