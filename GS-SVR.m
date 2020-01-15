
tic
close all;
clear;
clc;


x= (38:1:65);
y = -x.^2;

model = libsvmtrain(y,x,'-s 3 -t 2 -c 2 -g 0.0002 -p 0.001');


figure
plot(x,y,'o');
grid on;

testx = [68;72;99];
display('real data');
testy = -testx.^2
[ptesty,tmse,prob2] = libsvmpredict(testy,testx,model,'-b 0');
display('prediction data');
ptesty

toc