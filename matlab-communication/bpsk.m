Fs = 1000;
T = 1;
data = randi([0 3], 1, 100);
f = [1 2]; 
t = 0:1/Fs:T-1/Fs;
qpsk_signal = [];
for i = 1:length(data)
    if data(i) == 0
        qpsk_signal = [qpsk_signal cos(2*pi*f(1)*t)]; 
    elseif data(i) == 1
        qpsk_signal = [qpsk_signal cos(2*pi*f(2)*t)]; 
    elseif data(i) == 2
        qpsk_signal = [qpsk_signal sin(2*pi*f(1)*t)]; 
    else
        qpsk_signal = [qpsk_signal sin(2*pi*f(2)*t)];
    end
end
figure;
plot((0:length(qpsk_signal)-1)/Fs, qpsk_signal);
xlabel('Time (seconds)');
ylabel('Amplitude(A)');
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
ylabel('Quadrature')
grid on;

