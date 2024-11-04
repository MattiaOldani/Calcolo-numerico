% Esercizio 06

% Dati [parte 1]
N = 25;

% Richieste [parte 1]
A = diag(N:-1:1) - diag(ones(1,N-3),-3);
A(1,2:N) = -0.1;
b = ones(N,1);

% Dati [parte 2]

% Richieste [parte 2]
detA = det(A)

% Dati [parte 3]
D = diag(diag(A));
E = -tril(A,-1);
F = -triu(A,1);
B = D\(E+F);

% Richieste [parte 3]
rsb = max(abs(eig(B)))

% Dati [parte 4]
x0 = zeros(N,1);
toll = 1e-6;
nitmax = 200;

% Richieste [parte 4]
[x,it] = jacobi(A,b,x0,toll,nitmax)
norm(x)

% Dati [parte 5]
xe = A\b;

% Richieste [parte 5]
norm(x - xe)

% Dati [parte 6]
B = (D-E)\F;

% Richieste [parte 6]
rsb = max(abs(eig(B)))
[x,it] = gauss_seidel(A,b,x0,toll,nitmax)
norm(x)
norm(x - xe)
