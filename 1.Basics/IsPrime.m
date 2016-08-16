function b=IsPrime(n)

    b=true;

    for i=2:floor(sqrt(n))
        if mod(n,i)==0
            b=false;
            break;
        end
    end
    
end