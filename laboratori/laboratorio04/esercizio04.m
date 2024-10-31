% Esercizio 04

% Dati
N = 43;
A = 7*eye(N) - diag(3*ones(1,N-2), -2);
A(1,2:N) = 0.1;
b = ones(N,1);

% Richieste
x = A\b
