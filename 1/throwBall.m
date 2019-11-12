%%
h = 1.5;
g = 9.8;
v = 4;
theta = 45;
t = linspace(0, 1, 1000);
x = v*cos(theta*(pi/180))*t;
y = h + ((v * sin(theta*(pi/180))*t) - ((1/2)*g*(t.^2)));
j = find(y < 0, 1);
q = x(j);
string = ('The ball hits the ground at a distance of ');
ti = (' meters.');
disp([string q ti])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure;
plot(x, y);
xlabel('Distance');
ylabel('Height');
title('Height vs Distance');
hold on;
maxVal = max(x);
plot([0, maxVal], [0 0], '--r');
