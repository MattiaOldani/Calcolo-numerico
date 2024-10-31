% Esercizio 07

% Dati
N = 100;
A = 4*eye(N) - diag(2*ones(1,N-1),1) - diag(2*ones(1,N-1),-1);

invA1 = [];

tic
for i = 1:N
    ei = zeros(N,1);
    ei(i) = 1;
    xi = A\ei;
    invA1 = [invA1 xi];
end
toc

invA2 = [];
[L,U,P] = lu(A);

tic
for i = 1:N
    ei = zeros(N,1);
    ei(i) = 1;
    yi = L\ei;
    xi = U\yi;
    invA2 = [invA2 xi];
end
toc

sum(sum(invA1 == invA2)) == N*N
