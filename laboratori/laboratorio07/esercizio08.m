% Esercizio 08

% Dati [parte 1]
p = [10 -9 -6 12];
q = [5 -4 -12 8];

% Richieste [parte 1]
conv(p,q)

% Dati [parte 2]
p = [14 -6 3 9];
q = [5 7 -4];

% Richieste [parte 2]
[qq,r] = deconv(p,q)

% Dati [parte 3]
r = [8 8 20 3+6i 3-6i];

% Richieste [parte 3]
p = poly(r)
