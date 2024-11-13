% Esercizio 01

% Dati [parte 1]
N = 10;
A = 3*eye(N) - diag(ones(1,N-1),1) - diag(ones(1,N-1),-1);
b = [1 0 13 -3 -7 5 -1 1 -4 4]';

% Richieste [parte 1]
R = chol(A)
nr = norm(R,inf)

% Dati [parte 2]

% Richieste [parte 2]
y = R'\b
ny = norm(y,inf)
x = R\y
nx = norm(x,inf)

% Dati [parte 3]
D = diag(diag(A));
E = -tril(A,-1);
F = -triu(A,1);
B = (D-E)\F;

% Richieste [parte 3]
rhogs = max(abs(eig(B)))

% Dati [parte 4]
x0 = zeros(N,1);
toll = 1e-6;
nitmax = 200;

% Richieste [parte 4]
[xgs,nit] = gauss_seidel(A,b,x0,toll,nitmax)

err = norm(xgs-x,inf) / norm(x,inf)
