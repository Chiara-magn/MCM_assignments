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
    tolerance = 1e-3; 
    
    % Check if matrix R is valid
    if IsRotationMatrix(R) == true 
        if isequal(R, I) % check if R is Identity matrix
            theta = 0;
            h = [1 0 0];
            disp('Theta = 0, h can be arbitrary');
            return;
        end

        theta = acos((sum(R .* I, "all") - 1) /2); %trace is equal to sum(R .* I, "all")

        % theta could also be done with: 
           % for i = 1:r
           %    tr = tr + R(i,i);
           % end
           % theta = acos((tr - 1)/2);

        % special case theta = pi
        if (abs(theta - pi) < tolerance)

            h_absolute = sqrt((diag(R) + 1) / 2); %calculates all the abs of diagonal elements with formula
            i_select = find(h_absolute > 0, 1); %finds the correct i cross, with positive value

            h(i_select) = h_absolute(i_select); % h(i_cross)

            for j = setdiff (1:3, i_select) % selects the index of all the elements apart from i_select 
            h(j) = sign_x(h(1)) * sign_x(R(i_select,j)) * sqrt((R(j,j) + 1)/2); %calculates the other two h elements
            end

          % h1 = sqrt((R(1,1) + 1)/2); % Verificare se è corretto usare sempre R(1,1)
          % h2 = sign_x(h1) * sign_x(R(1,2)) * sqrt((R(2,2) + 1)/2);
          % h3 = sign_x(h1) * sign_x(R(1,3)) * sqrt((R(3,3) + 1)/2);
            
         %   h = [h1, h2, h3]; % not needed in the second version 
        else
         % generic case: theta ∈ [0,pi]
           a = vex((R - R')/2); % a = axial vector
           h = a / sin(theta);
        end
        return;
    else
        error('Matrix inserted is not valid');
    end
end

% if the input is 0 (no sign) the function returns 1 instead of 0
function sgn = sign_x(x)
    if x == 0
        sgn = 1;
    else
        sgn = sign(x);
    end
end

function a = vex(S_a)
% input: skew matrix S_a (3x3)
% output: the original a vector (3x1)
    a = [S_a(3, 2); S_a(1, 3); S_a(2, 1)];
end