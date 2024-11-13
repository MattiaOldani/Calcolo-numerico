% Esercizio 01

format short e

% Dati [parte 1]
f = @(t,y) -y;
a = 0;
b = 3;
y0 = 1;
sol = @(t) exp(-t);
h = [0.1 0.01 0.001 0.0001];

% Richieste [parte 1]
for i = 1:4
    T = a:h(i):b;
    [T,Y] = eulero(f,T,y0);
    err = norm(sol(T)-Y, inf)
end

% Dati [parte 2]
F = @(t,y) [-2*y(2); -y(1) + y(2)];
a = 0;
b = 3;
Y0 = [2; 1];

% Richieste [parte 2]
[T,Y] = ode45(F,[a,b],Y0);

T(end-1)
Y(end-1,1)
Y(end-1,2)
