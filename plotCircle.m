function [outputCircle] = plotCircle(x,y,r)
%PLOTCIRCLE Summary of this function goes here
%   Detailed explanation goes here
theta = linspace(0, 2*pi, 40);
xval = r*cos(theta) + x;
yval = r*sin(theta) + y;
outputCircle = plot(xval, yval);
end

