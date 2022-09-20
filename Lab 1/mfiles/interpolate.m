% interpolate.m

clf;
steps = 10;
x = 0:2*pi/steps:2*pi;
y = sin(x);
plot(x,y);
grid;
axis([0 2*pi -1.2 1.2]);
