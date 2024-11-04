% Esercizio 01

% Dati
N = 50;
x1 = linspace(1,2,N);
x2 = linspace(0,5,N);

% Richieste
fx = (2*log(x1+2))./(sqrt(x1+1))
gx = (x2.^2 + 2*x2 + 1)./(x2.^2 + 1)

plot(x1,fx,x2,gx)

figure(2)
plot(x1,fx)
figure(3)
plot(x2,gx)
