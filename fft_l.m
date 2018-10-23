% 1
Fs = 100;
t =(0:1/Fs:10);
% 2
L = 500;
f = ((0:L-1)/L)*Fs;
% 3
k=1;
w = 2*pi;
xt = (4/pi)*(1/k)*sin(w*k*t);
% 4
X = fft(xt,L);
% 5
Xf = 2*abs(X)/L;
plot(f(1:(L/2)),Xf(1:L/2));
plot(xt,t);
