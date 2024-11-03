% Esercizio 04

% Dati [parte 1]
A1 = [-22 8 13; 5 7 -1; -4.5 2 -9];
A2 = [1 -1 0.5; -1 2 -0.3; 0.5 -0.3 0.4];
A3 = [1 0 -1; -1 3 -0.1; 0.5 0.4 1];
A4 = [1 -3 2.5; 4 -7 2; -8 11 5];

% Richieste [parte 1]
flag1 = true;
for i = 1:3
    flag1 = flag1 && (abs(A1(i,i)) > sum(abs(A1(i,:))) - abs(A1(i,i)));
end
flag1

flag2 = true;
for i = 1:3
    flag2 = flag2 && (abs(A2(i,i)) > sum(abs(A2(i,:))) - abs(A2(i,i)));
end
flag2

flag3 = true;
for i = 1:3
    flag3 = flag3 && (abs(A3(i,i)) > sum(abs(A3(i,:))) - abs(A3(i,i)));
end
flag3

flag4 = true;
for i = 1:3
    flag4 = flag4 && (abs(A4(i,i)) > sum(abs(A4(i,:))) - abs(A4(i,i)));
end
flag4

% Dati [parte 2]
D2 = diag(diag(A2));
E2 = -tril(A2,-1);
F2 = -triu(A2,1);
B2 = D2\(E2+F2);

D3 = diag(diag(A3));
E3 = -tril(A3,-1);
F3 = -triu(A3,1);
B3 = D3\(E3+F3);

D4 = diag(diag(A4));
E4 = -tril(A4,-1);
F4 = -triu(A4,1);
B4 = D4\(E4+F4);

% Richiest [parte 2]
r2 = max(abs(eig(B2))) < 1
r3 = max(abs(eig(B3))) < 1
r4 = max(abs(eig(B4))) < 1

% Dati [parte 3]
b3 = [1; 0; -1];
x0 = zeros(3,1);
toll = 1e-6;
nitmax = 200;

% Richieste [parte 3]
% Errore stampato in jacobi
[sol,it] = jacobi(A3,b3,x0,toll,nitmax)
A3\b3
