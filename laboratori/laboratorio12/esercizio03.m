% Esercizio 03

% Dati [parte 1]
f = @(t,y) (y.^2) * (cos(t) - t);
sol = @(t) -1./(sin(t) - t.^2/2 - 3);
a = 0;
b = 5;
y0 = 1/3;
h = 0.005;
toll = 1e-6;
nitmax = 200;
dfy = @(t,y) 2*y*(cos(t) - t);

% Richieste [parte 1]
format short e

T = a:h:b;
y = sol(T);

[Tei,Yei] = eulero_implicito(f,T,y0,dfy,toll,nitmax);
norm(y - Yei', inf)

[Tcnm,Ycn] = crank_nicolson(f,T,y0,dfy,toll,nitmax);
norm(y - Ycn', inf)

% Dati [parte 2]

% Richieste [parte 2]
Iei = trapz(T,Yei)
Icn = trapz(T,Ycn)
integral(sol,a,b)
