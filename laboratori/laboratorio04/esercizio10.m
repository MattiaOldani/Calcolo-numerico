% Esercizio 10

% Dati
A = [7 0 1 4; 0 5 10 1; 1 -3 1 0; 4 1 1 -9];
b1 = [3; 1; 1; 0];
b2 = [0; 4; 7; 50];

% Richieste
[L,U,P] = lu(A)

y1 = L\b1
x1 = U\y1

y2 = L\b2
x2 = U\y2
