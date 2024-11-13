function [x,nit] = newton(f, df, x0, toll, nitmax)

k = 0;
err = toll + 1;

while k < nitmax && err > toll
    xk = x0 - (f(x0))/(df(x0));

    err = abs(xk - x0);
    k = k + 1;

    x0 = xk;
end

nit = k;
if k == nitmax && err > toll
    disp("Il metodo di Newton non converge");
    x = 0;
else
    x = xk;
end

return

end
