function DL=GetDividersFast(n)

    f=false(1,n);   % flag
    
    f([1 n])=true;
    for i=2:floor(sqrt(n))
        if mod(n,i)==0
            f([i n/i])=true;
        end
    end
    
    DL=find(f);

end