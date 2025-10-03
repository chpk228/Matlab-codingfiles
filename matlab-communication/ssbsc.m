fs = 10000;
t = 0:1/fs:0.1;
fc = 1000;
fm = 100;
Am = 1;
Ac = 1;

m = Am * cos(2*pi*fm*t);
c = Ac * cos(2*pi*fc*t);
s_usb = ssbmod(m, fc, fs, 'upper');
s_lsb = ssbmod(m, fc, fs, 'lower');

demod_usb = ssbdemod(s_usb, fc, fs, 'upper');
demod_lsb = ssbdemod(s_lsb, fc, fs, 'lower');

figure;
subplot(3,1,1); plot(t, m); title('Message Signal');
subplot(3,1,2); plot(t, s_usb); title('SSB-SC Upper Sideband');
subplot(3,1,3); plot(t, demod_usb); title('Demodulated Signal (USB)');

