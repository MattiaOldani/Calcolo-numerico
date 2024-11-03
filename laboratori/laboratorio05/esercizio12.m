% Esercizio 12

% Dati [parte 1]
x = linspace(0,pi/2,9);
s = 11;

% Richieste [parte 1]
N = 10;
A = diag(s*ones(1,N)) - diag(ones(1,N-1),-1) + diag(x,1)
b = ones(N,1)

% Dati [parte 2]
x0 = zeros(N,1);
toll = 1e-5;
nitmax = 200;

% Richieste [parte 2]
[xj,nitmax] = jacobi(A,b,x0,toll,nitmax)

% Dati [parte 3]

% Richieste [parte 3]
xe = A\b
norm(xe - xj)
