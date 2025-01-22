% TDE 2023

format short e

% Esercizio 01

% Richiesta 01.01
N = 20;
A = 4*eye(N) - 2*diag(ones(1,N-1), 1) - 2*diag(ones(1,N-1), -1);
b = (1:N)';

% Richiesta 01.02
detA = det(A);
autoval = eig(A);
maxa = max(autoval);
mina = min(autoval);

detA, maxa, mina

% Richiesta 01.03
[L,U,P] = lu(A);
normL = norm(L,2);
normL

% Richiesta 01.04
y = L\b;
x = U\y;

normx = norm(x,2);
normy = norm(y,2);
normx, normy

% Richiesta 01.05
z = (0:N-1) / (N-1);

s = griddedInterpolant(z, x, "linear");
s

plot(z,x,"r*")
hold on

xs = linspace(0,1);
ys = s(xs);

plot(xs,ys,"g")
grid on

smean = s(1/2);
smean

clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Esercizio 02

f = @(t,y) -y + exp(-t)*cos(t - pi/2);
dfy = @(t,y) -1;
ti = 0;
tf = 1;
y0 = -1;
esatta = @(t) exp(-t).*sin(t - pi/2);

% Richiesta 02.01
h = 0.01;
T = ti:h:tf;
toll = 1e-6;
nitmax = 200;

[T,Y] = eulero_implicito(f,T,y0,dfy,toll,nitmax);

% Richiesta 02.02
normI = norm(esatta(T) - Y, inf);
normI

% Richiesta 02.03
nf = @(t) exp(-t).*sin(t - pi/2) + t;

zero = fzero(nf, [0,1]);
zero

% Richiesta 02.04
It = trapz(T,Y);
I = integral(esatta, ti, tf);
err = abs(I - It);

It, I, err
