% FITTING POLYNOMIALS (QUESTION 4)
%%
clc; clear;
load randomData.mat;
[p1,~,mu1] = polyfit(x, y, 1);
[p2,~,mu2] = polyfit(x, y, 2);
[p3,~,mu3] = polyfit(x, y, 3);
[p4,~,mu4] = polyfit(x, y, 4);
[p5,~,mu5] = polyfit(x, y, 5);
f1 = polyval(p1,x,[],mu1);
f2 = polyval(p2,x,[],mu2);
f3 = polyval(p3,x,[],mu3);
f4 = polyval(p4,x,[],mu4);
f5 = polyval(p5,x,[],mu5);
figure;
plot(x, y, '.b');
hold on;
plot(x,f1,'r');
hold on
plot(x, f2,'k');
hold on 
plot(x,f3,'g');
hold on;
plot(x, f4, 'c');
hold on
plot(x, f5, 'm');
xlabel('X');
ylabel('Y');
title('Polynomial fits to noisy Data');
legend('Data', 'Order 1', 'Order 2', 'Order 3', 'Order 4', 'Order 5');