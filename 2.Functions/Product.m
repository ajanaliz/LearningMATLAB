function p=Product(varargin)

    global A;
    A=A+1;

%     p=varargin{1};
%     
%     n=numel(varargin);
%     
%     for i=2:n
%         p=p.*varargin{i};
%     end

    x=cell2mat(varargin);
    p=prod(x);

end