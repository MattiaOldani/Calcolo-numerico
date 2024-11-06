% Esercizio 06

% Dati [parte 1]
f = @(t,y) (cos(2*pi*t) - 4*t^2) * y;
y0 = 4;
sol = @(t) 4*exp(1/(2*pi) * sin(2*pi*t) - 4/3 * t.^3);
a = 0;
b = 5;

% Richieste [parte 1]
format short e

[T,Y] = ode45(f, [a b], y0);
T = T';
Y = Y';
ysol = sol(T');

err = norm(Y'-ysol,inf) / norm(ysol,inf)
maxY = max(Y)

% Dati [parte 2]
f = sol;
a = 0;
b = 5;

% Richieste [parte 2]
It = trapz(T,Y)
Ie = integral(f,a,b)
err = abs(It - Ie) / abs(Ie)
