N = 1000;
EbNo_dB = 5;
EbNo = 10^(EbNo_dB/10);

data = randi([0 1], 1, N);
bpsk_mod = 2*data - 1;

noise = randn(1, N);
sigma = sqrt(1/(2*EbNo));
rx_signal = bpsk_mod + sigma * noise;

data_rx = rx_signal > 0;

num_errors = sum(data ~= data_rx);
BER = num_errors / N;

fprintf('Eb/No (dB): %d\n', EbNo_dB);
fprintf('Bit Errors: %d\n', num_errors);
fprintf('BER: %f\n', BER);

figure;
plot(rx_signal, zeros(1,N), 'o');
title('BPSK Constellation');
xlabel('In-phase');
ylabel('Quadrature');
grid on;

