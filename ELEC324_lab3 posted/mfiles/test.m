t = linspace(0,1499,1500);
x = 0.999*sin(pi*t.^1.5/100);
xrev = flip(x,2);
x3 = cat(2,x,xrev);
waterfallspect(x,1000, 60, 25);