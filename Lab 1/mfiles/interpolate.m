% interpolate.m

clf;
for steps=3:20
    x = 0:2*pi/steps:2*pi;
    y = sin(x);
    stem(x,y);
    grid;
    axis([0 2*pi -1.2 1.2]);
    pause(0.5);
end