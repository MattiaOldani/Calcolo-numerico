% Esercizio 02

% Dati [parte 1]
f = @(x) exp(x) - x.^2 - sin(x) - 1;
a = -2;
b = 2;

% Richieste [parte 1]
x = linspace(a,b);
y = f(x);
plot(x,y)
grid on

% Dati [parte 2]

% Richieste [parte 2]
[x,nit] = bisezione(f,a,b,1e-8)
