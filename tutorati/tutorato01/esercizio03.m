% Esercizio 03

% Dati [parte 1]
T = 0:10:70;
C = [41.4 36.3 22.2 19.89 12.1 6.9 4.5 0.3];

% Richieste [parte 1]
r = polyfit(T,C,1);
p = polyfit(T,C,length(T)-1);

plot(T,C,"ko")
hold on

x = linspace(0,70);
plot(x,polyval(r,x),"r")
plot(x,polyval(p,x),"g")
grid on

% Dati [parte 2]
t = 62;

% Richieste [parte 2]
rt = polyval(r,t)
rp = polyval(p,t)

% Dati [parte 3]

% Richieste [parte 3]
sr = sum(abs(C - polyval(r,T)).^2)
sp = sum(abs(C - polyval(p,T)).^2)

% Dati [parte 4]

% Richieste [parte 4]
intp = polyint(p)
area = polyval(intp,70) - polyval(intp,0)
