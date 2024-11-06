function [T,U] = crank_nicolson(f,T,y0,dfy,toll,nitmax)

if nargin == 4
    toll = 1e-6;
    nitmax = 20;
elseif nargin == 5
    nitmax = 20;
end

h = T(2) - T(1);
U = y0;

for n = 2:length(T)
    % Newton
    err = toll + 1;
    nit = 0;
    un = U(n-1);
    x0 = U(n-1);
    t0 = T(n-1);
    tn = T(n);

    while nit < nitmax && err > toll
        n1 = un + h/2 * f(t0,un);
        n2 = h/2 * f(tn,x0);
        num = x0 - n1 - n2;
        den = 1 - h/2 * dfy(tn,x0); 
        
        xk = x0 - num/den;

        err = abs(xk - x0);
        x0 = xk;
        nit = nit + 1;
    end

    if nit == nitmax && err > toll
        disp("Il metodo di Netwon esotico non converge.")
        T = T';
        U = [];
        return
    end

    U = [U xk];
end

T = T';
U = U';
return

end
