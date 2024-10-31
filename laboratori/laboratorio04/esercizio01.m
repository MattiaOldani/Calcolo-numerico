% Esercizio 01

n = input("Inserisci dimensione della matrice: ");
A = zeros(n,n);

for i = 1:n
    for j = i+1:n
        A(i,j) = i / (j+1);
    end
    A(i,i) = n;
end

A
