% Esercizio 10

% Dati
N = 5;
A = diag(2*ones(1,N)) - diag(ones(1,N-1),1) - diag(ones(1,N-1),-1);
b = ones(N,1);
x0 = zeros(N,1);
toll = 1e-6;
nitmax = 100000;

% Richieste
[xj,nj] = jacobi(A,b,x0,toll,nitmax)
[xgs,ngs] = gauss_seidel(A,b,x0,toll,nitmax)
A\b
