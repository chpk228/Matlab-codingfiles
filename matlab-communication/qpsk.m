N = 1000;
data = randi([0 3], N, 1);
modData = pskmod(data, 4, pi/4);
SNR = 10;
rxSig = awgn(modData, SNR, 'measured');
demodData = pskdemod(rxSig, 4, pi/4);
[errorCount, ber] = biterr(data, demodData);
disp(['Bit Error Rate: ', num2str(ber)]);

