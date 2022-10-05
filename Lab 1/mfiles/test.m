% test.m
%

clf;

% First plot
t = 0:0.0005:1;
f = 5;
x_t = cos(2*pi*f*t);
subplot (5,1,1)
plot (t,x_t);
grid;
xlabel ('Time [sec]');
ylabel ('Amplitude');
title ('Continuous-time signal x(t)');
axis([0 1 -1.2 1.2])

% Second plot
T =0.0001;
subplot(5,1,2);
n = 0:T:1;
x_n = cos(2*pi*f*n);
y = zeros(1,length(t));

for i = 1:length(n)
    y = y + x_n(i)*sinc(t/T - i + 1);
end

plot(t,y);
grid;
xlabel ('Time, sec');
ylabel ('Amplitude');
title ("Ideal LPF Reconstructed signal T =" +T);
axis ([0 1 -1.2 1.2]);

subplot(5,1,3);
n = 0:T:1;
x_n = cos(2*pi*f*n);
y = zeros(1,length(t));

for i = 1:length(n)
    y = y + T*x_n(i)*exp(-(t-(i-1)*T)*pi).*sign(heaviside(t-(i-1)*T));
end

plot(t,y);
grid;
xlabel ('Time, sec');
ylabel ('Amplitude');
title ("Non Ideal Reconstructed Signal T = " + T);
axis ([0 1 -0.05 0.05]);

subplot(5,1,4);
T = 0.01;
n = 0:T:1;
x_n = cos(2*pi*f*n);
y = zeros(1,length(t));

for i = 1:length(n)
    y = y + T*x_n(i)*exp(-(t-(i-1)*T)*pi).*sign(heaviside(t-(i-1)*T));
end

plot(t,y);
grid;
xlabel ('Time, sec');
ylabel ('Amplitude');
title ("Non Ideal Reconstructed Signal T = " + T);
axis ([0 1 -0.05 0.05]);

subplot(5,1,5);
T = 0.1;
n = 0:T:1;
x_n = cos(2*pi*f*n);
y = zeros(1,length(t));

for i = 1:length(n)
    y = y + T*x_n(i)*exp(-(t-(i-1)*T)*pi).*sign(heaviside(t-(i-1)*T));
end

plot(t,y);
grid;
xlabel ('Time, sec');
ylabel ('Amplitude');
title ("Non Ideal Reconstructed Signal T = " + T);
axis ([0 1 -0.1 0.1]);