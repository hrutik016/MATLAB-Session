%wiener filter

clc;
clear all;
close all;

img = imread('D:\hrutik\Wallpapers\DIP\11.png');

new_img = rgb2gray(img);

subplot(221); imshow(img); title('Original image in gray form');
img = imnoise(img, 'gaussian', 0,0.02);

subplot(221); imshow(img); title('Original image in gray form');
img = imnoise(img, 'gaussian', 0,0.02);

