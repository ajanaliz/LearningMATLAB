clear;
close all;

while(true)

    clc;
    
    disp('This program will calculate your health index, using your weight and height.');

    w=input('Enter your weight (kg): ');

    h=input('Enter your height (m): ');

    if h>10
        disp(' ');
        disp('It seems that you eneterd your height in cm.');
        disp('The entered height is converted to meter.');
        h=h/100;
        disp(['Height = ' num2str(h) ' m']);
    end

    a=w/(h^2);

    wmin=20*h^2;
    wmax=25*h^2;

    disp(' ');

    disp(['Your Health Index = ' num2str(a)]);

    if a>25
        disp(['Your weight must be in range: [' num2str(wmin) ',' num2str(wmax) ']']);
        disp(['You are over-weight, with ' num2str(w-wmax) ' kg.']);

    elseif a<20
        disp(['Your weight must be in range: [' num2str(wmin) ',' num2str(wmax) ']']);
        disp(['You are under-weight, with ' num2str(wmin-w) ' kg.']);

    else
        disp('You are weight is normal.');

    end

    disp(' ');
    
    Answer=input('Do you want to continue [Yes/No]? ','s');
    
    if strcmpi(Answer,'No') || strcmpi(Answer,'N')
        break;
    end
    
end
