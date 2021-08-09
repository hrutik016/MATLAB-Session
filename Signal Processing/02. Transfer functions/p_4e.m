%bloach diagram #2

clc;
clear all;
close all;
n1=[1 0 1];d1=[1 0 0 0 -1];
n2=[500 0 0 1];d2=[1 0 0 1];
n3=[1 2];d3=[1 0 1];
n4=[1];d4=[1 0 0];
n5=[1];d5=[1];
n6=[1];d6=[1 0];
n7=[1];d7=[1];
nblocks=7
blkbuild
q=[1 0 0 0 0 
   2 1 -5 0 0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
   3 2 -6 0 0 
   4 3 -7 2 -6
   5 3 0 0 0
   6 3 0 0 0
   7 4 0 0 0]
input=1
output=4
[aa,bb,cc,dd]=connect(a,b,c,d,q,input,output)
[num,den]=ss2tf(aa,bb,cc,dd)
printsys(num,den)
