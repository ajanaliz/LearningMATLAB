clc;
clear;
close all;


N=100;

Fmax=10000;

tic;

F=zeros(1,N);   % Pre-allocation

F(1)=1;
F(2)=1;

for k=3:N
    F(k)=F(k-1)+F(k-2);
    
    if F(k)>Fmax
        break;
    end
end

F(k:end)=[];    % Deletion

% F=F(1:k-1);     % Selection

toc;

r=F(2:end)./F(1:end-1);


