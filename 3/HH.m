%HODGKIN - HUXLEY MODEL OF THE NEURON (1952) - QUESTION 5
%%
clc; clear;
tSpan = [0, 20];
n = 0.5;  m = 0.5;  h = 0.5;  V = -60;
init = [n m h V];
[t, ySS] = ode45('odeHH', tSpan, init);
figure;
plot(t, ySS(:,4), 'k');
xlabel('Time(ms)'); ylabel('Transmembrane Voltage(mV)'); title('Approaching Steady State');
figure;
%Exploring the all or none action potential
for v = 1:10
    [t, ySS] = ode45('odeHH', tSpan, init);
    t = linspace(0,20,size(ySS,1));
    init = ySS(end,:);
    %increase the initial value of V
    init(4) = init(4)+v;
    % check whether the peak voltage surpassed 0mV
    if max(ySS(:, 4)) > 0
        plot(t, ySS(:, 4), 'r');
    else
        plot(t, ySS(:, 4), 'k')
    end
    hold on;
end
xlabel('Time(ms)');  ylabel('Transmembrane Voltage(mV)');
title('Threshold Behavior');