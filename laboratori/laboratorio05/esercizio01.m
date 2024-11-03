% Esercizio 01

% Dati
A = [1 -1 0; -1 5 6; 0 6 10];
b = [3; 1; 1];

% Richieste
R = chol(A)
y = R'\b
x = R\y
