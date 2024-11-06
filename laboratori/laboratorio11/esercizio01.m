% Esercizio 01

% Dati [parte 1]
f = @(t,y) -2 * t * y^2;
sol = @(t) 1./(1 + t.^2);
a = 0;
b = 2;
y0 = 1;

% Richieste [parte 1]
[T U] = ode45(f, [a b], y0)

figure(1)
plot(T,U,"b")
hold on

yex = sol(T);
plot(T,yex,"r")
grid on

norm(yex - U, inf)

% Dati [parte 2]
f = @(t,y) -25*y;
sol = @(t) exp(-25*t);
a = 0;
b = 2;
y0 = 1;

% Richieste [parte 2]
[T U] = ode45(f, [a b], y0)

figure(2)
plot(T,U,"b")
hold on

yex = sol(T);
plot(T,yex,"r")
grid on

norm(yex - U, inf)
