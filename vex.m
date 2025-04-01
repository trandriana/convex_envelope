function [lower_convex, upper_convex] = vex(x, y)
% Filename: vex.m
% Description: This function computes the lower and upper convex envelopes of the scatter points (x, y)
% Authors: Tsiry Avisoa Randrianasolo
% Syntax: [lower_convex, upper_convex] = vex(x, y)
% Input:
% -- (x, y): coordinates of scatter points in column vectors
% Output:
% -- lower_convex: coordinates of the lower convex envelope in column vectors
% -- upper_convex: coordinates of the upper convex envelope (convace envelope) in column vectors

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

