% Esercizio 08

% Dati
e = exp(1);
f = @(x) e.^(-0.5*x).*cos(20*x - 6);
g = @(x) 6*log(x.^2 + 20);
xf = linspace(0,8);
xg = linspace(-8,8);

% Richieste
subplot(1,2,1)
plot(xf,f(xf))

subplot(1,2,2)
plot(xg,g(xg))
