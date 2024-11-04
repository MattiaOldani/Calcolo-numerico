% Esercizio 06

% Dati
x = 0:10;
y = [0 1.25 2.27 3.04 3.77 4.71 5.91 7.19 8.29 9.12 9.83];

% Richieste
p = polyfit(x,y,1);

plot(x,y,"ro")
hold on

x = linspace(0,10);
y = polyval(p,x);
plot(x,y,"k")

axis([-1 11 0 10])
grid on
