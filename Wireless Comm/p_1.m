clc;
clear all;
close all;

format long;
f = sqrt(0.5);

N = 50000;      % no. of data to be transmitted

index = 1;

%SNR in dB (in for loop)
for i=1:2:18;
    instantaneous_snr = 10 ^ (k / 10);      %power is in terms f watt
    p = sqrt(1 / instantaneous_snr);
    
end