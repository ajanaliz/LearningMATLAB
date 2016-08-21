function myfunc

    tmax=100;

    u=@(t) 0;
    
    mu=10;
    
    alpha=1;
    
    y0=[2 0];
    
    [t, y]=ode45(@MyVDP,[0 tmax],y0);

    figure;
    subplot(2,2,1);
    plot(t,y(:,1));
    xlabel('t');
    ylabel('y_1(t)');

    subplot(2,2,3);
    plot(t,y(:,2));
    xlabel('t');
    ylabel('y_2(t)');

    subplot(2,2,[2 4]);
    plot(y(:,1),y(:,2));
    xlabel('y_1(t)');
    ylabel('y_2(t)');    
    
    function dy=MyVDP(t,y)
        
        dy=[y(2)
            mu*(1-y(1)^2)*y(2)-alpha*y(1)+u(t)];
    
    end

end