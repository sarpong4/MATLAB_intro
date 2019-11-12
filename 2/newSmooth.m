%SMOOTHING NONUNIFORMLY SAMPLED DATA FOR NX2 MATRIX(X);
%%
function smoothed = newSmooth(x, width)
    clc;
    half = ceil(width);
    len = length(x);
    %length of x should be equal to length of smoothed
    smoothed = zeros(len, 2);
    for i = 1:len
        if i <= half
            smoothed(i, 2) = mean(x(1:i+half));
        elseif i > (len - half)
            smoothed(i, 2) = mean(x(i-half:half));
        else
            smoothed(i, 2) = mean(x(i-half:i+half));
        end
    end
    vq1 = interp1(x(:,1),x(:,2),smoothed(:,2));
    figure;
    plot(x(:,1),x(:,2),'.'); 
    hold on;
    plot(smoothed(:,2), vq1, 'r');
    axis xy
    legend("Original", "Smoothed");
    xlabel('Index');
    ylabel('Data Value');
    title("Smoothing Illustration");
    
end 