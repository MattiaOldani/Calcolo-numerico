% Esercizio 04

% Dati
f = @(x) x.^2 - 7;
df = @(x) 2*x;
x0 = 10;
toll = 1e-12;
nitmax = 200;

% Richieste
[x,nit] = newton(f,df,x0,toll,nitmax)
