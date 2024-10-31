% Esercizio 03

% Dati [parte 1]
A1 = [1 1 1; 2 2 2; 3 3 3];
b1 = [1; 1; 1];

% Richieste [parte 1]
det1 = det(A1)
r1 = rank(A1)
ro1 = rank([A1 b1])
sol1 = A1\b1

% Dati [parte 2]
A2 = [1 2 3; 4 5 6; 5 7 9];
b2 = [1; 2; 3];

% Richieste [parte 2]
det2 = det(A2)
r2 = rank(A2)
ro2 = rank([A2 b2])
sol2 = A2\b2
check2 = A2*sol2
check2 == b2

% Dati [parte 3]
A3 = [1 2 3; 4 5 6; 5 7 9];
b3 = [5; 2; 3];

% Richieste [parte 3]
det3 = det(A3)
r3 = rank(A3)
ro3 = rank([A3 b3])
sol3 = A3\b3
check3 = A3*sol3
check3 == b3
