% Esercizio 01

% Dati [parte 1]
start = 28;
end_ = 80;

% Richieste [parte 1]

r1 = [start:end_]

clear all

% Dati [parte 2]
start = 22;
end_ = -10;
step = -4;

% Richieste [parte 2]

r1 = [start:step:end_]

clear all

% Dati [parte 3]
start = -1;
end_ = 5;
N = 125;

% Richieste [parte 3]
r1 = linspace(start, end_, N)

clear all

% Dati [parte 4]
u = [1,0,2,-3];
v = [3;0;2;1];

% Richieste [parte 4]
z = u.*v
w = u.^v
y = z./w

clear all

% Dati [parte 5]
start = 1;
end_ = 2;
N = 11;

r1 = linspace(start, end_, N);

% Richieste [parte 5]

r2 = r1.*log(r1)
r3 = (r1.^3)./cos(r1)
