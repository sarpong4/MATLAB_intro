%INTERPOLATION AND SURFACE PLOTS
%%
clear
ZO = 0 + (1)*rand(5, 5);
[XO, YO] = meshgrid(1:5, 1:5);
[X1, Y1] = meshgrid(1:0.1:5, 1:0.1:5);
Z1 = interp2(XO, YO, ZO, X1, Y1);
surf(Z1);
colormap("hsv");
shading("interp");
hold on;
contour(Z1, 15);
colorbar;
caxis([0 1]);