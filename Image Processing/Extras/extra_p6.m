clear all;
close all;

img = imread('D:\hrutik\Wallpapers\DIP\11.png');

%contrast adjustmen, by multiplying constant
new_img = img * 1.5

figure(1);
imshow(new_img);