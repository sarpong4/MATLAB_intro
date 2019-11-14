%FUNCTION TO FIND THE ESCAPE VELOCITY (JULIA SETS)
%%
function n = escapeVelocity(z0, c, N)
    n = 0;
    % N is the maximum escape velocity
    while (abs(z0) < 2) && n<N
        z0 = z0^2 + c;
        n = n+1;
    end
end