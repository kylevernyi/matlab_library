% Function that sketches a phase portrait of a dynamical system
% Author: Kyle Vernyi

% f is a function that defines the nonlinear state-space model
% this function should be defined in an external file

% vectors x1 and x2 define the coordinates of points
% in a rectangular region that is defined by the meshgrid function
function phase_portrait_3d(f,x,y,z)
[x1,y1,z1] = meshgrid(x,y,z);
u = zeros(size(x1));
v = zeros(size(y1));
w = zeros(size(z1));

t=0;
for i = 1:numel(x1)
    Yprime = f(t,[x1(i); y1(i); z1(i)]);
    u(i) = Yprime(1);
    v(i) = Yprime(2);
    w(i) = Yprime(3);
end

quiver3(x1,y1,z1,u,v,w); 
xlabel('x_{1}')
ylabel('x_{2}')
zlabel('x_{3}')
axis tight equal;
end