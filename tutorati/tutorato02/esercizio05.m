% Esercizio 05

format short e

% Dati [parte 1]
f = @(x) sin(x + exp(x)) - 7/12;
a = 0;
b = 1;
df = @(x) cos(x + exp(x)).*(1 + exp(x));
x0 = 1;
toll = 1e-6;
nitmax = 200;

% Richieste [parte 1]
alpha = newton(f,df,x0,toll,nitmax)

% Dati [parte 2]

% Richieste [parte 2]
xmax = fzero(df,[a,b])
ymax = f(xmax)

% Dati [parte 3]

% Richieste [parte 3]
x = linspace(a,b);

plot(x,f(x),"b")
hold on

plot(x,df(x),"r")
legend("f(x)", "f'(x)")

grid on

% Dati [parte 4]
h = [0.1 0.01];

% Richieste [parte 4]
for i = 1:2
    z = a:h(i):b;

    s = griddedInterpolant(z,f(z),"linear");
    sxmax = s(xmax)
    err = abs(ymax - sxmax)
end
