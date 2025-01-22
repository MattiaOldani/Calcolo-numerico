% Esercizio 14

% Dati
N = 8;
A = 5*eye(N) - diag(2*ones(1,N-1),1) - diag(2*ones(1,N-1),-1);
b = [1; 2; 3; 4; 5; 6; 7; 26];

% Richieste
R = chol(A)
ni = norm(R,inf)

y = R'\b
ne = norm(y)

x = R\y
ne = norm(x)
