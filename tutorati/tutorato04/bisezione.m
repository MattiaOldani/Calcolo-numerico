function [x,nit] = bisezione(f, a, b, toll)

if f(a)*f(b) > 0
    disp("Intervallo non accettabile")
    x = [];
    nit = 0;
    return
end

k = 1;
ak = a;
bk = b;
xk = (ak+bk)/2;
err = (bk-ak)/2;

while err > toll
    if f(xk) == 0
        break
    end

    if f(ak)*f(xk) < 0
        bk = xk;
    else
        ak = xk;
    end

    xk = (ak+bk)/2;
    err = err/2;
    k = k + 1;
end

x = xk;
nit = k;

return

end
