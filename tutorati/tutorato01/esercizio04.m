% Esercizio 04

% Dati [parte 1]
f = @(x) (2*sin(x).*cos(x))./(1 + x.^2);
x = linspace(0,2,10);
z = linspace(0,2,100);

% Richieste [parte 1]
p = polyfit(x,f(x),length(x)-1);
E = max(abs(f(z) - polyval(p,z)))

% Dati [parte 2]

% Richieste [parte 2]
dp = polyder(p);
dproots = roots(dp)

plot(z,polyval(p,z),"r")
hold on

plot(z,f(z),"g")
plot(z,polyval(dp,z),"b")
grid on
