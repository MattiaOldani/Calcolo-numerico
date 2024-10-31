% Esercizio 09

% Dati
A = [3 9 0 7; 2 2 2 1; 0 2 1 3; 4 -3 0 9];

% Richieste
norm(A,1) == max(sum(abs(A)))
norm(A,inf) == max(sum(abs(A')))

tl = tril(A)
tu = triu(A)
