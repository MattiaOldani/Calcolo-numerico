% Esercizio 01

% Dati
f = @(x) 1./(1 + x.^2);
xi = -5;
xf = 5;
m = [5 50 500];
H = 10./m;
x = linspace(xi,xf,10000);

% Richieste
for i = 1:3
    cH = H(i);
    cx = xi:cH:xf;
    s = griddedInterpolant(cx,f(cx),"linear");

    figure(i)
    yf = f(x);
    plot(x,yf,"b")
    hold on

    ys = s(x);
    plot(x,ys,"r")
    grid on

    err = max(abs(yf - ys));
    err/cH^2
end
