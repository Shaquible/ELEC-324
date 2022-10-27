% truncate_grey_img.m

clf;
truncate = 5;

x = imread('aqua.jpg');
subplot(2,2,1);
imshow(x);

subplot(2,2,2);
x_t = (x/2^truncate) * 2^truncate;
% if the above line gives you an error, you must be using an older version
% of Matlab. Use the line below instead to get around the problem:
% x_t = uint8(double(uint8((double(x)/2^truncate))) * 2^truncate);

imshow(x_t);

subplot(2,2,3);
imshow(uint8(abs(double(x_t) - double(x))));
