clear all;
close all;
img = imread('D:\hrutik\Wallpapers\ichigo.jpg');

g1 = img + 30;
g2 = img - 70;
figure(1);
imshow(img); title('original image');
figure(2);
imshow(g1); title(' brightness inc');
figure(3);
imshow(g2); title(' brightness dec ');