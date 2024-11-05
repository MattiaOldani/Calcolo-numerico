% Esercizio 01

% Dati [parte 1]
% e = exp(1);
% f1 = @(x) (e.^x).*cos(4*x);
% xi1 = 0;
% xf1 = pi;
% m1 = [5 50 500];
% H1 = pi./m1;
% x1 = linspace(xi1,xf1,10000);

% Richieste [parte 1]
% for i = 1:3
%     cH = H1(i);
%     cx = xi1:cH:xf1;
%     cy = f1(cx);
%     s = griddedInterpolant(cx, cy, "linear");
% 
%     figure(i)
%     plot(cx,cy,"ko");
%     hold on
% 
%     yf = f1(x1);
%     plot(x1,yf, "b");
% 
%     ys = s(x1);
%     plot(x1,ys, "r");
%     grid on
% 
%     err = max(abs(yf - ys))
%     err/cH^2
% end

% Dati [parte 2]
f2 = @(x) sqrt(abs(x));
xi2 = -1;
xf2 = 1;
m2 = [5 50 500];
H2 = 2./m2;
x2 = linspace(xi2,xf2,10000);

% Richieste [parte 2]
for i = 1:3
    cH = H2(i);
    cx = xi2:cH:xf2;
    cy = f2(cx);
    s = griddedInterpolant(cx, cy, "linear");

    figure(i)
    plot(cx,cy,"ko");
    hold on

    yf = f2(x2);
    plot(x2,yf, "b");
    
    ys = s(x2);
    plot(x2,ys, "r");
    grid on

    err = max(abs(yf - ys))
    err/cH^2
end
