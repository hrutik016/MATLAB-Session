%to find root locus of given transfer function

clc;
clear all;	
close all;
 
n=[1 5 6]
d=[1 0 -1]
%[r,k]=rlocus(n,d,k)
rlocus(n,d)
%plot(r,' ')
[K,r]=rlocfind(n,d)
