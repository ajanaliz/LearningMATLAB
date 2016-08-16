function L=Norm(p,varargin)

    global A;
    A=A+1;

    x=cell2mat(varargin);
    
    L=sum(abs(x).^p)^(1/p);

end