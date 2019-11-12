%%
function distance = throwBall(v, theta)
    h = 1.5;
    g = 9.8;
    % make the time go until 10sec
    t = linspace(0, 10, 10000);
    x = v * cos(theta*(pi/180)).*t;
    y = h + ((v * sin(theta*(pi/180))*t) - ((1/2)*g*(t.^2)));
    j = find(y < 0, 1);
    distance = x(j);
    % add an if statement that will display the warning  
    % The ball does not hit the ground in 10 seconds’ if that turns out to be the case
    if t == 10
        if y ~= 0
            disp("The ball does not hit the ground in 10 seconds")
            %if the ball doesn t hit the ground in 10 seconds, you should return NaN as the distance.
            distance = NaN;
        end
    end
    disp(['The ball hits the ground at a distance of ', num2str(distance), ' meters']);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end