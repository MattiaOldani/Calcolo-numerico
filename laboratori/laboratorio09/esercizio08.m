% Esercizio 08

% Dati [parte 1]
f = @(x) 1./cos(x);
a = 0;
b = pi/4;
res = log(sqrt(2) + 1);
m = [10 100 1000 10000];
H = (b-a)./m;

for i = 1:4
    cm = m(i);
    
    x = linspace(a,b,cm+1);
    y = f(x);

    intpm = punto_medio(a,b,cm,f)
    inttr = trapz(x,y)
    intcs = cavalieri_simpson(a,b,cm,f)

    % Errori sono troppi
end
