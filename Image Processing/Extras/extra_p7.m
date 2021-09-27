%edge detection
clc;
clear all;
close all;

img = imread('cameraman.tif');

new_img = edge(img, 'sobel');
new_img_1 = edge(img, 'canny');

figure;
imshow(new_img); title('sobel')

figure;
imshow(new_img_1); title('canny');