
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
clear all; close all; clc;
%user inputs
N=input('Choose "N" - the number of elements per row/column  ');

%rectangular domain
ax = 0;
ay = 0;
bx = 2*pi();
by = 2*pi();

%grid
x = linspace(ax,bx,N);
y = linspace(ay,by,N);
[X,Y] = meshgrid(x,y);
h = (bx-ax)/(N+1); 

%boundary conditions
u = zeros(N,N);
fb = ((by-y).^2).*cos(y.*pi/by);
gb = (by-y).^2.*y; 
u(1,1:N-1) = fb(1,1:N-1);    %left bound
u(1,1:N-1) = gb(1,1:N-1);    %right bound
toolong = fb(1) + ((x-ax)/(bx-ax)).*(gb(1)-fb(1));
u(1:N-1,1) = toolong(1:N-1,1); %lower bound
toolong2 = fb(N) + ((x-ax)/(bx-ax)).*(gb(N)-fb(N));
u(1:N,N) = toolong2(1:N,N);  %made up boundary, couldnt figure out ghost node

surf(X,Y,u)
