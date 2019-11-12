% USING getCircle TO DRAW OLYMPIC LOGO
%%
clc; clear;
figure;
%CENTER CIRCLE (BLACK)
[x, y] = getCircle([0, 0], 0.45);
plot(x, y, "LineWidth", 3, "Color",'k');
axis equal
hold on;
%TOP LEFT CIRCLE (BLUE)
[x, y] = getCircle([-1, 0], 0.45);
plot(x, y, "LineWidth", 3, "Color",'b');
axis equal
hold on;
%TOP RIGHT CIRCLE (RED)
[x, y] = getCircle([1, 0], 0.45);
plot(x, y, "LineWidth", 3, "Color",'r');
axis equal
hold on;
%BOTTOM LEFT CIRCLE (YELLOW)
[x, y] = getCircle([-0.5, -0.3], 0.45);
plot(x, y, "LineWidth", 3, "Color",'y');
axis equal
hold on;
%BOTTOM RIGHT CIRCLE (GREEN)
[x, y] = getCircle([0.5, -0.3], 0.45);
plot(x, y, "LineWidth", 3, "Color",'g');
axis equal
hold on;