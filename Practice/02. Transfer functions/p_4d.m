%block diagram

clc;
clear all;
close all;
n1=1;d1=1;
n2=3;d2=1;
n3=2;d3=1;
n4=1;d4=1;
n5=2;d5=1;
n6=1;d6=1;
nblocks=6;
blkbuild
q=[1 0 0 0 0
   2 1 -4 5 -6
   3 2 0 0 0
   4 3 0 0 0
   5 3 0 0 0
   6 3 0 0 0]
input=1
output=3
[aa,bb,cc,dd]=connect(a,b,c,d,q,input,output)
[num,den]=ss2tf(aa,bb,cc,dd)
printsys(num,den)
