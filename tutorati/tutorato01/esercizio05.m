% Esercizio 05

% Dati [parte 1]
d = 2/3;
f = @(t) d * log(d*t);
a = exp(1) / d;
b = a + 1;
x = linspace(a,b,10);
y = f(x);

% Richieste [parte 1]
r = polyfit(x,y,1)

% Dati [parte 2]
xm = mean(x);

% Richieste [parte 2]
polyval(r,xm)

% Dati [parte 3]

% Richieste [parte 3]
M = [x' ones(10,1)];
Mt = M';

A = Mt*M;
b = Mt*y';

z = A\b
