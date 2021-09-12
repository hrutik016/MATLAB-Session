clear all;
close all;

img = imread('D:\hrutik\Wallpapers\DIP\4.jpg');

[m,n] = size(img);

whos img,

figure(1);
imshow(img);