% Esercizio 05

% Dati [parte 1]
N = 20;
A = 4*eye(N) - diag(3*ones(1,N-1),1) - diag(3*ones(1,N-1),-1);
b = (1:N)';

% Richieste [parte 1]
detA = det(A)
autoval = eig(A)
maxval = max(autoval)
minval = min(autoval)

% Dati [parte 2]

% Richieste [parte 2]
[L U P] = lu(A)
norm(L)

% Dati [parte 3]

% Richieste [parte 3]
y = L\(P*b)
norm(y)

x = U\y
norm(x)
