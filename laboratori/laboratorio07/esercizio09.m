% Esercizio 09

% Dati
p = [1 -7 12];

% Richieste
proots = sort(roots(p))
x = linspace(proots(1), proots(2));

plot(x, polyval(p,x))
grid on

pint = polyint(p);
polyval(pint, proots(2)) - polyval(pint, proots(1))
