addpath('include');

% TO DO: Test assignment 1 MCM 2024-2025
% 1.1 Angle-axis to rot

% case 1
h = [1 0 0]';
theta = pi/2;
R = AngleAxisToRot(h, theta);
disp(R);

% case 2
h = [0 0 1]';
theta = pi/3;
R = AngleAxisToRot(h, theta);
disp(R);

% case 3
h = [0 0 1]';
theta = pi/3;
R = AngleAxisToRot(h, theta);
disp(R);

% 1.2 Rot to angle-axis



% 1.3 Euler to rot

% 1.4 Rot to Euler

% 1.5 Rot to angle-axis with eigenvectors