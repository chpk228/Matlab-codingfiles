Z = input('Enter impedance magnitude (Z): ');
theta_deg = input('Enter impedance angle in degrees: ');

theta_rad = deg2rad(theta_deg);
R = Z * cos(theta_rad);
X = Z * sin(theta_rad);

disp(['Resistance (R): ', num2str(R)]);
disp(['Reactance (X): ', num2str(X)]);

