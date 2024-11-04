% Esercizio 03

% Dati [parte 1]
% f = @(x) ((x.^2 - 5*x + 6).*log(x))./x;
% x = [1 4];

% Richieste [parte 1]
% for i = 5:5:20
%     xs = linspace(min(x), max(x), i+1);
%     ys = f(xs);
%     p = polyfit(xs,ys,i);
% 
%     figure(i)
% %     plot(xs,ys,"o")
%     hold on
% 
%     x = linspace(min(x), max(x), 1000);
%     yf = f(x);
%     plot(x,yf,"b")
% 
%     yp = polyval(p,x);
%     plot(x,yp,"r")
%     grid on
% 
%     max(abs(yf - yp))
% end

% Dati [parte 2]
f = @(x) 1./(1 + x.^2);
x = [-5 5];

% Richieste [parte 2]
for i = 4:2:16
    xs = linspace(min(x), max(x), i+1);
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
