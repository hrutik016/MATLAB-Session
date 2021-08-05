clc;
clear all;
close all;

img_1 = imread('D:\hrutik\Wallpapers\DIP images\3.png');
img_2 = imread('D:\hrutik\Wallpapers\DIP images\4.jpg');

result_img_add = imadd(img_1, img_2); %addition of img_1 and img_2
result_img_sub = imsubtract(img_1, img_2);
result_img_mul = immultiply(img_1, img_2);
result_img_div = imdivide(img_1,2);

subplot(321);imshow(img_1); title('input image 1');
subplot(322);imshow(img_2); title('input image 2');
subplot(323);imshow(result_img_add); title('addition image');
subplot(324);imshow(result_img_sub); title('subtraction image');
subplot(325);imshow(result_img_mul); title('multiply image');
subplot(326);imshow(result_img_div); title('division image');