% Esercizio 13

% Dati
A = hilb(5);

% Richieste
tril(A), tril(A,1), tril(A,-1), tril(A,2), tril(A,-3)
triu(A), triu(A,1), triu(A,-1), triu(A,3), triu(A,-2)
diag(A), diag(A,1), diag(A,-1), diag(A,4), diag(A,-2)
diag(diag(A)), diag(diag(A,2))
diag(diag(A,2),2), diag(diag(A),2)
