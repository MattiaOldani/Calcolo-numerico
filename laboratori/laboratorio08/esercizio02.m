% Esercizio 02

% Dati
e = exp(1);
f = @(x) (e.^(x)).*sin(x);

% Richieste
for i = 1:4
    n = 2^i;
    x = linspace(-1, 1, n+1);
    y = f(x);
    p = polyfit(x,y,n);

    figure(i)
    plot(x,y,"o")
    hold on
    
    x = linspace(-1,1);
    y = f(x);
    plot(x,y,"b")
    
    y = polyval(p,x);
    plot(x,y,"r")
    
    grid on
end
