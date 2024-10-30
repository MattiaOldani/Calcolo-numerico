% Esercizio 04

% Dati [parte 1]
x = 3;
e = exp(1);

% Richieste [parte 1]
y = e^(-2*x) * cos(3 * x) - 3 * sqrt(x + 1)
a = (e^2 * cos(pi/6) + 1) / (4 + log(3))

clear all

% Dati [parte 2]
s1 = -13;
e1 = 75;
st1 = 2;

s2 = -2.7;
e2 = 8.3;
st2 = 1.5;

s3 = -2;
e3 = 3;
N = 150;

% Richieste [parte 2]
r1 = [s1:st1:e1]
r2 = [s2:st2:e2]
r3 = linspace(s3,e3,N)

clear all

% Dati [parte 3]
x = [-1,2,3,8,10,5,-4,3];

% Richieste [parte 3]
x([1,3,4]) = [5,6,7]
x = [x [10,11,12]]
x([4:7]) = []

clear all

% Dati [parte 4]
n1 = 10;
n2 = 20;

% Richieste [parte 4]
x = prod([1:2:19].^(-1))

x = [1:20].^(-1);
y = [2:21].^(-1);
b1 = (y./x);
b1(end) = [];
b1 = sum(b1)

y = zeros(1,19) + x(1);
x(1) = [];
b2 = sqrt(prod(x + y))
