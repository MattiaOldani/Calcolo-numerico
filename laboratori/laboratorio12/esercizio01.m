% Esercizio 01

% Dati
f = @(t,y) t^2 * (1 - 3*y);
a = 0;
b = 2;
y0 = 2;
sol = @(t) 1/3 * (1 + 5*exp(-t.^3));
h = [0.5 0.05 0.005 0.0005];
dfy = @(t,y) -3*t^2;

% Richieste
for i = 1:4
    T = a:h(i):b;

    [T,U] = crank_nicolson(f,T,y0,dfy);

    figure(i)
    plot(T,U,"r")
    hold on

    x = linspace(a,b);
    y = sol(x);
    plot(x,y,"g")
    grid on

    ye = sol(T);
    err = max(abs(ye - U))
end
