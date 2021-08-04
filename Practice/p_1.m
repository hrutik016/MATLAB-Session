clc;
clear all;
close all;
 
n=-10:10;
y=[zeros(1,10) ones(1,11)];
z=[zeros(1,10) ones(1,1) zeros(1,10)];
h=[zeros(1,11) ones(1,1) 2:10]
 
subplot(2,2,1);
stem(n,y);
xlabel('Time')
ylabel('Amplitude')
title('Unit step_ 18EC002')
 
subplot(2,2,2);
stem(n,z);
xlabel('Time')
ylabel('Amplitude')
title('Unit Impluse_ 18EC002')
 
subplot(2,2,3);
stem(n,h);
xlabel('Time')
ylabel('Amplitude')
title('Unit ramp_ 18EC014')
