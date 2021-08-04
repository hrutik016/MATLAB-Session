%two system connected in parallel

clc;
clear all;
close all;
n1=[1 1];
d1=[500 0 0];
n2=[1 1];
d2=[1 2];
[num,dem]=parallel(n1,d1,n2,d2)
printsys(num,dem)
