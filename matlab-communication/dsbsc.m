fs = 10000;
t = 0:1/fs:0.1;
fc = 1000;
fm = 100;
Am = 1;
Ac = 1;

m = Am*cos(2*pi*fm*t);
c = Ac*cos(2*pi*fc*t);

s = m .* c;

r = s .* c;

[b, a] = butter(5, fm/(fs/2));
m_rec = filter(b, a, r);

plot(t, m, 'b', t, s, 'r', t, m_rec, 'g')
legend('Message', 'Modulated', 'Demodulated')
xlabel('Time (s)')
ylabel('Amplitude')


