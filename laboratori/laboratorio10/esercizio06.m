% Esercizio 06

% Dati [parte 1]
f = @(x) atan(x);
df = @(x) 1./(1 + x.^2);
a = -15;
b = 20;
x0 = 20;
toll = 1e-12;

% Richieste [parte 1]
[x,nit] = bisezione(f,a,b,toll)
[x,nit] = newton(f,df,x0,toll,200)

% Dati [parte 2]
tollb = 0.001;
tolln = 1e-12;

% Richieste [parte 2]
[x,nit] = bisezione(f,a,b,tollb)
[x,nit] = newton(f,df,x,toll,200)
