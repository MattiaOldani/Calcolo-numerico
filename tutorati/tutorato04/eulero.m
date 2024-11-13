function [T,Y] = eulero(fun, T, y0)

u0 = y0;
h = T(2) - T(1);

Y = y0;
for n = 2:length(T)
    tn = T(n-1);
    un = u0 + h * fun(tn,u0);
    
    Y = [Y un];
    u0 = un;
end

T = T';
Y = Y';

return

end
