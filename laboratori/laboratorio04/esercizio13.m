% Esercizio 13

% Dati [parte 1]
n = 10;
B = hilb(n);
C = 3*eye(n) - diag(ones(1,n-1), 1) - diag(ones(1,n-1),-1);
A = B + C;

% Richieste [parte 1]
[L,U,P] = lu(A)

n1 = norm(L,1)
ni = norm(U,inf)

% Dati [parte 2]
b = ones(n,1);

% Richieste [parte 2]
y = L\b
ni = norm(y,inf)

x = U\y
ni = norm(x,inf)
