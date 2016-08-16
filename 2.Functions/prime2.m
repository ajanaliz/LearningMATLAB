clc;
clear;
close all;

n=input('Enter a positive integer: ');
if IsPrime(n)
    disp([num2str(n) ' is a Prime Number.']);
else
    disp([num2str(n) ' is NOT a Prime Number.']);
end

