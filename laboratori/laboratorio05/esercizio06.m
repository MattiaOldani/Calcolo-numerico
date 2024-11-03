% Esercizio 06

% Dati
N = 15;
A = diag(1:N) - diag(0.5*ones(1,N-1),-1) + diag((1:N-3).^2,3);
b = ones(N,1);
x0 = ones(N,1);
toll = 1e-6;
nitmax = 200;

% Richieste
[xj,itj] = jacobi(A,b,x0,toll,nitmax)
[xgs,itjs] = gauss_seidel(A,b,x0,toll,nitmax)

% Per gli errori, vedere nelle funzioni
