% Esercizio 07

% Dati [parte 1]
N = 10;

% Richieste [parte 1]
A = hilb(N) + 3*eye(N)
b = ones(N,1)

% Dati [parte 2]

% Richieste [parte 2]
R = chol(A)
normR = norm(R,inf)

% Dati [parte 3]

% Richieste [parte 3]
y = R'\b
normY = norm(y,inf)

x = R\y
normX = norm(x,inf)
