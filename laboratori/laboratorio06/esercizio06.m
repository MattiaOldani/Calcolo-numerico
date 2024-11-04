% Esercizio 06

% Dati
f = @(a,x) a.^x;
x = linspace(0,1);
N = 4;
colors = ["b" "g" "r" "c" "y"];

% Richieste
lg1 = [];
lg2 = [];
for i = 0:N
    figure(1)
    a = 2^i;
    plot(x,f(a,x))
    lg1 = [lg1 "f"+a];
    hold on

    figure(2)
    a = (1/2)^i;
    plot(x,f(a,x))
    lg2 = [lg2 "f"+a];
    hold on
end

figure(1)
legend(lg1)

figure(2)
legend(lg2)
