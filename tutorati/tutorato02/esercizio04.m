% Esercizio 04

% Dati [parte 1]
f = @(t,y) -y + exp(-t)*cos(t - pi/2);
a = 0;
b = 1;
y0 = -1;
sol = @(t) exp(-t).*sin(t - pi/2);

% Richieste [parte 1]
T = a:0.01:b;
[T,Y] = eulero(f,T,y0);

% Dati [parte 2]

% Richieste [parte 2]
E = norm(sol(T)-Y, inf)

% Dati [parte 3]

% Richieste [parte 3]
g = @(t) exp(-t).*sin(t - pi/2) + t;
zero = fzero(g, [a,b])

% Dati [parte 4]
m = 4;

% Richieste [parte 4]
Ics = cavalieri_simpson(a,b,m,sol)
I = integral(sol,a,b)

err = abs(I - Ics)
