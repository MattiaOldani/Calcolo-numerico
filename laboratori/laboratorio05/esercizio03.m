% Esercizio 3

% Dati [parte 1]
A1 = [3 0 4; 7 4 2; 1 1 2];
b1 = A1 * ones(3,1);
x0 = [4;5;7];

% Richieste [parte 1]
[sol1,it1] = jacobi(A1,b1,x0,0.05,100)
[sol2,it2] = gauss_seidel(A1,b1,x0,0.05,100)

clear all

% Dati [parte 2]
A2 = [-3 3 -6; -4 7 -8; 5 7 -9];
b2 = A2 * ones(3,1);
x0 = [4;5;7];

% Richieste [parte 2]
[sol1,it1] = jacobi(A2,b2,x0,0.05,100)
[sol2,it2] = gauss_seidel(A2,b2,x0,0.05,100)

clear all

% Dati [parte 3]
A3 = [4 1 1; 2 -9 0; 0 -8 -6];
b3 = A3 * ones(3,1);
x0 = [4;5;7];

% Richieste [parte 3]
[sol1,it1] = jacobi(A3,b3,x0,0.05,100)
[sol2,it2] = gauss_seidel(A3,b3,x0,0.05,100)

clear all

% Dati [parte 4]
A4 = [7 6 9; 4 5 -4; -7 3 8];
b4 = A4 * ones(3,1);
x0 = [1;1;4];

% Richieste [parte 3]
[sol1,it1] = jacobi(A4,b4,x0,0.05,100)
[sol2,it2] = gauss_seidel(A4,b4,x0,0.05,100)
