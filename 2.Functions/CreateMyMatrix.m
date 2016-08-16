function A=CreateMyMatrix(m,n)

    if nargin<1
        error('You must enter at least one argument.');
    end

    if ~exist('n','var')
        n=m;
    end

    A=zeros(m,n);
    
    for i=1:m
        for j=1:n
            A(i,j)=max(i,j);
        end
    end

end