%TEST THE FUNCTION throwBall.m
%%
clc; clear;
v = randi(100);
r = linspace(0, 90, 100);
l = length(r);
distance = zeros(1, l);
for i = 1 : l
    distance(i) = throwBall(v, r(i));
end
plot(r, distance)
xlabel('Initial Angle(deg)')
ylabel('Distance Thrown(m)')
title('Distance of ball throw as a function of release angle ');
hold  on;