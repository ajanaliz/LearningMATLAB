function a=GetDiag(A,d)

    if ~exist('d','var')
        d=0;
    end

    if d>0
        a=diag(A(1:end-d,1+d:end));
    else
        d=abs(d);
        a=diag(A(1+d:end,1:end-d));
    end

end