% Esercizio 02

% Dati [parte 1]
N = 8;
A = 4*eye(N) + diag(ones(1,N-1), 1) + diag(2*ones(1,N-1),-1);
b = ones(N,1);

% Richieste [parte 1]
[V,D] = eig(A)
det(V)

% Dati [parte 2]
x0 = zeros(N,1);
toll = 1e-5;
nitmax = 200;

% Richieste [parte 2]
[xj,nit] = jacobi(A,b,x0,toll,nitmax)

% Dati [parte 3]

% Richieste [parte 3]
xe = A\b
err = norm(xe-xj, 2)
