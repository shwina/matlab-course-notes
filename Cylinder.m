% Name Class ###-Sec YYYY-MM-DD
% Problem Statement: Calculates volume and surface area of a cylinder
%
% Variables:
% r - radius of the cylinder [cm]
% H - height of the cylinder [cm]
% V - volume of the cylinder [cm^3]
% SA – surface area of the cylinder [cm^2]
clear
clc
% Set Input Variables
r = 3;
H = 4;
% Calculate
V = pi*r^2*H
SA = 2*pi*r*H + 2*pi*r^2