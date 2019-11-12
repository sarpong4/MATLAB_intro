%fun with find
%%
function ind = findNearest(x, desiredVal)
    %x = rand(1, 100);
    %Convert matrix to Vector.
    y = x(:);
    [~,m] = min(abs(y - desiredVal));
    %find the index of the value closest to the desired value.
    t = y(m);
    ind = find(x == t);
end