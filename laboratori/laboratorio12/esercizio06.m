% Esercizio 06

% Dati
F = @(t,y) [-3*y(1).*y(2); -t*y(1) + y(2)];
Y0 = [1 1];
a = 0;
b = 2;

% Richieste
format short e
[T,Y] = ode45(F,[a,b],Y0);

T(end-3)
Y(end-3,1)
Y(end-3,2)
