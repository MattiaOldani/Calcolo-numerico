% Esercizio 05

% Dati [parte 1]
f = @(x) exp(-x).*sin(x);
df = @(x) exp(-x).*cos(x) - exp(-x).*sin(x);
a = -1;
b = 5;
toll = 1e-6;
nitmax = 100;

% Richieste [parte 1]
figure(1)
x = linspace(a,b);
y = f(x);
plot(x,y)
grid on

[x,nit] = newton(f,df,-0.5,toll,nitmax)
[x,nit] = newton(f,df,2,toll,nitmax)

% Dati [parte 2]
f = @(x) ((x-1).^2).*(x + 2/5);
df = @(x) 2*(x-1).*(x + 2/5) + (x-1).^2;
a = -1;
b = 2;
toll = 1e-6;
nitmax = 100;

% Richieste [parte 2]
figure(2)
x = linspace(a,b);
y = f(x);
plot(x,y)
grid on

[x,nit] = newton(f,df,-1,toll,nitmax)
[x,nit] = newton(f,df,0.5,toll,nitmax)
