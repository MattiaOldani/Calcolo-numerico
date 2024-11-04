% Esercizio 12

% Dati
x = -55:10:55;
y = [3.22 3.3 3.32 3.17 3.07 3.02 3.02 3.12 3.2 3.35 3.37 3.25];

% Richieste
pi = polyfit(x,y,length(x)-1)
rr = polyfit(x,y,1)

plot(x,y,"ko")
hold on

x = linspace(min(x), max(x));

yp = polyval(pi,x);
yr = polyval(rr,x);

plot(x,yp,"b")
plot(x,yr,"r")
grid on
