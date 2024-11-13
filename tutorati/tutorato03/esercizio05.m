% Esercizio 05

% Dati [parte 1]
d = 2/3;
f = @(t) d*log(d*t);
a = exp(1)/d;
b = a + 1;
N = 10;
x = linspace(a,b,N);
y = f(x);

% Richieste [parte 1]
r = polyfit(x,y,1)

% Dati [parte 2]
xm = mean(x);

% Richieste [parte 2]
rxm = polyval(r,xm)

% Dati [parte 3]
M = [x' ones(N,1)];
Mt = M';
A = Mt*M;
b = Mt*y';

% Richieste [parte 3]
z = A\b
