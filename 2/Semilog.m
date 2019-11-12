%%
figure;
st = [15, 25, 55, 115, 144, 242];
semilogy(st, 'ms-', "LineWidth",2, "MarkerSize",4);
xlabel("Year");
ylabel("Number of Students");
title("Students' interest in 6.057 over the years");
xlim([0 10]);
ylim([10, 1000]);
%%%%%%%%%%%%%%%%%%%%%
load mitMap.mat;
figure;
subplot(2, 2, 1);
imagesc(mit);
colormap(cMap);
axis square;
title("Square");
subplot(2, 2, 2);
imagesc(mit);
colormap(cMap);
axis tight;
title("Tight");
subplot(2, 2, 3);
imagesc(mit);
colormap(cMap);
axis equal;
title("Equal");
subplot(2, 2, 4);
imagesc(mit);
colormap(cMap);
axis xy;
title("XY");
%%%%%%%%%%%%%%%%%%%%%
figure;
bar(1:5, rand([1, 5]), 'red');