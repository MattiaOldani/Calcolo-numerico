% Esercizio 09

% Dati [parte 1]
f = @(x) 5*cos(pi*x.^2) - exp(x);
x = linspace(0,1,5);
y = f(x);

% Richieste [parte 1]
rr = polyfit(x,y,1)
polyval(rr, mean(x))

% Dati [parte 2]

% Richieste [parte 2]
p = polyfit(x,y,length(x)-1)
proots = roots(p)
