%median remove impluse 
clc;
clear all;
close all;

img = imread('D:\hrutik\Wallpapers\DIP\11.png');
img_new = im2double(img);
img_noise = imnoise(img_new,'salt & pepper',0.02);

applied_mask_1 = medfilt2(img_noise, [3 3]); % applied 3x3 mask

applied_mask_2 = medfilt2(img_noise, [5 5]); % applied 5x5 mask

applied_mask_3 = medfilt2(img_noise, [7 7]); % applied 7x7 mask

subplot(221); imshow(applied_mask_1); title('median filter output image with 3 x 3 mask ');

subplot(222); imshow(img_noise); title('noisy image ');

subplot(223); imshow(applied_mask_2); title('median filter output image with 5 x 5 mask ');

subplot(224); imshow(applied_mask_3); title('median filter output image with 7 x 7 mask ');

figure, imshowpair(img_noise, applied_mask_1,'montage');



