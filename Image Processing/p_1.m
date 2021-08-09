clear all;
close all;

f = imread('D:\hrutik\Wallpapers\2f55fbc8f9cafd314115e7e58136e274.jpg')

[m, n] = size(f);

whos f,
figure(1);
imshow(f);