% to perform and analyse BER of AWGN channel using BPSK modulation

clc;
clear all;
close all;

format long;
f = sqrt(0.5);

N = 50000;      % no. of data to be transmitted

index = 1;

%SNR in dB (in for loop)
for i=1:2:18
    instantaneous_snr = 10 ^ (i / 10);      
    p = sqrt(1 / instantaneous_snr);
    data = randi([0, 1], 1, N);
    X = 2 * data - 1;
    n = f * (randn(1, N) + 1i * randn(1, N));
    y = instantaneous_snr+n*p;
    d = real(y);
    
    for ki=1:N
        if (d(ki)>=0)
            data_detect(ki) = 1;
        else
            data_detect(ki) = 0;
        end
    end
    
    error = xor(data, data_detect);
    bers(index) = sum(error) / N;
    snr(index) = i;
    [snr(index) bers(index)]
    N = N+1000;
    index = index+i;
end

semilogy(snr, bers);
legend('Simulation')
xlabel('SNR in dB')
ylabel('BER')
grid on;
