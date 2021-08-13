clc;
clear all;
close all;
img = imread('D:\hrutik\Wallpapers\jwik.jpg');
img = rgb2gray(img);
gamma = 0.9;
gamma2 = 1.1;

d = double(img).^gamma;
d1 = double(img).^gamma2;

imshow(img), title('original');
figure, imshow(uint8(d)), title('power transformation') 
figure, imshow(uint8(d1)), title('power transformation 2nd type')
