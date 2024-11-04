% Esercizio 04

% Dati
nc = @(n,x) cos((pi*(2*x - 1)) / (2*n));

% Richieste
for n = 5:5:50
    figure(n/5)
    x = 1:n;
    y = nc(n,x);

    plot(x,y,"o")
    grid on
end
