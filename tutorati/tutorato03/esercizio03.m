% Esercizio 03

% Dati [parte 1]
T = 0:10:70;
C = [96.4 46.3 21.2 17.89 10.1 6.9 3.5 1.9];

% Richieste [parte 1]
r = polyfit(T,C,1);
s1 = griddedInterpolant(T,C,"linear");
p = polyfit(T,C,length(T)-1);

plot(T,C,"ko")
hold on

x = linspace(0,70);

plot(x,polyval(r,x),"r")
plot(x,s1(x),"b")
plot(x,polyval(p,x),"g")
grid on

legend("NDQ", "RR", "SLI", "PI")

% Dati [parte 2]
t = 62;

% Richieste [parte 2]
yr = polyval(r,t)
ys = s1(t)
yp = polyval(p,t)

% Dati [parte 3]

% Richieste [parte 3]
sr = sum(abs(C - polyval(r,T)).^2)
sp = sum(abs(C - polyval(p,T)).^2)

% Dati [parte 4]
a = 0;
b = 70;

% Richieste [parte 4]
pp = polyint(p);
I = polyval(pp,b) - polyval(pp,a)
