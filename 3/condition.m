%Lecture Exercise(ODE)
%%
function dydt = condition(t, y)
    %dydt = zeros(2, 1);
    dydt= (-t.*y)/10;
% end