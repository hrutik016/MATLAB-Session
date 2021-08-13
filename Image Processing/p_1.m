clear all;
close all;

f = imread('D:\hrutik\Wallpapers\DIP\11.png')

[m, n] = size(f);

whos f,
figure(1);
imshow(f);