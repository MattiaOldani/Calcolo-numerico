% Esercizio 10

% Dati
p = [1 0 -2 0 3/4 0];
x = linspace(-1.5, 1.5);

% Richieste
y = polyval(p,x);

plot(x,y)
grid on

proots = roots(p)

pder = polyder(p)
xmaxmin = roots(pder)
ymaxmin = polyval(p,xmaxmin)
