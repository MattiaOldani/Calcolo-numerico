% Esercizio 05

% Dati [parte 1]
A1 = [4 -1 0; -1 4 -1; 0 -1 4];
A2 = [-5 4 1; 4 -6 -2; 1 -2 -8];
A3 = [1 1/2 1/3; 1/2 1/3 1/4; 1/3 1/4 1/5];
A4 = [4 0 7; 1 5 0; -4 5 8];

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

% Richieste [parte 2]
r2 = max(abs(eig(B2))) < 1
r3 = max(abs(eig(B3))) < 1
r4 = max(abs(eig(B4))) < 1

% Dati [parte 3]
b = [1; 0; -1];
x0 = zeros(3,1);
toll = 1e-6;
nitmax = 200;

% Richieste [parte 4]
% Errore stampato in gauss_seidel
[sol,it] = gauss_seidel(A2,b,x0,toll,nitmax)
A2\b

[sol,it] = gauss_seidel(A4,b,x0,toll,nitmax)
A4\b
