function plotSin(f1, f2)
    %%
    x = linspace(0, 2*pi, 45);
    y = linspace(0, 2*pi, 45);
    %x = linspace(0, 5, 100);
    %y = linspace(0, 5, 100);
    e = (f1.*x);
    t = sin(e);
    u = f2.*y;
    s = sin(u);
    if nargin
         figure;
         Z = sin(f1.*x) + sin(f2.*y);
        [X, Y] = meshgrid(x, y);
        subplot(2, 1, 1);
        imagesc(Z);
        colorbar
        colormap("hot");
        axis xy;
      
        %plot(f1, t, '--r', 'LineWidth',2, 'MarkerFaceColor',[1 1 1]) ;
        subplot(2, 1, 2);
        Z = meshgrid(Z);
        surf(X, Y, Z);
        axis tight;
        %plot(f2, s, '--b', 'LineWidth',2, 'MarkerFaceColor',[1 0 1]) ;
    else
         plot(f1, t, '--r', 'LineWidth',2, 'Marker','o', 'MarkerFaceColor','k') ;
    end
end