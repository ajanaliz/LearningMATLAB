function name=GetClockString()

    c=clock;
    
    Y=num2str(c(1));
    
    M=num2str(c(2));
    if numel(M)<2
        M=['0' M];
    end
    
    D=num2str(c(3));
    if numel(D)<2
        D=['0' D];
    end
    
    h=num2str(c(4));
    if numel(h)<2
        h=['0' h];
    end
    
    m=num2str(c(5));
    if numel(m)<2
        m=['0' m];
    end
    
    s=num2str(floor(c(6)));
    if numel(s)<2
        s=['0' s];
    end
    
    name=[Y '_' M '_' D '_' h '_' m '_' s];

end