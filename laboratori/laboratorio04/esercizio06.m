% Esercizio 06

% Dati
A = [-5 8 -7; 12 -5 -3; 1 10 14];
b = A*ones(3,1);

% Richieste
[L,U,P] = lu(A)
y = L\(P*b)
x = U\y

x == ones(3,1)
