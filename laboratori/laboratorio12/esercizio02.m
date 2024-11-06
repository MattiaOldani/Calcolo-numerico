% Esercizio 02

% Dati [parte 1]
N = 90;
A = 5*eye(N) - diag(2*ones(1,N-2),2) - diag(2*ones(1,N-2),-2);
A(1,N) = 1;
A(N,1) = 1;

% Richieste [parte 1]
autoval = eig(A);
min_a = min(autoval)
max_a = max(autoval)

% Dati [parte 2]
D = diag(diag(A));
E = -tril(A,-1);
F = -triu(A,1);
B = (D-E)\F;

% Richieste [parte 2]
autoval = eig(B);
rs = max(abs(autoval))

% Dati [parte 3]
b = ones(N,1);
x0 = zeros(N,1);
toll = 1e-6;
nitmax = 200;

% Richieste [parte 3]
[xgs,it] = gauss_seidel(A,b,x0,toll,nitmax);
xe = A\b;
it

err = norm(xgs-xe,inf) / norm(xe,inf)
