% Esercizio 05

% Dati [parte 1]
x = [0,pi/2,pi];

% Richieste [parte 1]
y = 2*sin(x).*cos(x) - cos(2 * x)

clear all

% Dati [parte 2]
x = linspace(1,10,5);
e = exp(1);

% Richiesta [parte 2]
y = (e.^(sin(x.^2)) + cos(x))./(2 * sqrt(x) + 5 * log(x))
