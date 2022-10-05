A = imread("C:\Users\skell\Documents\ELEC-324\Lab 1\images\NYcity.jpg");
out = imresize(A, [242, 451], 'box');
imwrite(out, "imountNearesr.jpg");