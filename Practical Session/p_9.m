clc;
clear all;
close all;

img_1 = imread('D:\hrutik\Wallpapers\DIP images\1.jpg');
[m, n] = size(img_1);

% extracting 7th bit layer
for i=1:m;
    for j=1:n;
        b7(i, j) = bitand(img_1(i, j), 128);
    end
end

% extracting 6th bit layer
for i=1:m;
    for j=1:n;
        b6(i, j) = bitand(img_1(i, j), 64);
    end
end

% extracting 5th bit layer
for i=1:m;
    for j=1:n;
        b5(i, j) = bitand(img_1(i, j), 32);
    end
end

% extracting 4th bit layer
for i=1:m;
    for j=1:n;
        b4(i, j) = bitand(img_1(i, j), 16);
    end
end

% extracting 3th bit layer
for i=1:m;
    for j=1:n;
        b3(i, j) = bitand(img_1(i, j), 8);
    end
end

% extracting 2th bit layer
for i=1:m;
    for j=1:n;
        b2(i, j) = bitand(img_1(i, j), 4);
    end
end

% extracting 1th bit layer
for i=1:m;
    for j=1:n;
        b1(i, j) = bitand(img_1(i, j), 2);
    end
end

% extracting 0th bit layer
for i=1:m;
    for j=1:n;
        b0(i, j) = bitand(img_1(i, j), 0);
    end
end

subplot(331); imshow(b7); title('b7');
subplot(332); imshow(b6); title('b6');
subplot(333); imshow(b5); title('b5');
subplot(334); imshow(b4); title('b4');
subplot(335); imshow(b3); title('b3');
subplot(336); imshow(b2); title('b2');
subplot(337); imshow(b1); title('b1');
subplot(338); imshow(b0); title('b0');

