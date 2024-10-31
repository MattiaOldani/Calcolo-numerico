% Esercizio 12

% Dati
A = [-5 8 -7 1; 12 -5 -3 1; 1 10 14 1; 1 0 1 2];

% Richieste
[L,U,P] = lu(A)

invA = [];
for i = 1:4
    ei = zeros(4,1);
    ei(i) = 1;
    yi = L\(P * ei);
    xi = U\yi;
    invA = [invA xi];
end

invA
A*invA
invA*A
