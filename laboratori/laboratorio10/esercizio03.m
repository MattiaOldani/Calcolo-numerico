% Esercizio 03

% Dati
f = @(x) exp(-x) - sin(x);
g = @(x) (5*x.^3 - 8*x.^2 + x + 2).*sin(x);
a1 = -1;
b1 = 5;
a2 = -1;
b2 = 2;

% Richieste
figure(1)
x = linspace(a1,b1);
y = f(x);
plot(x,y)
grid on

[x,nit] = bisezione(f,a1,2,1e-5)
[x,nit] = bisezione(f,2,b1,1e-5)

figure(2)
x = linspace(a2,b2);
y = g(x);
plot(x,y)
grid on

[x,nit] = bisezione(g,a2,-0.3,1e-5)
[x,nit] = bisezione(g,-0.3,0.5,1e-5)
