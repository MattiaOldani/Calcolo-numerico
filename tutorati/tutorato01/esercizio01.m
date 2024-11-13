% Esercizio 01

% Dati [parte 1]
e = exp(1);
v = linspace(0,e,9);
N = 10;
A = 3*eye(N) + diag(v,1) - diag(ones(1,N-1), -1);
b = ones(N,1);

% Richieste [parte 1]
[L,U,P] = lu(A);
nu = norm(U,2)

% Dati [parte 2]

% Richieste [parte 2]
y = L\b;
ny = norm(y,2)
x = U\y;
nx = norm(x,2)

% Dati [parte 3]
D = diag(diag(A));
E = -tril(A,-1);
F = -triu(A,1);
B = (D-E)\F;

% Richieste [parte 3]
rs = max(abs(eig(B)))
rs < 1

% Dati [parte 4]
x0 = zeros(N,1);
toll = 1e-6;
nitmax = 200;

% Richieste [parte 4]
[xgs,nit] = gauss_seidel(A,b,x0,toll,nitmax)
norm(xgs-x, 2) / norm(x, 2)
