%image addition

clc;
clear all;
close all;

img_1 = imread('cameraman.tif');
double_img_1 = im2double(img_1);

noisy_img = imnoise(double_img_1, 'salt & pepper', 0.02);

%low pass filter using 3*3 mask
f = [1 2 1; 2 4 2; 1 2 1];
%f = ones(3,3) / 9;

new_img = filter2(f, noisy_img);

subplot(221); imshow(img_1); title('original image');
subplot(222); imshow(noisy_img); title('noisy image');
subplot(223); imshow(new_img); title('low pass (3*3) filtered image');

%low pass filter using 5*5 mask
f1 = ones(5,5) / 25;
new_img_1 = filter2(f1,noisy_img);
subplot(224); imshow(new_img_1); title('low pass (5*5) filtered image');