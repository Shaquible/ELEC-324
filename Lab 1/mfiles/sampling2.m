% Illustration of the Aliasing Effect 
% in the Frequency-Domain
% Adapted from P5_3, Mitra.

clf;

% First plot:
subplot(2,2,1)
t = 0:0.005:10;
xa = 2*t.*exp(-t);
plot(t,xa);grid
xlabel('Time, sec');ylabel('Amplitude');
title('Continuous-time signal x_{a}(t)');

% Second plot:
subplot(2,2,2)
wa = 0:10/511:20;
ha = freqs(2,[1 2 1],wa);
plot(wa/(2*pi),abs(ha));grid;
xlabel('Frequency, Hz');ylabel('Magnitude');
title('|X_{a}(j\Omega)|');
axis([0 pi/1.5 0 2]);

% Third plot:
subplot(2,2,3)
T = 0.1;
n = 0:T:10;
xs = 2*n.*exp(-n);
k = 0:length(n)-1;
stem(k,xs);grid;
xlabel('Time index n');ylabel('Amplitude');
title('Discrete-time signal x[n]');

% Fourth plot:
subplot(2,2,4)
wd = 0:pi/255:pi;
hd = freqz(xs,1,wd);
plot(wd/(2*T*pi), T*abs(hd));grid;
xlabel('Frequency, Hz');ylabel('Magnitude');
title('|X_{\delta}(j\Omega)|');
axis([0 1/(2*T) 0 2])
