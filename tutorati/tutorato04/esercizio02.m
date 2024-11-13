% Esercizio 02

% Dati [parte 1]
n = 1;
d = (n+2)/(n+3);
f = @(t,y) d^2 * exp(-y/d);
t0 = exp(1)/d;
tmax = t0 + 1;
y0 = d;
sol = @(t) d*log(d*t);
h = 0.02;

% Richieste [parte 1]
T = t0:h:tmax;
[T,Y] = heun(f,T,y0);

plot(T,sol(T),"g")
hold on
plot(T,Y,"b")
grid on

% Dati [parte 2]

% Richieste [parte 2]
err = norm(sol(T)-Y, inf)

% Dati [parte 3]
a = 0.5;
b = t0;
toll = 1e-5;

% Richieste [parte 3]
alpha = bisezione(sol,a,b,toll)
