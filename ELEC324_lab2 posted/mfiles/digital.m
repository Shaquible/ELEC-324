% digital.m

a = 5;
x = 0:2*pi/1000:2*pi;
y = a*sin(x);
y_int = int8(y);

subplot(3,1,1);
plot(x,y);
grid;
axis([0 2*pi -a*1.2 a*1.2]);
title('Graph 1');

subplot(3,1,2);
plot(x,y_int);
grid;
axis([0 2*pi -a*1.2 a*1.2]);
title('Graph 2');

subplot(3,1,3);
plot(x,abs(double(y_int)-y));
grid;
axis([0 2*pi 0 1.2/2]);
title('Graph 3');

