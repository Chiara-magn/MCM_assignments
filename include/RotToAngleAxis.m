function [h,theta] = RotToAngleAxis(R)
% Given a rotation matrix this function
% should output the equivalent angle-axis representation values,
% respectively 'theta' (angle), 'h' (axis)
% Check that R is a valid rotation matrix using IsRotationMatrix()

I = eye(3, 3);

if IsRotationMatrix(R) == true
    if R == I
        theta = 0; % va aggiunto h ma è arbitrario quindi non so come fare
    end

    % trace of R
    for i = 1:r
        tr = tr + R(i,i);
    end

    theta = acos((tr - 1)/2);

    if theta == pi
% da completare
end


 
function a = vex(S_a)
% input: skew matrix S_a (3x3)
% output: the original a vector (3x1)
end