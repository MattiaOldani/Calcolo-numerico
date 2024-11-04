% Esercizio 05

% Dati
f = @(x) (2*log(x+2))./(sqrt(x+1)) - (x.^2 + 2*x + 1)./(x.^2 + 1);
x1 = linspace(1,2);
op1 = "b--";
x2 = linspace(0,5);
op2 = "r--";

% Richieste
y1 = f(x1)
y2 = f(x2)

subplot(1,2,1)
plot(x1,y1,op1)

subplot(1,2,2)
plot(x2,y2,op2)
