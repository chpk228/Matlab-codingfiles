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
grid on;

