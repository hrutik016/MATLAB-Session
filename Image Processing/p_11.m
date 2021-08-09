%hard thresholding

clc;
clear all;
close all;

img_1 = imread('D:\hrutik\Wallpapers\DIP images\5.jpg');

[m, n] = size(img_1);

t = input('Enter the Threshold value: ');

for i=1:m
    for j=1:n
        if img_1(i, j) < t
            result_img = 0;
        else
            result_img = 255;
        end
    end
end

subplot(1,2,1), imshow(img_1), title('input image'),
subplot(1,2,2), imshow(result_img), title('resultant image ');