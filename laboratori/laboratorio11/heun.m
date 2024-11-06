function [T,U] = heun(f,T,y0)

h = T(2) - T(1);
u0 = y0;
U = y0;

for n = 2:length(T)
    t0 = T(n-1);
    tn = T(n);

    un = u0 + (h/2) * (f(t0,u0) + f(tn,u0 + h*f(t0,u0)));
    
    U = [U un];
    u0 = un;
end

T = T';
U = U';
return

end
