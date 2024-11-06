% Esercizio 02

% Dati
f = @(t,y) t*(2+t) - y;
a = 0;
b = 2;
y0 = 1;
sol = @(t) t.^2 + exp(-t);
h = [0.5 0.25 0.125];
x = linspace(0,2);
color = ["g" "b" "r"];

% Richieste
for i = 1:3
    T = a:h(i):b;
    [T,Y] = eulero(f,T,y0);
    
    plot(T,Y,color(i))
    hold on
    
    y = sol(x);
    c = color(i);
    plot(x,y,"k")
    grid on
    
    y = sol(T);
    eh = max(abs(y - Y))
end
