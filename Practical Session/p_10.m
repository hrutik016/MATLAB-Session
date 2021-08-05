% displaying image after removing specific bit layer
% LSB has least effect on the image, and MSB with highest

clc;
clear all;
close all;

img_1 = imread('D:\hrutik\Wallpapers\DIP images\1.jpg');

[m, n] = size(img_1);

n1 = input('enter the bit plane ' );
s = 255 - (2^ (n1-1));

for i=1:m;
    for j=1:n;
        result_image(i, j) = bitand(img_1(i, j), s);
    end
end

figure, imshow(result_image);