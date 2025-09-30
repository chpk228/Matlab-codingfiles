N = 1000;
EbNo_dB = 5;
EbNo = 10^(EbNo_dB/10);

data = randi([0 1], 1, N);
bpsk = 2*data - 1;

noise = randn(1, N);
sigma = sqrt(1/(2*EbNo));
received = bpsk + sigma * noise;

data_detected = received > 0;

errors = sum(data ~= data_detected);
BER = errors / N;

fprintf('Eb/No (dB): %d\n', EbNo_dB);
fprintf('Errors: %d\n', errors);
fprintf('BER: %f\n', BER);

figure;
plot(received, zeros(1, N), 'o');
title('BPSK Constellation');
xlabel('In-phase');
ylabel('Quadrature');
grid on;

