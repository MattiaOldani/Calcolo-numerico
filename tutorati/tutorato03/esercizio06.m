% Esercizio 06

% Dati [parte 1]
f = @(x) (x.^2)./(1 + x.^2);
a = -4;
b = 4;
n = 10;

% Richieste [parte 1]
x = linspace(a,b,n+1);
y = f(x);
p = polyfit(x,y,n)

figure(1)
plot(x,y,"ko")
hold on

z = linspace(a,b);
plot(z,f(z),"g")
plot(z,polyval(p,z),"r")
grid on

E = max(abs(f(z) - polyval(p,z)))

% Dati [parte 2]
k = 1:n+1;
ck = 4*cos(pi*(2*k-1)/(2*n+2));

% Richieste [parte 2]
y = f(ck);
p = polyfit(ck,y,n)

figure(2)
plot(ck,y,"ko")
hold on

z = linspace(a,b);
plot(z,f(z),"g")
plot(z,polyval(p,z),"r")
grid on

E = max(abs(f(z) - polyval(p,z)))
