% Esercizio 04

% Dati [parte 1]
% f = @(t,y) -2 * t * y^2;
% a = 0;
% b = 2;
% y0 = 1;
% sol = @(t) 1./(1 + t.^2);
% h = [0.1 0.01 0.001 0.0001];

% Richieste [parte 1]
% for i = 1:4
%     T = a:h(i):b;
%     [T,Y] = heun(f,T,y0);
% 
%     figure(i)
%     plot(T,Y,"r")
%     hold on
% 
%     x = linspace(a,b);
%     y = sol(x);
%     plot(x,y,"b")
%     grid on
% 
%     y = sol(T);
%     eh = max(abs(y - Y))
% end

% Dati [parte 2]
f = @(t,y) -25*y;
a = 0;
b = 2;
y0 = 1;
sol = @(t) exp(-25*t);
h = [0.1 0.01 0.001 0.0001];

% Richieste [parte 2]
for i = 1:4
    T = a:h(i):b;
    [T,Y] = heun(f,T,y0);

    figure(i)
    plot(T,Y,"r")
    hold on

    x = linspace(a,b);
    y = sol(x);
    plot(x,y,"b")
    grid on

    y = sol(T);
    eh = max(abs(y - Y))
end
