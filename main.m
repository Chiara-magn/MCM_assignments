addpath('include');

% TO DO: Test assignment 1 MCM 2024-2025
% 1.1 Angle-axis to rot

% case 1
%h = [1 0 0]';
%theta = pi/2;

% case 2
%h = [0 0 1]';
%theta = pi/3;

% case 3 
%ro = [-pi/3 -pi/6 pi/3]; % ||h|| = 1 => ||ro|| = ||theta||*||h|| = theta
%theta = sqrt(ro(1)^2 + ro(2)^2 + ro(3)^2);
%h = ro/theta;

%R = AngleAxisToRot(h, theta); 
%disp(R);

% 1.2 Rot to angle-axis
% Case 1
% R = [1 0 0; 0 0 -1; 0 1 0];
 
% Case 2
% R = [0.5 -sqrt(3)/2 0; sqrt(3)/2 0.5 0; 0 0 1];
 
% Case 3
 R = eye(3,3);

% Case 4
% R = [-1 0 0; 0 -1 0; 0 0 1]; 

 [h,theta] = RotToAngleAxis(R);
 disp(theta);
 disp (h);

% 1.3 Euler to rot

% Case 1
% psi = 0;
% theta = 0;
% phi=pi / 2;
 
% Case 2
% psi = pi / 3;
% theta = 0;
% phi= 0;
 
% Case 3
% psi = pi / 3;
% theta = pi / 2;
% phi= pi / 4;
 
% Case 4
% psi = 0;
% theta = pi / 2;
% phi= -pi / 12;
 
% R = YPRToRot(psi, theta, phi);
 
% 1.4 Rot to Euler

% Case 1
% R = [1 0 0; 0 0 -1; 0 1 0];
 
% Case 2
% R = [0.5 -sqrt(3)/2 0; sqrt(3)/2 0.5 0; 0 0 1];
 
% Case 3
% R = [0 -sqrt(2)/2 sqrt(2)/2; 0.5 (sqrt(2)*sqrt(3))/4 (sqrt(2)*sqrt(3))/4; -sqrt(3)/2 sqrt(2)/4 sqrt(2)/4];

% [psi,theta,phi] = RotToYPR(R);
% fprintf('theta = %.4f, phi = %.4f, psi = %.4f\n', theta, phi, psi);


% 1.5 Rot to angle-axis with eigenvectors

% Case 1
% R = [1 0 0; 0 0 -1; 0 1 0];

% Case 2
% R = 1/9*[4 -4 -7; 8 1 4; -1 -8 4];

% Exercise_5(R);

function Exercise_5(R) 

disp('First computation:');
[h , theta] = RotToAngleAxis(R);
disp('h1 :');
disp(h);
fprintf('theta = %.4f\n', theta);

% to calculate the eigenvector associated with +1
[h_2, ~] = eigs(R, 1, 1); % the second and third arguments tell MATLAB to compute only one eigenvector, associated with the eigenvalue closest to 1.

disp ("Second computation:");
[~ , theta] = RotToAngleAxis(R);
disp('h2 :');
disp(h_2);
fprintf('theta = %.4f\n', theta);
end
