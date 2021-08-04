clc;
clear all;
close all;

img = imread('D:\hrutik\Wallpapers\ichigo.jpg');
L = 255;
c = L / log10(1+L);
d = c * log10(1 + double(img));

!imshow(img), title('original image')
figure, imshow(uint8(d)), title('Log Transformation image')