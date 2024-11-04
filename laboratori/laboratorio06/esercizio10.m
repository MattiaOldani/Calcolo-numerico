% Esercizio 10

% Dati
e = exp(1);
f = @(a,x) e.^(a*x);
x = linspace(-1,1);

% Richieste
plot(x,f(1,x),"b")
hold on
plot(x,f(-1,x),"c")
legend("f1", "f-1")
