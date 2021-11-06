clc;
clear all;
close all;

img = imread('cameraman.tif');

noisey = imnoise(img, 'salt & pepper', 0.02);

subplot(321); imshow(img); title('original image');

subplot(322); imshow(noisey); title('noisy image');

minf = @ (x) min(x(:));
min_output = nlfilter(noisey,[3 3],minf);
subplot(323);
imshow(min_output); title('min filter');

maxf = @(x) max(x(:));
max_output = nlfilter(noisey,[3 3],maxf);
subplot(324);
imshow(max_output); title('max filter');

midf = @(x) 0.5*(min(x(:)) + max(x(:)));
mid_output = nlfilter(noisey, [3 3],midf);
subplot(325);
imshow(mid_output); title('mid filter');
