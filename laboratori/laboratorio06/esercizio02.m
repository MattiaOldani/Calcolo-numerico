% Esercizio 02

% Dati
format long
x = [0.995:0.00001:1.005];

% Richieste
y1 = (x-1).^6;
y2 = x.^6 - 6*x.^5 + 15*x.^4 - 20*x.^3 + 15*x.^2 - 6*x + 1;

figure(1)
plot(x,y1)
figure(2)
plot(x,y2)
