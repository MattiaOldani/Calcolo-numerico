% Esercizio 07

% Dati
N = 10;

% Richieste
diag([1:N]) - diag(ones(N-1,1),-1) - diag(ones(N-2,1),2)

A = diag([1:N].^2);
A(2:N,1) = 1;
A(1,2:N) = 0.1;
A
