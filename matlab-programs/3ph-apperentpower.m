V = input('Enter the line voltage (V) in volts: ');
I = input('Enter the line current (I) in amperes: ');
pf = input('Enter the power factor (pf): ');

S = sqrt(3) * V * I * pf;

fprintf('\n3-Phase Apparent Power = %.2f VA\n', S);
fprintf('3-Phase Apparent Power = %.2f kVA\n', S/1000);

