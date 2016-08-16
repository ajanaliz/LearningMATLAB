function DL=GetDividers(n)

    DL=[1 n];
    for i=2:floor(sqrt(n))
        if mod(n,i)==0
            DL=[DL i n/i];
        end
    end
    
    DL=unique(DL);
    
    %DL=sort(DL);
    
end