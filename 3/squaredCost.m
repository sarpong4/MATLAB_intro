%function for regression
%%
function cost = squaredCost(beta, dataAug, labels)
    plot(dataAug, labels, '.r');
    hold on;
    cost = cumsum(labels-(dataAug+length(beta)).^2);
    plot(dataAug, polyval(cost, dataAug), 'k');
end