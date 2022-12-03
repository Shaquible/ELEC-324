L = 100;
ns = linspace(0,L-1,L);
x = sin(ns*pi/10);
x(end-39:end) = zeros(40,1);
subplot(3,1,1)
stem(ns, x)
xlabel("n");
ylabel("x[n]");
subplot(3,1,2)
N=L;
DFT = fft(x,N);
stem(ns, abs(DFT));
xlabel("k")
ylabel("X[k]")
subplot(3,1,3)
newx = ifft(DFT);
stem(ns, newx)
xlabel("n")
ylabel("Reconstructed x[n]")