function dy=VDP(t,y)

    mu=1;

    dy=[y(2)
        mu*(1-y(1)^2)*y(2)-y(1)];

%     mu=8.53;
% 
%     A=1.2;
%     w=2*pi/10;
%     
%     dy=[y(2)
%         mu*(1-y(1)^2)*y(2)-y(1)+A*sin(w*t)];

end