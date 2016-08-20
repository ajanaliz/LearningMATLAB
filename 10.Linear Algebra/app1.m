clc;
clear;
close all;

X=im2double(imread('rice.png'));

[U, S, V]=svd(X);

s=diag(S);

N=64;

s1=s;
s1(N+1:end)=0;

S1=diag(s1);

X1=U*S1*V';

figure;
subplot(1,2,1);
imshow(X);
subplot(1,2,2);
imshow(X1);
