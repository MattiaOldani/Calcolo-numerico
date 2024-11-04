% Esercizio 11

% Dati
f = @(x) sin(x) + cos(x);
xi = 0;
xf = pi;

% Richieste
for i = 1:4
    n = 2^i;
    x = linspace(xi,xf,n+1);
    y = f(x);
    p = polyfit(x,y,n);

    figure(i)
    plot(x,y,"o")
    hold on

    x = linspace(xi,xf,1000);
    yf = f(x);
    plot(x,yf,"b")

    yp = polyval(p,x);
    plot(x,yp,"r")
    grid on

    max(abs(yf - yp))
end
