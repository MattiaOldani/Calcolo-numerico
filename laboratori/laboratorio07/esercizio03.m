% Esercizio 03

% Dati
p = [1 -2 -1];
q = [4 5 5 0 -1 0];

% Richieste
pint = polyint(p);
polyval(pint,3) - polyval(pint,0)

qint = polyint(q);
polyval(qint,7) - polyval(qint,-1)
