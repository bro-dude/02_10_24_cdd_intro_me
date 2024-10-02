clear all;
clear all;
clc;

%%

rho = 1000;         % [kg/m^3]
d = 1;              % [m]
h0 = 2;             % [m]
g = 9.81;           % gravity [m/s^2]
c = 0.1;            % Valve coefficient [kg/s/Pa]

%%
% Exponential time multiplier
k = 4*c*g/d^2/pi;

% Time to reach empty water level
t_half = (pi*d^2*log(2)) / (4*c*g);

% Time 
t_empty = (pi * d^2 * log(1000)) / (4 * c * g);

h_avg = h0 / (2 * log(2));

t = linspace(0,t_empty,1001);

h = h0 * exp(-k * t);

figure(1)
plot(t,h,"_")



