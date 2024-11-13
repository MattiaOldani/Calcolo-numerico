% Esercizio 06

% Dati [parte 1]
g = @(x) (x.^2)./(1 + x.^2);
a = -4;
b = 4;
n = 10;

% Richieste [parte 1]
x = linspace(a,b,n+1);

p = polyfit(x,g(x),n);

figure(1)
plot(x,g(x),"ko")
hold on

z = linspace(a,b);
plot(z,g(z),"g")
plot(z,polyval(p,z),"r")
grid on

E = max(abs(g(z) - polyval(p,z)))

% Dati [parte 2]
k = 1:n+1;
ck = 4*cos(pi*(2*k - 1) / (2*n + 2))

% Richieste [parte 2]
p = polyfit(ck,g(ck),n);

figure(2)
plot(ck,g(ck),"ko")
hold on

z = linspace(a,b);
plot(z,g(z),"g")
plot(z,polyval(p,z),"r")
grid on

E = max(abs(g(z) - polyval(p,z)))
