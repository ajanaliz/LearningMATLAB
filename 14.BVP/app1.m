clc;
clear;
close all;

% ODE Function
f=@(t,y) [y(2)
          -abs(y(1))];
      
% BC Function
bc=@(ya,yb) [ya(1)
             yb(1)+2];

% Initial Solution
sol0=bvpinit(linspace(0,4,5),[-3 0]);

% Solve the BVP
sol=bvp4c(f,bc,sol0);

% Plot Solution

x=sol.x;
y=sol.y;

figure;

subplot(2,2,1);
plot(x,y(1,:));
xlabel('x');
ylabel('y_{1}(x)');

subplot(2,2,3);
plot(x,y(2,:));
xlabel('x');
ylabel('y_{2}(x)');

subplot(2,2,[2 4]);
plot(y(1,:),y(2,:));
xlabel('y_{1}(x)');
ylabel('y_{2}(x)');

