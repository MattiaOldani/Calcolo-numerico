% Esercizio 08

% Dati [parte 1]
N = 10;
A = 4*eye(N) - diag(ones(1,N-1),1) - diag(ones(1,N-1),-1);

% Richieste [parte 1]
[L,U,P] = lu(A)
figure(1)
spy(L)
figure(2)
spy(U)

clear all

% Dati [parte 2]
N = 10;
B = 3*eye(N) - diag(2*ones(1,N-1),1) - diag(2*ones(1,N-1),-1);

% Richieste [parte 2]
[L,U,P] = lu(B)
figure(3)
spy(L)
figure(4)
spy(U)

clear all

% Dati [parte 3]
N = 10;
C = 2*eye(N);
C(2:N,1) = 0.1;
C(1,2:N) = 0.1;

% Richieste [parte 3]
[L,U,P] = lu(C)
figure(5)
spy(L)
figure(6)
spy(U)

clear all

% Dati [parte 4]
N = 7;
D = eye(N);
D(1:N-1,N) = 1;
D(N,1:N) = [2:N+1];

% Richieste [parte 4]
[L,U,P] = lu(D)
figure(7)
spy(L)
figure(8)
spy(U)
