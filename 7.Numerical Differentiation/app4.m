clc;
clear;
close all;

Normalize=@(x) (x-min(x(:)))/(max(x(:))-min(x(:)));

img=im2double(imread('rice.png'));

G=gradient(img);
G=Normalize(G);

L=del2(img);
L=Normalize(L);

figure;
subplot(2,2,1);
imshow(img);
subplot(2,2,2);
imshow(G);
subplot(2,2,3);
imshow(L);
subplot(2,2,4);
imshow(G-0.5*L);

