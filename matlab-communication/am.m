fs = 10000;
t = 0:1/fs:0.1;
fc = 1000;
fm = 100;
Am = 1;
Ac = 1;
ka = 0.5;

m = Am * cos(2*pi*fm*t);
c = Ac * cos(2*pi*fc*t);
s = (1 + ka * m) .* c;

demod = abs(hilbert(s));

figure;
subplot(3,1,1); plot(t, m); title('Message Signal');
subplot(3,1,2); plot(t, s); title('AM Signal');
subplot(3,1,3); plot(t, demod); title('Demodulated Signal');

