% Esercizio 03

% Dati
x1 = linspace(0,2.5);
x2 = linspace(-3,1.5);
op1 = "r";
op2 = "b";

% Richieste
e = exp(1);
f1 = sin(e.^x1)
f2 = (x2.^3 - 3*x2 + 2).*(e.^x2);

figure(1)
plot(x1,f1,op1)
grid on
title("Prima funzione")

figure(2)
plot(x2,f2,op2)
grid on
title("Seconda funzione")
