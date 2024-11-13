% Esercizio 03

format short e

% Dati [parte 1]
f = @(x) cos(exp(x) + x.^2);
df = @(x) (-sin(exp(x) + x.^2)).*(exp(x) + 2*x);
a = 0;
b = pi/3;
toll = 1e-8;
nitmax = 200;
x0 = 0;

% Richieste [parte 1]
[x,nit] = newton(f,df,x0,toll,nitmax)

% Dati [parte 2]
N = 6;
x = linspace(a,b,N);
z = linspace(a,b,500);

% Richieste [parte 2]
p = polyfit(x,f(x),N-1);

err = norm(f(z)-polyval(p,z), inf)

alpha = roots(p)
