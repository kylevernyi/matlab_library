% Function that sketches a phase portrait of a dynamical system
% Author: Kyle Vernyi

% f is a function that defines the nonlinear state-space model
% this function should be defined in an external file

% vectors x1 and x2 define the coordinates of points
% in a rectangular region that is defined by the meshgrid function
function phase_portrait(f,x1,x2)
[x,y] = meshgrid(x1,x2);
u = zeros(size(x));
v = zeros(size(x));
% we can use a single loop over each element to compute the derivatives at each point 
t=0; 
% we want the derivatives at each point at t=0, i.e. the starting time
[d1,d2]=size(x);

for i = 1:d1
    for j=1:d2
    Yprime = f(t,[x(i,j); y(i,j)]);
    u(i,j) = Yprime(1);
    v(i,j) = Yprime(2);
    end
end

figure(1)
hold on;
quiver(x,y,u,v,'b', 'AutoScale', 'on'); 
xlabel('x_{1}'); ylabel('x_{2}');
axis tight equal; box;
end
