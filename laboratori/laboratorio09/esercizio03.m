% Esercizio 03

% Dati
a = -10;
b = 10;
e = exp(1);
f = @(x) cos(10*x).*(e.^sin(10*x));

% Richieste
q = integral(f,a,b)
exact = (e^sin(100) - e^(-sin(100)))/10

absErr = abs(q - exact) < 1e-10
relErr = abs(q - exact) / abs(exact) < 1e-6
