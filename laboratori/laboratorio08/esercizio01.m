% Esercizio 01

% Dati [parte 1]
x1 = [-2 1 2 7];
y1 = [-4 -1 0.5 3];

% Richieste [parte 1]
n = length(x1) - 1;
p1 = polyfit(x1, y1, n)

figure(1)
plot(x1,y1,"o")
hold on

x = linspace(min(x1), max(x1));
y = polyval(p1,x);
plot(x,y)
grid on

% Dati [parte 2]
x2 = [-5 -3 -1 1 3 5];
y2 = [0.1 -0.5 0.5 1.1 0.9 -2];

% Richieste [parte 2]
n = length(x2) - 1;
p2 = polyfit(x2, y2, n)

figure(2)
plot(x2,y2,"o")
hold on

x = linspace(min(x2), max(x2));
y = polyval(p2,x);
plot(x,y)
grid on
