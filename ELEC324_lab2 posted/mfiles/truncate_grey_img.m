% truncate_grey_img.m
clf;

x = imread('aqua.jpg');
%subplot(2,2,1);
%imshow(x);
red = x(:,:,1);
green = x(:,:,2);
blue = x(:,:,3);
redBits = 2;
greenBits = 2;
blueBits = 2;
red = uint8(double(uint8((double(red)/2^redBits))) * 2^redBits);
green = uint8(double(uint8((double(green)/2^greenBits))) * 2^greenBits);
blue = uint8(double(uint8((double(blue)/2^blueBits))) * 2^blueBits);
out = cat(3, red, green, blue);
imshow(out)

%subplot(2,2,2);
%x_t = (x/2.^truncate) * 2.^truncate;
% if the above line gives you an error, you must be using an older version
% of Matlab. Use the line below instead to get around the problem:
% x_t = uint8(double(uint8((double(x)/2^truncate))) * 2^truncate);

%imshow(x_t);

%subplot(2,2,3);
%imshow(uint8(abs(double(x_t) - double(x))));

