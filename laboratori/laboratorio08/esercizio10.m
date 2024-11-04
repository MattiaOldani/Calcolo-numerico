% Esercizio 10

% Dati
T = 0:5:35;
p = [1.5 1.9 2.4 3 3.7 4.6 5.6 6.9];

% Richieste
n = length(T) - 1
pi = polyfit(T,p,n)

plot(T,p,"ro")
hold on

x = linspace(min(T), max(T));
y = polyval(pi,x);
plot(x,y,"b")

polyval(pi, [8 16 24])
