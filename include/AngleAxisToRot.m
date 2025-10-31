function R = AngleAxisToRot(h,theta)
% The fuction implement the Rodrigues Formula
% Input: 
% h is the axis of rotation
% theta is the angle of rotation (rad)
% Output:
% R rotation matrix

I = eye(3,3);
h_skew = [0 -h(3) h(2); h(3) 0 -h(1); -h(2) h(1) 0];

R = I + sin(theta)*h_skew + (1-cos(theta))*(h_skew^2);


end
