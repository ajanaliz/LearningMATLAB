clc;
clear;
close all;

fid=fopen('my_text_file.txt','r');

while(~feof(fid))
    data=fscanf(fid,'%f\t%f\r\n');
end

data=reshape(data,2,[])';

fclose(fid);

X=data(:,1);
Y=data(:,2);

plot(X,Y,'o');

