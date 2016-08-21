function dy=VDP(t,y,u,params)

    mu=params.mu;
    alpha=params.alpha;

    dy=[y(2)
        mu*(1-y(1)^2)*y(2)-alpha*y(1)+u(t)];

end