% Esercizio 04

% Dati
p1 = [7 -5];
p2 = [5 -3 8];
p3 = [3 -2 5 -1];
a = -2;
b = 5;

% Richieste
pp1 = polyint(p1);
polyval(pp1,b) - polyval(pp1,a)
(b-a)*polyval(p1, (a+b)/2)
(b-a)*(polyval(p1,a) + polyval(p1,b))/2
(b-a)*(polyval(p1,a) + 4*polyval(p1,(a+b)/2) + polyval(p1,b))/6

pp2 = polyint(p2);
polyval(pp2,b) - polyval(pp2,a)
(b-a)*(polyval(p2,a) + 4*polyval(p2,(a+b)/2) + polyval(p2,b))/6

pp3 = polyint(p3);
polyval(pp3,b) - polyval(pp3,a)
(b-a)*(polyval(p3,a) + 4*polyval(p3,(a+b)/2) + polyval(p3,b))/6
