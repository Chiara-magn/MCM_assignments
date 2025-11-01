function [h,theta] = RotToAngleAxis(R)
% Given a rotation matrix this function
% should output the equivalent angle-axis representation values,
% respectively 'theta' (angle), 'h' (axis)
% Check that R is a valid rotation matrix using IsRotationMatrix()
% initializations
I = eye(3, 3);
h = [0 0 0];
theta = 0;
tr = 0;

% Check if matrix R is valid
if IsRotationMatrix(R) == true 
    if isequal(R, I)
        theta = 0; % va aggiunto h ma è arbitrario quindi non so come fare
        h = [1 0 0];%per ora ho messo cosi
        return;
    end

    % trace of R
    for i = 1:r
        tr = tr + R(i,i);
    end
    % theta
    theta = acos((tr - 1)/2);
    % special case theta = pi
    if theta == pi
        for i = 1:3
           h(i) = sqrt((R(i,i)+1)/2);
        end
    end
    return;
else
    disp ('Matrix inserted is not valid');
end
 
function a = vex(S_a)
% input: skew matrix S_a (3x3)
% output: the original a vector (3x1)
end