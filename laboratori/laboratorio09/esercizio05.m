% Esercizio 05

% Dati [parte 1]
f = @(x) sin(x);
m = [10 100 1000 10000];
a = 0;
b = pi/2;
H = (b-a)./m;
res = 1;

% Richieste [parte 1]
for i = 1:4
    cm = m(i);
    ch = H(i);
    x = linspace(a,b,cm+1);
    y = f(x);
    int = trapz(x,y)
    err = abs(int - res)
end

% Dati [parte 2]
g = @(x) cos(x).*exp(sin(x));
a = -10;
b = 10;
H = (b-a)./m;
res = exp(sin(10)) - exp(-sin(10));

% Richieste [parte 2]
for i = 1:4
    cm = m(i);
    ch = H(i);
    x = linspace(a,b,cm+1);
    y = g(x);
    int = trapz(x,y)
    err = abs(int - res)
end
