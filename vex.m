function [lower_convex, upper_convex] = vex(x, y)
%vex computes the lower and upper convex envelopes of the scatter point (x, y)
%   lower_convex are the coordinates of the convex envelope
%   upper_convex are the coordinates of the concave envelope 

P = [x, y];

% convhull is a Matlab toolbox that returns the indices K of the points in
% P that make up the facets of the convex hull of P
K = convhull(P);

% Every facets pointing down belongs to the lower convex envelope
low = [true;  diff(P(K,1))>=0];

% Every segments pointing up belongs to the upper convex envelope
up = [diff(P(K,1))<=0; true];

lower_convex = [P(K(low), 1), P(K(low), 2)];
upper_convex = [P(K(up), 1), P(K(up), 2)];
end

