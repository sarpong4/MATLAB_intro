% PLOTTING 5 CICRCLES
%%
clc; clear;
figure;
cm = jet(5);
r = linspace(2, 10, 5);
for i = 1:5 
    [x,y] = getCircle([0,0],r(i));
    plot(x,y,'LineWidth',3,'color',cm(i,:));
    hold on;
end
colormap jet
axis equal