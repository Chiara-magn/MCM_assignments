function [isRotationMatrix] = IsRotationMatrix(R)
% The function checks that the input R is a valid rotation matrix, that is 
% a valid element of SO(3).
% Return true if R is a valid rotation matrix, false otherwise. In the
% latter case, print a warning pointing out the failed check.

    [r, c] = size(R); % dimentions of R to verify that is squared
    I = eye(r, c);    
    Orth_matrix = R' * R; %to verify if R is Orthogonal
    tolerance = 1e-3; 

    if det(R) == 1 && r == c && norm(Orth_matrix - I) < tolerance
        isRotationMatrix = true;
    else 
       isRotationMatrix = false;
    end
    
end