%Plotting A CirCle
%%
function [x, y] = getCircle(Center, r)
    t = linspace(0, 2*pi, 80);
    x = Center(1) + r*cos(t);
    y = Center(2) + r*sin(t);
end