clear all;
close all;

img = imread('D:\hrutik\Wallpapers\DIP\4.jpg');

%increasing brightness of the image
new_img = img + 50

figure(1);
imshow(new_img);