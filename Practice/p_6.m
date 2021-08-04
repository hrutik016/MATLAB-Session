%to find NY Quist of func

clc;
clear all;
close all;
 
n=[2 5 1];
d=[1 2 3];
g=tf(n,d);
 
nyquist(g);
