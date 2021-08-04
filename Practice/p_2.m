clc;
clear all;
close all;
 
a=input('Enter the value of numerator :');
b=input('Enter the value of Denominator :');
 
subplot(3,1,1)
pzmap(a,b);
 
g=tf(a,b);
subplot(3,1,2)
pzmap(g);
 
[z,p,k]=tf2zp(a,b);
subplot(3,1,3)
zplane(z,p);
[c,d]=zp2tf(z,p,k);
h=tf(c,d)
