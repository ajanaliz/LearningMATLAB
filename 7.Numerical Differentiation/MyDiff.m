function [x1, y1]=MyDiff(x,y)

    x1=(x(1:end-1)+x(2:end))/2;
    
    y1=diff(y)./diff(x);

end