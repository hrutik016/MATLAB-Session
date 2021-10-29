%motion blur

clc;
clear all;
close all;

img = imread('D:\hrutik\Wallpapers\DIP\1.jpg');
img = rgb2gray(img);

eff = fspecial('motion',10,25);
Motion_Blur_img = imfilter(img, eff, 'replicate');

imshow(img), title('Original Image');

figure, imshow(Motion_Blur_img), title('Motion Blurred Image');