% Esercizio 07

% Dati
e = exp(1);
f = @(x) e.^(-x) - sin(x);
x = linspace(-1,5);

% Richieste
plot(x,f(x))
grid on
title("Funzione pazza")
