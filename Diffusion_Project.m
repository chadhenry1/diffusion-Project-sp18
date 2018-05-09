
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

y = 1:0.1:2*pi();
%domain parameters and boundary values
a_x = 0; a_y = 0; b_x = 2*pi(); b_y = 2*pi();
f_b(y) = ((b_y - y)^2)*cos(pi()*y/b_y);
g_b(y) = y*((b_y - y)^2);

%boundary conditions
