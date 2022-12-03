% aperiodic.m, section 3.3, lab 3

clf;
L = 1000;
L_factor = 50;
N_factor = 1;
L = round(L*L_factor);
n = [0:1:L-1];
x = sin(pi/1000*(n.*n));
subplot(3,1,1);
stem(n,x);
title ('x[n]');
subplot(3,1,2);
y = fft(x,L*N_factor);
plot(abs(y));
title ('DFT');
subplot(3,1,3);
xr = ifft(y);
stem(n,xr(1:L));
title ('IDFT');
