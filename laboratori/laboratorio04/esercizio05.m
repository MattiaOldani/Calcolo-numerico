% Esercizio 05

% Dati
A = [4 -2 1; -2 5 -2; 1 -2 6];
b = A*ones(3,1);

% Richieste
[L,U,P] = lu(A)
y = L\b
x = U\y

x == ones(3,1)
