% Esercizio 04

% Dati [parte 1]
f = @(t,y) 10*exp(-t)*cos(t) - y;
a = 0;
b = 1;
y0 = -10;
sol = @(t) 10*exp(-t).*(sin(t) - 1);
h = 0.001;

% Richieste [parte 1]
T = a:h:b;
[T,Y] = eulero(f,T,y0);

% Dati [parte 2]
plot(T,Y,"r")
hold on

plot(T,sol(T),"g")
grid on

% Dati [parte 3]

% Richieste [parte 3]
E = norm(sol(T)-Y, inf)

% Dati [parte 4]

% Richieste [parte 4]
It = trapz(T,Y)
I = integral(sol,a,b)
err = abs(I - It)
