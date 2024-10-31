% Esercizio 11

% Dati
A = [-5 8 -7 1; 12 -5 -3 1; 1 10 14 1; 1 0 1 2];
b1 = [-43; 21; -1; 3];
b2 = [-1; 76; -26; 3];

% Richieste
[L,U,P] = lu(A)

y1 = L\(P*b1)
x1 = U\y1

y2 = L\(P*b2)
x2 = U\y2
