% Esercizio 01

% Dati
f = @(x) sin(exp(x));
g = @(x) (x.^3 - 3*x + 2).*exp(x);
x1 = [0 2.5];
x2 = [-3 1.5];

% Richieste
figure(1)
x = linspace(x1(1), x1(2));
y = f(x);
plot(x,y)
grid on

fzero(f, [1 1.5])
fzero(f, [1.5 2])
fzero(f, [2 2.5])

figure(2)
x = linspace(x2(1), x2(2));
y = g(x);
plot(x,y)
grid on

fzero(g, [-2.5 -1.5])
