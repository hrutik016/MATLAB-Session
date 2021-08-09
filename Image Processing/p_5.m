clc
clear all
close all

img = imread('D:\hrutik\Wallpapers\ichigo.jpg');
new_img = histeq(img);

subplot(2,2,1), imshow(img),title('original image'),
subplot(2,2,2), imshow(img_new), title('after histogram eq'),
subplot(2,2,3), imhist(img), title('original hist'),
subplot(2,2,4), imhist(img_new), title('histogram after eq')
