% TDE 2022

format short e

% Esercizio 01

f = @(x) sin(x + exp(x)) - 7/12;
df = @(x) cos(x + exp(x)).*(1 + exp(x));

% Richiesta 01.01
x0 = 1;
toll = 1e-6;
nitmax = 200;

alpha = newton(f, df, x0, toll, nitmax);
alpha

% Richiesta 01.02
xmax = fzero(df, [0,1]);
xmax
fxmax = f(xmax);
fxmax

% Richiesta 01.03
x = linspace(0,1);
yf = f(x);
ydf = df(x);

plot(x,yf,"r", x,ydf,"b")
legend("f", "df")
grid on

% Richiesta 01.04
H = [0.1 0.01];
xi = 0;
xf = 1;

for i = 1:length(H)
    h = H(i);
    disp("Valore di h: " + h);
    z = xi:h:xf;

    s = griddedInterpolant(z,f(z),"linear");
    s

    sxmax = s(xmax);
    sxmax

    err = abs(fxmax - sxmax);
    err
end

clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Esercizio 02

f = @(t,y) (-(y.^2)).*(cos(t) + exp(t));
ti = 0;
tf = 1;
y0 = 1;
esatta = @(t) 1./(sin(t) + exp(t));

% Richiesta 02.01
h = 0.001;
T = ti:h:tf;

[T,Y] = eulero(f, T, y0);

% Richiesta 02.02
figure(2);

plot(T,Y,"r", T,esatta(T),"g")
legend("eulero", "esatta")
grid on

yfin = Y(end);
yfin

% Richiesta 02.03
einf = norm(esatta(T) - Y, inf);
einf

% Richiesta 02.04
It = trapz(T,Y);
I = integral(esatta, ti, tf);
err = abs(I - It);

It, I, err
