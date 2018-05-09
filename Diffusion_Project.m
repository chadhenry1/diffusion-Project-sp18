
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Diffusion_project.m
%
% Chad Henry
% MECE 5397 - Sci. Comp.
% 5/9/2018
%
% Solves a 2D diffusion equation over a rectangular domain 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%domain parameters
dx = .1;
dy = .1;
a_x = 0;
a_y = 0;
b_x = 2*pi();
b_y = 2*pi();

x = a_x:dx:b_x;
y = a_y:dy:b_y;
D = 1;      

 %dirichlet boundary conditions
fb = ((b_y - y).^2).*cos(pi()*y./b_y);                  %left  bound vector
gb = y.*((b_y - y).^2);                                 %right bound vector
fb_ay = fb(1) + ((x-a_y)/(b_x-a_x))*(gb(1)-fb(1));      %upper bound vector

%neumann boundary conditions
% u(1)
% 
% [X,Y] = meshgrid(x,y);
% f_exact = exp((-D)*(k^2)*y')*sin(k.*x);



%boundary conditions