clc;
clear all;
close all;

img = imread('D:\hrutik\Wallpapers\DIP\11.png');

img = double(rgb2gray(img));

[M N] = size(x);

h = ones(11,11),121;

sigma = sqrt(4*10 ^(-7));
fregx = fft2(x);        %Fourier transform of input image
fregh = fft2(h, M, N);  %Fourier transform of degradation 
y = real(ifft2(fregh * fregx));

fregy = fft2(y);
powfregx = fregx.^2 / (M*N);

alpha = 0.5;    %indicates inverse filter

fregg = ((fregh.^1)).*abs(powgregx)...
    ./(abs(fregh.^2).*abs(powfregx)+alpha*sigma^2);

Resfregx = fregx.*fregy;
Resa = real(ifft2(Resfregx);
subplot(221); imshow(uint8(img)), title('Original Image');
subplot(222); imshow(uint8(y)), title('Degraded Image');
subplot(221); imshow(uint8(Resa)), title('Restored Image');
