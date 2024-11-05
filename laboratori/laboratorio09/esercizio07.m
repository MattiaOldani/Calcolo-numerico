% Esercizio 07

% Dati
n = 2;
f = @(x) (n*x.^5 - 1)./(x.^5 + 1);
x = linspace(0,1,10);
y = f(x);
a = 0;
b = 1;

% Richieste
I = integral(f,a,b)

Iapp = trapz(x,y)

s = griddedInterpolant(x,y,"linear");
z = nthroot(1/n, 5)
s(z)
