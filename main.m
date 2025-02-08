x = linspace(-2*pi, 2*pi)';
f = @(x) x.*sin(x);
y = f(x);

% It computes the convex envelope (lower convex envelope) amd the concave
% envelope (upper convex envelope) of the scatter points (x, y)
[lower_convex, upper_convex] = vex(x, y);

% Display
plot(x, y,'*')
hold on
plot(lower_convex(:,1), lower_convex(:,2),'r');
plot(upper_convex(:,1), upper_convex(:,2),'g');
legend('y', 'convex envelope', 'concave envelope', 'location', 'best' )
hold off


