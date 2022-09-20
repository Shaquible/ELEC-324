% sampling1.m
%

clf;

% First plot
t = 0:0.0005:1;
f = 5;
x_t = cos(2*pi*f*t);
subplot (4,1,1)
plot (t,x_t);
grid;
xlabel ('Time [sec]');
ylabel ('Amplitude');
title ('Continuous-time signal x(t)');
axis([0 1 -1.2 1.2])

% Second plot
subplot(4,1,2);
T = 0.075;
n = 0:T:1;
x_n = cos(2*pi*f*n);
stem (n,x_n);
grid;
xlabel ('Time [sec]');
ylabel ('Amplitude');
title ('Sampling x(t)');
axis ([0 1 -1.2 1.2]);

% Third plot
subplot(4,1,3);
k = 0:length(n)-1;
stem(k,x_n);
grid;
axis ([0 (length(n)-1) -1.2 1.2]);
xlabel ('Time index n');
ylabel ('Amplitude');
title ('Discrete-time signal x[n]');

% Fourth plot
subplot(4,1,4);
y = zeros(1,length(t));
for i = 1:length(n)
    y = y + x_n(i)*sinc(t/T - i + 1);
end
plot(t,y);
grid;
xlabel ('Time, sec');
ylabel ('Amplitude');
title ('Reconstructed continuous-time signal y(t)');
axis ([0 1 -1.2 1.2]);
