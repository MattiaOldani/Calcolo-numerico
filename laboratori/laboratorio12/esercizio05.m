% Esercizio 05

% Dati [parte 1]
f = @(t,y) -11*y + t^3 - 11/3*t;
sol = @(t) (11/2 + 6/11^4 - 1/33) * exp(-11*t) + (t.^3)/11 - (3*t.^2)/11^2 + (6/11^3 - 1/3)*t - 6/11^4 + 1/33;
a = 0;
b = 2;
y0 = 11/2;
toll = 1e-6;
nitmax = 100;
h = [0.1 0.01 0.001 0.0001];
dfy = @(t,y) -11;

% Richieste [parte 1]
format short e
for i = 1:4
    T = a:h(i):b;
    [Tcn,Ycn] = crank_nicolson(f,T,y0,dfy,toll,nitmax);

    Ye = sol(T);
    err = norm(Ye-Ycn', inf)
end
