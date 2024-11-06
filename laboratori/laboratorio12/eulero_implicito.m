function [T,U] = eulero_implicito(f,T,y0,dfy,toll,nitmax)

u0 = y0;
h = T(2) - T(1);

U = u0;
for i = 2:length(T)
    % Newton
    err = toll + 1;
    nit = 0;
    y = U(i-1);
    un = U(i-1);
    while nit < nitmax && err > toll
        yk = y - (y - un - h*f(T(i),y))/(1 - h*dfy(T(i),y));
        err = abs(yk - y);
        y = yk;
        nit = nit + 1;
    end

    if nit == nitmax && err > toll
        disp("Il metodo di Netwon adattato non coverge")
        T = T';
        U = [];
        return
    end

    U = [U yk];
end

T = T';
U = U';
return

end
