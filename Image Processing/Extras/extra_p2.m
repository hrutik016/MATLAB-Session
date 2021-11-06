% study of image sharpening using laplacian filter in spatial domain

clc;
clear all;
close all;

img = imread('D:\hrutik\Wallpapers\DIP\1.jpg');

img = rgb2gray(img);

h = [1 1 1; 1 -8 1; 1 1 1]

x = [1 1 1 1 1; 1 1 1 1 1 ; 1 1 -24 1 1; 1 1 1 1 1 ; 1 1 1 1 1]

resp = uint8(filter2(h, img));
sharp = imsubtract(img, resp);

y = uint8(filter2(x,img));

z = imsubtract(img, y);

subplot(231); imshow(img); title('orinal image');
subplot(232); imshow(resp); title('laplacian filtered image with 3*3 mask');
subplot(233); imshow(sharp); title('sharpened image with 3*3 mask');
subplot(234); imshow(y); title('sharpened image with 5*5 mask');
subplot(235); imshow(z); title('sharpened image with 35*5 mask');