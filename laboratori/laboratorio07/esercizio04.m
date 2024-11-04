% Esercizio 04

% Dati
p = [3 -1 15 5];
xp = [-2 2];
q = [12 -15 -40 0 0 0];
xq = [-1.5 2.5];
w = [1 -4 -10 26 -11 30];
xw = [-3 5];

% Richieste
figure(1)
pder = polyder(p);
proots = roots(pder)
x = linspace(xp(1), xp(2));
plot(x, polyval(p,x))
grid on

figure(2)
qder = polyder(q);
qroots = roots(qder)
x = linspace(xq(1), xq(2));
plot(x, polyval(q,x))
grid on

figure(3)
wder = polyder(w);
wroots = roots(wder)
x = linspace(xw(1), xw(2));
plot(x, polyval(w,x))
grid on
