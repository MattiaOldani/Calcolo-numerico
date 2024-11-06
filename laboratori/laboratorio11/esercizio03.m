% Esercizio 03

% Dati [parte 1]
f = @(t,y) -2 * t * y^2;
a = 0;
b = 2;
y0 = 1;
sol = @(t) 1./(1 + t.^2);
h = [0.1 0.01 0.001 0.0001];

% Richieste [parte 1]
for i = 1:4
    T = a:h(i):b;
    [T,Y] = eulero(f,T,y0);
    y = sol(T);
    eh = max(abs(y - Y))
end

% Dati [parte 2]
f = @(t,y) -25*y;
a = 0;
b = 2;
y0 = 1;
sol = @(t) exp(-25*t);
h = [0.1 2/25 0.05];

% Richieste [parte 2]
x = linspace(a,b);
for i = 1:3
    T = a:h(i):b;
    [T,Y] = eulero(f,T,y0);

    figure(i)
    plot(T,Y,"b")
    hold on

    y = sol(x);
    plot(x,y,"r")
    grid on

    y = sol(T);
end

% Dati [parte 3]
f = @(t,y) -25*y;
a = 0;
b = 2;
y0 = 1;
sol = @(t) exp(-25*t);
h = [0.01 0.001 0.0001];

% Richieste [parte 2]
x = linspace(a,b);
for i = 1:3
    T = a:h(i):b;
    [T,Y] = eulero(f,T,y0);

    y = sol(T);
    eh = max(abs(y - Y))
end
