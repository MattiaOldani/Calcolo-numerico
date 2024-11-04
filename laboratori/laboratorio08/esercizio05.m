% Esercizio 05

% Dati
f = @(x) 1./(1 + x.^2);
x = [-5 5];

% Richieste
for i = 4:2:16
    np = i+1;
    ind = 1:np;
    xs = 5*cos(pi*(2*ind-1) / (2*np));
    ys = f(xs);
    p = polyfit(xs,ys,i);

    figure(i)
    plot(xs,ys,"o")
    hold on

    x = linspace(min(x), max(x), 1000);
    yf = f(x);
    plot(x,yf,"b")

    yp = polyval(p,x);
    plot(x,yp,"r")
    grid on

    max(abs(yf - yp))
end
