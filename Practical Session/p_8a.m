clc;
clear all;
close all;

img_1 = imread('D:\hrutik\Wallpapers\DIP images\3.png');
img_2 = imread('D:\hrutik\Wallpapers\DIP images\4.jpg');

[m, n] = size(img_1);
mask = zeros(m,n)

for i=1:m;
    for j=1:n;
        mask(i, j) = mask(i, j) + 255;
    end
end

result_img = immultiply(img_1, mask);
imshow(result_img);