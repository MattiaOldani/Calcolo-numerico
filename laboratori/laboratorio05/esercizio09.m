% Esercizio 09

% Dati [parte 1]
A1 = [1 4 -0.5; 8 -2 3; 0.7 4 3];
A2 = [9 0 8; 21 23 1; 6 0 -7];
A3 = [5 -4 0; -4 6 1; -1 8 10];
A4 = [1 -0.7 0.4; -0.7 1.7 -0.5; 0.4 -0.5 0.6];

% Richieste [parte 1]
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
[x2gs, it2gs] = gauss_seidel(A2,b,x0,toll,nitmax)
A2\b

[x3gs, it3gs] = gauss_seidel(A3,b,x0,toll,nitmax)
A3\b
