% Esercizio 09

% Dati
e = exp(1);
x = linspace(-1,1);
f = @(x) 1./(x.^2 + 1);
opf = "b:";
g = @(x) (6 + e.^(-x).*sin(6*x))./(4 + e.^(-x).*cos(6*x));
opg = "k--";

% Richieste
plot(x,f(x),opf)
hold on
plot(x,g(x),opg)
legend("f", "g")
