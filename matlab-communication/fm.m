clc;
clear;
close all;

Ac = 1;
Am = 1;
fc = 100;
fm = 10;
kf = 50;
t = 0:0.0001:0.1;

m = Am * cos(2*pi*fm*t);
int_m = cumtrapz(t, m);
s = Ac * cos(2*pi*fc*t + 2*pi*kf*int_m);

figure;
subplot(3,1,1);
plot(t, m);
title('Message Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t, cos(2*pi*fc*t));
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(t, s);
title('Frequency Modulated (FM) Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

