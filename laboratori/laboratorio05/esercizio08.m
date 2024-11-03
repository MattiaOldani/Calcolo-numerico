% Esercizio 08

% Dati [parte 1]
A1 = [-1 5 -8; 3 0.7 -4; 0 -17 2];
A2 = [-8 5 -1; 3 11 -4; 0 2 -17];
A3 = [8 4 4; 21 22 1; 2 4 6];
A4 = [1 -1 0; -1 2 -0.5; 0 -0.5 0.6];

% Richieste [parte 2]
flag = true;
for i = 1:3
    flag = flag && (abs(A1(i,i)) > sum(abs(A1(i,:))) - abs(A1(i,i)));
end
flag

flag = true;
for i = 1:3
    flag = flag && (abs(A2(i,i)) > sum(abs(A2(i,:))) - abs(A2(i,i)));
end
flag

flag = true;
for i = 1:3
    flag = flag && (abs(A3(i,i)) > sum(abs(A3(i,:))) - abs(A3(i,i)));
end
flag

flag = true;
for i = 1:3
    flag = flag && (abs(A4(i,i)) > sum(abs(A4(i,:))) - abs(A4(i,i)));
end
flag

% Dati [parte 2]
b = [1; 0; -1];
x0 = zeros(3,1);
toll = 1e-6;
nitmax = 200;

% Richieste [parte 2]
[x,it] = jacobi(A2,b,x0,toll,nitmax)
A2\b
