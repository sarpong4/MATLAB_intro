%HODGKIN - HUXLEY MODEL OF THE NEURON (1952) - QUESTION 5(FUNCTION TO EXECUTE THE SPIKING DESCRIPTION)
%%
function dXdt = odeHH(t, X)
    n = X(1);
    m = X(2);
    h = X(3);
    V = X(4);
    
    dndt = ((1 -n)*alphan(V)) - (n*betan(V));
    dmdt = ((1 - m)*alpham(V)) - (m*betam(V));
    dhdt = (1 - h)*alphah(V) - h*betah(V);
    dVdt = -1*((36*(n^4)*(V +72))+((120*(m^3)*h)*(V-55))+(0.3*(V+49.4)));
    
    dXdt = zeros(4, 1);
    
    dXdt(1) = dndt;
    dXdt(2) = dmdt;
    dXdt(3) = dhdt;
    dXdt(4) = dVdt;
end