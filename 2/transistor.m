%PIECEWISE PLOT - TRANSISTOR I-V CURVES
%%
clc; clear;
      %  0                                           Vgs-Vt < 0<=Vds
      % K[(Vgs -Vt)Vds - 1/2 Vds^2]                  0<=Vds<=Vgs-Vt
%Ids =  1/2*K(Vga -Vt)^2                             0<=Vgs-Vt<=Vds
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Vgs = linspace(0, 5, 6);
Vds = 0:0.5:5;
[X, Y] = meshgrid(Vgs, Vds);
lin = false(1,6);
sat = false(1,6);
Ids = zeros(11, 6);
%Create a logical variable lin which is logical 1 when the transistor is in the linear region and zero elsewhere.
for i = 1:6
    if (X(i) <= 0) && (X(i) <= Vgs(i) - 1)
        lin(i) = true;
    else
        lin(i) = false;
    end
    
    %create a logical variable sat which is logical 1 in the saturation region and zero elsewhere
    if (Vgs(i) - 1 <= 0) && (Vgs(i) - 1 <= X(i))
        sat(i) = true;
    else
        sat(i) = false;
    end
end
%Create the variable Ids according to the equation given previously
for j = 1:6
    if lin(i) == true && sat(i) == true
        Ids = 0;
    elseif lin(i) == true
        Ids = abs(50 .* (((X-1).*Y) - (0.5.*((Y).^2))));
    elseif sat(i) == true
        Ids = abs(0.5 .* (50 .*(((X - 1).^2))));
    else
        Ids = 0;
    end
end
figure;
plot(Y, Ids)
xlabel("V_D_S(V)");
ylabel("I_D_S(Ax10^-^6)");
title("Transistor Drain Current");
legend("Vgs = 0V", "Vgs = 1V", "Vgs = 2V", "Vgs = 3V", "Vgs = 4V","Vgs = 5V", "Vgs = 6V");