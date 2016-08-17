clc;
clear;
close all;

X=unifrnd(-10,10,1,1000);

fid=fopen('my_text_file.txt','w');

for x=X
    fprintf(fid,'%f\t%f\r\n',x,x^2);
end

fclose(fid);