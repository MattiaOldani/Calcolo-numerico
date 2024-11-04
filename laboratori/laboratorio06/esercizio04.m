% Esercizio 04

% Dati
n = 20;
x = linspace(0,1);

% Richieste
for i = 0:n
    figure(1)
    f = i.^x;
    plot(x,f)
    hold on

    figure(2)
    g = x.^(1/i);
    plot(x,g)
    hold on
end

figure(1)
xlabel("x")
ylabel("f(x)")

figure(2)
xlabel("x")
ylabel("g(x)")
