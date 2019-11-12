%SMOOTHING FILTER
%%
function smoothed = rectFilt(x, width)
    if ~mod(width, 2)
       disp("Adding 1 to width for width is not odd");
       width = width + 1;
    end
    half = ceil((width - 1)/2);
    len = length(x);
    %length of x should be equal to length of smoothed
    smoothed = zeros(1,len);
    for i = 1:len
        if i <= half
            smoothed(:,i) = mean(x(1:i+half));
        elseif i > (len - half)
            smoothed(:,i) = mean(x(i-half:half));
        else
            smoothed(:, i) = mean(x(i-half:i+half));
        end
    end
    figure;
    plot(1:len, x, '.b');
    hold on;
    plot(1:len, smoothed, 'r');
    legend("Original", "Smoothed");
    xlabel('Index');
    ylabel('Data Value');
    title("Smoothing Illustration");
    
end 