% Esercizio 02

% Dati
p = [1 0 -1 4];
xp = linspace(-2,1);
q = [1 6 0 -24 -1 -30];
xq = linspace(-6,3);

% Richieste
subplot(1,2,1)
plot(xp, polyval(p,xp))
title("Prima funzione")
grid on

subplot(1,2,2)
plot(xq, polyval(q,xq))
title("Seconda funzione")
grid on

proots = roots(p)
qroots = roots(q)
