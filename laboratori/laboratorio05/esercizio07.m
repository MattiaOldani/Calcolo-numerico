% Esercizio 07

% Dati
N = 5;
A = diag(3*ones(1,N)) - diag(2*ones(1,N-1),1) - diag(ones(1,N-1),-1);
b = A*ones(N,1);
x0 = zeros(N,1);
toll = 1e-12;
nitmax = 10000;

% Richieste
[xj,nj] = jacobi(A,b,x0,toll,nitmax)
[xgs,ngs] = gauss_seidel(A,b,x0,toll,nitmax)
