clc;
clear all;
close all;

img = imread('babyelephant.jpg');
eff = fspecial('unsharp');
new_img = imfilter(img, eff);

imshow(img), title('original image');
figure, imshow(new_img), title('unsharp mask');