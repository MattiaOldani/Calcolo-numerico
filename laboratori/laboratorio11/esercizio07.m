% Esercizio 07

% Dati [parte 1]
% f = @(t,y) t^2 * (1 - 3*y);
% dfy = @(t,y) -3*t^2;
% a = 0;
% b = 2;
% y0 = 2;
% sol = @(t) 1/3 * (1 + 5*exp(-t.^3));
% h = [0.1 0.01 0.001];

% Richieste [parte 1]
% for i = 1:3
%     T = a:h(i):b;
% 
%     [Tee,Yee] = eulero(f,T,y0);
%     [Tei,Yei] = eulero_implicito(f,T,y0,dfy,1e-12,200);
%     [Th,Yh] = heun(f,T,y0);
% 
%     ye = sol(T);
% 
%     erree = max(abs(Yee' - ye))
%     errei = max(abs(Yei' - ye))
%     errh = max(abs(Yh' - ye))
% 
%     figure(i)
% 
%     plot(Tee,Yee,"r")
%     hold on
%     plot(Tei,Yei,"b")
%     plot(Th,Yh,"g")
% 
%     plot(T,ye,"k")
%     grid on
% end

clear all

% Dati [parte 2]
% f = @(t,y) y/t + (y/t).^2;
% dfy = @(t,y) 1/t + 2*y/t^2;
% a = exp(1);
% b = exp(1)+2;
% y0 = exp(1);
% sol = @(t) t./(2 - log(t));
% h = [0.1 0.01 0.001];

% Richieste [parte 2]
% for i = 1:3
%     T = a:h(i):b;
% 
%     [Tee,Yee] = eulero(f,T,y0);
%     [Tei,Yei] = eulero_implicito(f,T,y0,dfy,1e-12,200);
%     [Th,Yh] = heun(f,T,y0);
% 
%     ye = sol(T);
% 
%     erree = max(abs(Yee' - ye))
%     errei = max(abs(Yei' - ye))
%     errh = max(abs(Yh' - ye))
% 
%     figure(i)
% 
%     plot(Tee,Yee,"r")
%     hold on
%     plot(Tei,Yei,"b")
%     plot(Th,Yh,"g")
% 
%     plot(T,ye,"k")
%     grid on
% end

clear all

% Dati [parte 3]
% f = @(t,y) -1/t * (2*y + t^2*y.^2);
% dfy = @(t,y) -1/t * (2 + 2*t^2*y);
% a = 1;
% b = 5;
% y0 = 1;
% sol = @(t) 1./(t.^2.*(1 + log(t)));
% h = [0.1 0.01 0.001];

% Richieste [parte 4]
% for i = 1:3
%     T = a:h(i):b;
% 
%     [Tee,Yee] = eulero(f,T,y0);
%     [Tei,Yei] = eulero_implicito(f,T,y0,dfy,1e-12,200);
%     [Th,Yh] = heun(f,T,y0);
% 
%     ye = sol(T);
% 
%     erree = max(abs(Yee' - ye))
%     errei = max(abs(Yei' - ye))
%     errh = max(abs(Yh' - ye))
% 
%     figure(i)
% 
%     plot(Tee,Yee,"r")
%     hold on
%     plot(Tei,Yei,"b")
%     plot(Th,Yh,"g")
% 
%     plot(T,ye,"k")
%     grid on
% end

clear all

% Dati [parte 4]
% f = @(t,y) -y.^2;
% dfy = @(t,y) -2*y;
% a = 0;
% b = 10;
% y0 = 5;
% sol = @(t) 5./(1 + 5*t);
% h = [0.1 0.01 0.001];

% Richieste [parte 4]
% for i = 1:3
%     T = a:h(i):b;
% 
%     [Tee,Yee] = eulero(f,T,y0);
%     [Tei,Yei] = eulero_implicito(f,T,y0,dfy,1e-12,200);
%     [Th,Yh] = heun(f,T,y0);
% 
%     ye = sol(T);
% 
%     erree = max(abs(Yee' - ye))
%     errei = max(abs(Yei' - ye))
%     errh = max(abs(Yh' - ye))
% 
%     figure(i)
% 
%     plot(Tee,Yee,"r")
%     hold on
%     plot(Tei,Yei,"b")
%     plot(Th,Yh,"g")
% 
%     plot(T,ye,"k")
%     grid on
% end

clear all

% Dati [parte 5]
f = @(t,y) y/t + pi*t*cos(pi*t);
dfy = @(t,y) 1/t;
a = 1;
b = 3;
y0 = 0;
sol = @(t) t.*sin(pi*t);
h = [0.1 0.01 0.001];

% Richieste [parte 5]
for i = 1:3
    T = a:h(i):b;

    [Tee,Yee] = eulero(f,T,y0);
    [Tei,Yei] = eulero_implicito(f,T,y0,dfy,1e-12,200);
    [Th,Yh] = heun(f,T,y0);

    ye = sol(T);

    erree = max(abs(Yee' - ye))
    errei = max(abs(Yei' - ye))
    errh = max(abs(Yh' - ye))

    figure(i)
    
    plot(Tee,Yee,"r")
    hold on
    plot(Tei,Yei,"b")
    plot(Th,Yh,"g")

    plot(T,ye,"k")
    grid on
end
