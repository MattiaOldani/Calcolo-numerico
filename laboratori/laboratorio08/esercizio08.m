% Esercizio 08

% Dati [parte 1]
e = exp(1);
f = @(x) 2*e.^(-2*x) - x;
x = linspace(0,1,10);
y = f(x);

% Richieste [parte 1]
rr = polyfit(x,y,1)

% Dati [parte 2]
M = [x' ones(10,1)];
Mt = M';

% Richieste [parte 2]
A = Mt * M;
b = Mt * y';

z = A\b
