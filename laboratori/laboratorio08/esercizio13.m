% Esercizio 13

% Dati
x = 1975:5:1990;
y = [72.8 74.2 75.2 76.4];

% Richieste
rr = polyfit(x,y,1)

polyval(rr, [1970 1983 1998])

meanx = mean(x)
meany = mean(y)
polyval(rr,meanx)
