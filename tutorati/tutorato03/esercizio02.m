% Esercizio 02

% Dati [parte 1]
a = 0;
b = pi/4;
x = linspace(a,b,9);
s = 12;
N = 10;

% Richieste [parte 1]
A = s*eye(N) - diag(ones(1,N-1),-1) + diag(x,1);
b = ones(N,1);

% Dati [parte 2]
x0 = zeros(N,1);
toll = 1e-5;
nitmax = 200;

[xj,nit] = jacobi(A,b,x0,toll,nitmax)

% Dati [parte 3]

% Richieste [parte 3]
xe = A\b

err = norm(xe-xj,2)
