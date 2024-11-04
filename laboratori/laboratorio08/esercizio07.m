% Esercizio 07

% Dati
x = [-5 -2 0.5 1 1.5 3 6];
y = [1.5 2 -1 2.5 1 -2 3];

% Richieste
p = polyfit(x,y,1);

plot(x,y,"o")
hold on

x = linspace(min(x), max(x));
y = polyval(p,x);
plot(x,y,"b")
grid on

meanx = mean(x);
meany = mean(y);
meanx, meany
polyval(p,meanx)
