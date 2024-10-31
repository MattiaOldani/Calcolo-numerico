% Esercizio 02

format long

% Dati
A = [-16 8 -7; 1 -5 -3; 1 10 14];
b = [-9; 4; -13];

% Richieste
x = A\b

inv(A) * b

x == (inv(A) * b)
