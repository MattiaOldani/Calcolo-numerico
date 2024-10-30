% Esercizio 07

% Dati
N = 100;
x = [1:100];

% Richieste
r1 = sum(x) == N*(N+1)/2

r2 = sum(x.^2) == N*(N+1)*(2*N + 1) / 6

r3 = sum(x.^3) == N^2 * (N+1)^2 / 4
r4 = sum(x.^3) == sum(x)^2
