% Parameters
Fs = 1000;        % Sampling frequency (Hz)
T = 1;            % Duration of the signal (seconds)
f0 = 100;         % Frequency for binary '0' (Hz)
f1 = 200;         % Frequency for binary '1' (Hz)
data = [1 0 1 1 0 1 0 0 1 1]; % Binary data sequence

% Time vector
t = 0:1/Fs:T-1/Fs;

% Initialize FSK signal
fsk_signal = [];

% Generate FSK signal based on data
for i = 1:length(data)
    if data(i) == 0
        fsk_signal = [fsk_signal sin(2*pi*f0*t)];  % Use frequency f0 for '0'
    else
        fsk_signal = [fsk_signal sin(2*pi*f1*t)];  % Use frequency f1 for '1'
    end
end

% Plot the FSK signal
figure;
plot((0:length(fsk_signal)-1)/Fs, fsk_signal);
title('FSK Modulated Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

