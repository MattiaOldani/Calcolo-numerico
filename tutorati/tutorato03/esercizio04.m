% Esercizio 04

% Dati [parte 1]
f = @(x) (2*sin(x).*cos(x))./(1 + x.^2);
a = 0;
b = 2;
N = 10;
x = linspace(a,b,N);

% Richieste [parte 1]
p = polyfit(x,f(x),N-1);

z = linspace(a,b,100);
E = max(abs(f(z) - polyval(p,z)))

% Dati [parte 2]

% Richieste [parte 2]
s1 = griddedInterpolant(x,f(x),"linear");

E = max(abs(f(z) - s1(z)))
