function [isRotationMatrix] = IsRotationMatrix(R)
% The function checks that the input R is a valid rotation matrix,
%  that is a valid element of SO(3).
% Return true if R is a valid rotation matrix, false otherwise. In the
% latter case, print a warning pointing out the failed check.

    [r, c] = size(R); % dimentions of R to verify that is squared
    I = eye(r, c);    
    Orth_matrix = R' * R; %to verify if R is Orthogonal
    tolerance = 1e-3; 

    if (r == c && r == 3)     
        if ((det(R) - 1) < tolerance  && norm(Orth_matrix - I) < tolerance)
            isRotationMatrix = true;
            disp('R is a valid rotation matrix');
            return;
        else 
           isRotationMatrix = false;
           disp('R is not a rotation matrix');
           return;
        end
    else
        error('failed check, Matrix is not 3x3')
    end
end