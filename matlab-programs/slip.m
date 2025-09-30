f = input('Enter the supply frequency (Hz): ');
P = input('Enter the number of poles: ');
Nr = input('Enter the rotor speed (RPM): ');

Ns = (120 * f) / P;
s = (Ns - Nr) / Ns;
fr = s * f;

fprintf('\nSynchronous Speed (Ns) = %.2f RPM\n', Ns);
fprintf('Slip (s) = %.4f (%.2f%%)\n', s, s*100);
fprintf('Rotor frequency (fr) = %.2f Hz\n', fr);

