% threshold slicing 

clc;
clear all;
close all;

img = imread('D:\hrutik\Wallpapers\DIP images\1.jpg');

y = double(img);

[m, n] = size(y);

a = input('lower threshold value : ');
b = input('upper threshold value : ');

for i=1:m
    for j=1:n
        if (y(i, j) >= a & y(i, j) <= b)
            z(i, j) = 255;
        else
            z(i, j) = y(i, j);
        end
    end
end

figure, imshow(uint8(z));
%subplot(121); imshow(img); title('original image');
%subplot(122); imshow(z); title('resultant image');
