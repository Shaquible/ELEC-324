M = [ 1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
M2 = downsample(M,2);
M3 = downsample(transpose(M2),2);
disp(transpose(M3))