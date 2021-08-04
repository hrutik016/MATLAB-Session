clc;
clear all;
close all;

!img = ('D:\hrutik\Wallpapers\jwik.jpg');
img = imread('D:\hrutik\Wallpapers\ichigo.jpg');
img_new = 255 - img;
subplot(1,2,1), imshow(img), title('original image');
subplot(1,2,2), imshow(img_new), title('negate image');
