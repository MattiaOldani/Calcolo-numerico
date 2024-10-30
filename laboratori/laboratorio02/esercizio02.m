% Esercizio 02

% Dati [parte 1]
x = [-3,5,8,0,1,5,-2,4];

% Richieste [parte 1]
x(6) = 100

x(1:3) = [4,7,-1]

x(4) = []

x = [(1:3) x]

clear all

% Dati [parte 2]
start = 1;
end_ = 10;

% Richieste [parte 2]
r1 = sin([start:end_].^2)

max = max(r1)
min = min(r1)

clear all

% Dati [parte 3]
first = 55;
second = 385;
end_ = 10;

% Richieste [parte 3]
r1 = sum([1:10]) == first
r2 = sum([1:10].^2) == second

clear all

% Dati [parte 4]
end_ = 100;
a = [1:end_].^(-1)

% Richieste
r1 = sum(a)

b = diff(a)
r2 = (a(end) - 1) == sum(b)
