function [R] = YPRToRot(psi, theta, phi)
% The function compute the rotation matrix using the YPR (yaw-pitch-roll)
% convention, given psi, theta, phi.
% Input:
% psi angle around z axis (yaw)
% theta angle around y axis (theta)
% phi angle around x axis (phi)
% Output:
% R rotation matrix
    
    % Rz rotation around z axis
    Rz = [cos(psi) -sin(psi) 0; sin(psi) cos(psi) 0; 0 0 1];
    % Ry rotation around y axis
    Ry = [cos(theta) 0 sin(theta); 0 1 0; -sin(theta) 0 cos(theta)];
    % Rx rotation around x axis
    Rx = [1 0 0; 0 cos(phi) -sin(phi); 0 sin(phi) cos(phi)];
     
    % Moltiplication to define the final rotation matrix with ZYX order
    R = Rz * Ry * Rx;
     
    % Check if generated R is rotation matrix
    if (IsRotationMatrix(R) == true)
        disp('R correctly generated')
        disp(R);
    end

end

