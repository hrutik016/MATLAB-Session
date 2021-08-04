%to find root locus

clc;
clear all;
close all;
 
n=[1]
d=[1 14 40 0]
%k=[2 1 8]
 
rlocus(n,d)
[r,K]=rlocfind(n,d)
%plot(r)
 
h=tf(n,d)
g=rlocusplot(h)
