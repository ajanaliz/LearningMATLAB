clc;
clear;
close all;

tmax=100;

y0=[2 0]';

u=@(t) 0;

MU=[0 0.01 0.1 0.5 1 1.5 2 2.5 3 3.5 4];

N=numel(MU);

COLORS=hsv(N);

figure;

for i=1:N
    
    mu=MU(i);
    
    params.mu=mu;
    params.alpha=1;
    system=@(t,y) VDP(t,y,u,params);
    [t, y]=ode45(system,[0 tmax],y0);
    
    plot(y(:,1),y(:,2),'Color',COLORS(i,:),'DisplayName',['\mu = ' num2str(mu)]);
    hold on;
    
end

xlabel('y_1(t)');
ylabel('y_2(t)');

legend show;

axis equal;
