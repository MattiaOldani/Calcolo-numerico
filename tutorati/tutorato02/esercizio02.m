% Esercizio 02

% Dati [parte 1]
d = 7/8;
f = @(t,y) d^2 * exp(-y/d);
t0 = exp(1)/d;
tmax = t0 + 1;
y0 = d;
sol = @(t) d * log(d*t);

% Richieste [parte 1]
T = t0:0.02:tmax;
[T,Y] = heun(f,T,y0);

plot(T,Y,"r")
hold on

plot(T,sol(T),"g")
grid on

% Dati [parte 2]

% Richieste [parte 2]
E = norm(sol(T) - Y, inf)

% Dati [parte 3]
a = 0.5;
b = t0;
toll = 1e-5;

% Richieste [parte 3]
zero = bisezione(sol,a,b,toll)
