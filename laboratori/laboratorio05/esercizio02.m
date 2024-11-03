% Esercizio 02

% Dati
A = [3 9 0 1; 2 0 1 0; 0 2 1 3; 4 -3 0 9];

% Richieste
autoval = eig(A)
r = max(abs(autoval))
n = norm(autoval)
