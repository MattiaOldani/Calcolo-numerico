% Esercizio 06

% Dati [parte 1]
f = @(x) 1./x + exp(x);
a = 1;
b = 2;
res = log(2) + exp(1)^2 - exp(1)
m = [10 100 1000 10000];
H = (b-a)./m;

% Richieste [parte 1]
for i = 1:4
    cm = m(i);

    intcs = cavalieri_simpson(a,b,cm,f)
    intpm = punto_medio(a,b,cm,f)
    err = abs(intcs - res)
    err = abs(intpm - res)
end

% Dati [parte 2]
g = @(x) 1./(1 + x.^2);
a = 0;
b = 5;
res = atan(5)
H = (b-a)./m;

% Richieste [parte 2]
for i = 1:4
    cm = m(i);

    intcs = cavalieri_simpson(a,b,cm,g)
    intpm = punto_medio(a,b,cm,g)
    err = abs(intcs - res)
    err = abs(intpm - res)
end
