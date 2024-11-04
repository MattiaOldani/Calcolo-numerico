% Esercizio 11

% Dati
f = @(k,x) cos(k * pi * x);
x = linspace(-1,1);

for k = 1:3
    figure(k)
    plot(x,f(k,x))
    title("Funzione f" + k)
    xlabel("x")
    ylabel("y")
end
