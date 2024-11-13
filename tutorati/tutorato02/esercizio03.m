% Esercizio 03

% Dati [parte 1]
f = @(x) cos(exp(x) + x.^2);
a = 0;
b = pi/3;
toll = 1e-8;
nitmax = 200;
x0 = 0;
df = @(x) (-sin(exp(x0 + x.^2))).*(exp(x) + 2*x);

% Richieste [parte 1]
format short e
[alpha,nit] = newton(f,df,x0,toll,nitmax)

% Dati [parte 2]
N = 6;
x = linspace(a,b,N);
z = linspace(a,b,500);

% Richieste [parte 2]
p = polyfit(x,f(x),length(x)-1);

norm(f(z)-polyval(p,z), inf)

proots = roots(p)
