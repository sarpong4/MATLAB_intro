%%
p =0.99;
t = linspace(1, 1000, 1000);
k = [0 t];
geomSeries = p.^k;
G = sum(geomSeries);
%%%%%%%%%%%%%%%%%
figure;
maxVal = max(k);
plot([0, maxVal], [G, G], 'r');
hold on;
cumm = cumsum(geomSeries);
plot(k, cumm, 'b');
xlabel('Index');
ylabel('Sum');
title('Convergence of geomseries at p = 0.99');
legend('Infinite Sum', 'Finite Sum');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m = 2;
n = linspace(1, 500, 500);
pSeries = 1./(n.^m);
P = (pi^2)/6;
figure;
maxID = max(n);
plot([0, maxID], [P, P], 'r');
hold on;
pumm = cumsum(pSeries);
plot(n, pumm, 'b');
xlabel('Index');
ylabel('Sum');
title('Convergence of pSeries with p = 2');
legend('Infinite Sum', 'Finite Sum');
