%JULIA SET FUNCTION TO IMPLEMENT FILLED IN JULIA SET
%PS - THE CODE TAKES A WHILE TO RUN
%%
function M = julia(zMax, c, N)
    % defining the imaginary and complex 500x500 matrices.
    [X, Y] = meshgrid(linspace(-zMax, zMax, 500));
    % Z is the actual complex matrix
    Z = complex(X, Y);
    % M should be the same size as Z 
    M = zeros(500, 500);
    % for each member fro Z, M = escape velocity.
    for i = 1:500
        for j = 1:500
            M(i,j) = escapeVelocity(Z(i, j), c, N);
        end
    end
    imagesc((atan(0.1*M)));
    axis xy;
    xlabel("Re(z)");
    ylabel("Im(z)");
end